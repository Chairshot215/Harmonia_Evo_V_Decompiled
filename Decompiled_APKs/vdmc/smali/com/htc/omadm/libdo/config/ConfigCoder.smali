.class public final Lcom/htc/omadm/libdo/config/ConfigCoder;
.super Ljava/lang/Object;
.source "ConfigCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToBigHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 361
    invoke-static {p0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, tmp:Ljava/lang/String;
    const-string v1, ""

    .line 363
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    .line 365
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

    .line 363
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
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

    .line 369
    :cond_1
    return-object v1
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 348
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 351
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 357
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

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, s:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 245
    aget-byte v2, p0, v0

    if-ltz v2, :cond_0

    .line 246
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 249
    :goto_1
    mul-int/lit16 v1, v1, 0x100

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    goto :goto_1

    .line 251
    :cond_1
    aget-byte v2, p0, v4

    if-ltz v2, :cond_2

    .line 252
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 255
    :goto_2
    return v1

    .line 254
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
    .line 217
    move-wide v2, p0

    .line 218
    .local v2, val:J
    const/4 v0, 0x1

    .line 220
    .local v0, digits:I
    :goto_0
    const-wide/16 v4, 0xa

    :try_start_0
    rem-long v4, v2, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 221
    const-wide/16 v4, 0xa

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return v0
.end method

.method public static decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 113
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

    .line 114
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 116
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

    .line 117
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 118
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

    .line 120
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

    .line 125
    return-object v2

    .line 122
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 123
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

    .line 129
    const/16 v4, 0x8

    new-array v0, v4, [C

    .line 131
    .local v0, bsMin1:[C
    move-object v2, p0

    .line 132
    .local v2, dwVal:Ljava/lang/Long;
    new-array v1, v11, [J

    .line 133
    .local v1, dwMin1:[J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/libdo/config/ConfigCoder;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 135
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    aput-wide v4, v1, v8

    .line 137
    aget-wide v4, v1, v8

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 138
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 140
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/libdo/config/ConfigCoder;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v10

    .line 143
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

    .line 144
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 145
    aget-char v4, v0, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 146
    const/16 v4, 0x30

    aput-char v4, v0, v3

    .line 144
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static decodeDMString([B)[Ljava/lang/String;
    .locals 37
    .parameter "bytes"

    .prologue
    .line 612
    const/16 v32, 0x11

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 614
    .local v28, rslt:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-byte v32, p0, v32

    if-ltz v32, :cond_1

    const/16 v32, 0x0

    aget-byte v30, p0, v32

    .line 615
    .local v30, tempDigit:I
    :goto_0
    and-int/lit8 v3, v30, 0xf

    .line 616
    .local v3, IMSI_M_CLASS_1bit:I
    and-int/lit8 v3, v3, 0x1

    .line 619
    and-int/lit8 v4, v30, 0xf

    .line 620
    .local v4, IMSI_M_CLASS_3bit:I
    shr-int/lit8 v4, v4, 0x3

    .line 623
    and-int/lit8 v27, v30, 0xf

    .line 624
    .local v27, resetBit:I
    shr-int/lit8 v27, v30, 0x4

    .line 625
    const/16 v32, 0x1

    aget-byte v32, p0, v32

    if-ltz v32, :cond_2

    const/16 v32, 0x1

    aget-byte v30, p0, v32

    .line 626
    :goto_1
    move/from16 v9, v30

    .line 627
    .local v9, MCC_M_10bit:I
    and-int/lit8 v9, v9, 0x3f

    .line 628
    shl-int/lit8 v9, v9, 0x4

    .line 629
    or-int v9, v9, v27

    .line 630
    add-int/lit8 v9, v9, 0x6f

    .line 633
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v9, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->doBCDDigit(II)I

    move-result v23

    .line 635
    .local v23, decMCC_M_10bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xc0

    move/from16 v27, v0

    .line 636
    shr-int/lit8 v27, v27, 0x6

    .line 637
    const/16 v32, 0x2

    aget-byte v32, p0, v32

    if-ltz v32, :cond_3

    const/16 v32, 0x2

    aget-byte v30, p0, v32

    .line 638
    :goto_2
    and-int/lit8 v2, v30, 0x1f

    .line 639
    .local v2, IMSI_M_11_12_7bit:I
    shl-int/lit8 v2, v2, 0x2

    .line 640
    or-int v2, v2, v27

    .line 641
    add-int/lit8 v2, v2, 0xb

    .line 642
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-static {v2, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->doBCDDigit(II)I

    move-result v21

    .line 645
    .local v21, decIMSI_M_11_12_7bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    .line 646
    shr-int/lit8 v27, v27, 0x5

    .line 647
    const/16 v32, 0x3

    aget-byte v32, p0, v32

    if-ltz v32, :cond_4

    const/16 v32, 0x3

    aget-byte v30, p0, v32

    .line 648
    :goto_3
    and-int/lit8 v8, v30, 0x7f

    .line 649
    .local v8, IMSI_M_S2_10bit:I
    shl-int/lit8 v8, v8, 0x3

    .line 650
    or-int v8, v8, v27

    .line 651
    add-int/lit8 v8, v8, 0x6f

    .line 652
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v8, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->doBCDDigit(II)I

    move-result v22

    .line 656
    .local v22, decIMSI_M_S2_10bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    .line 657
    shr-int/lit8 v27, v27, 0x7

    .line 658
    const/16 v32, 0x4

    aget-byte v32, p0, v32

    if-ltz v32, :cond_5

    const/16 v32, 0x4

    aget-byte v30, p0, v32

    .line 659
    :goto_4
    move/from16 v5, v30

    .line 660
    .local v5, IMSI_M_S1_0_10bit:I
    shl-int/lit8 v5, v5, 0x1

    .line 661
    or-int v5, v5, v27

    .line 662
    const/16 v32, 0x5

    aget-byte v32, p0, v32

    if-ltz v32, :cond_6

    const/16 v32, 0x5

    aget-byte v30, p0, v32

    .line 663
    :goto_5
    and-int/lit8 v31, v30, 0x1

    .line 664
    .local v31, tempNextDigit:I
    shl-int/lit8 v31, v31, 0x9

    .line 665
    or-int v5, v5, v31

    .line 666
    add-int/lit8 v5, v5, 0x6f

    .line 667
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->doBCDDigit(II)I

    move-result v18

    .line 671
    .local v18, deIMSI_M_S1_0_10bit:I
    shr-int/lit8 v6, v30, 0x1

    .line 672
    .local v6, IMSI_M_S1_1_4bit:I
    and-int/lit8 v6, v6, 0xf

    .line 673
    const/16 v32, 0xa

    move/from16 v0, v32

    if-lt v6, v0, :cond_0

    .line 674
    const/4 v6, 0x0

    .line 675
    :cond_0
    and-int/lit8 v19, v6, 0xf

    .line 678
    .local v19, deIMSI_M_S1_1_4bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    .line 679
    shr-int/lit8 v27, v27, 0x5

    .line 680
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    if-ltz v32, :cond_7

    const/16 v32, 0x6

    aget-byte v30, p0, v32

    .line 681
    :goto_6
    and-int/lit8 v7, v30, 0x7f

    .line 682
    .local v7, IMSI_M_S1_2_10bit:I
    shl-int/lit8 v7, v7, 0x3

    .line 683
    or-int v7, v7, v27

    .line 684
    add-int/lit8 v7, v7, 0x6f

    .line 685
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v7, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->doBCDDigit(II)I

    move-result v20

    .line 689
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

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 690
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

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 691
    .local v15, binary7byte:Ljava/lang/String;
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v10, v0, [C

    .line 692
    .local v10, acclocChar:[C
    const/16 v32, 0x3

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 693
    const/16 v32, 0x0

    const/16 v33, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 694
    const/16 v32, 0x1

    const/16 v33, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 695
    const/16 v32, 0x2

    const/16 v33, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 696
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

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 698
    const/16 v32, 0x9

    const/16 v33, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 699
    const/16 v32, 0xa

    const/16 v33, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 700
    const/16 v32, 0xb

    const/16 v33, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 701
    const/16 v32, 0xc

    const/16 v33, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 703
    const/16 v32, 0x8

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v25, v0

    .line 704
    .local v25, n_sid_nidChar:[C
    const/16 v32, 0x7

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v25, v32

    .line 706
    const/16 v32, 0x8

    aget-byte v32, p0, v32

    if-ltz v32, :cond_a

    const/16 v32, 0x8

    aget-byte v32, p0, v32

    :goto_9
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 707
    .local v17, binary9byte:Ljava/lang/String;
    const/16 v24, 0x1

    .local v24, i:I
    :goto_a
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_b

    .line 708
    add-int/lit8 v32, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v25, v32

    .line 707
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 614
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

    .line 625
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

    .line 637
    .restart local v9       #MCC_M_10bit:I
    .restart local v23       #decMCC_M_10bit:I
    :cond_3
    const/16 v32, 0x2

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_2

    .line 647
    .restart local v2       #IMSI_M_11_12_7bit:I
    .restart local v21       #decIMSI_M_11_12_7bit:I
    :cond_4
    const/16 v32, 0x3

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_3

    .line 658
    .restart local v8       #IMSI_M_S2_10bit:I
    .restart local v22       #decIMSI_M_S2_10bit:I
    :cond_5
    const/16 v32, 0x4

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_4

    .line 662
    .restart local v5       #IMSI_M_S1_0_10bit:I
    :cond_6
    const/16 v32, 0x5

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_5

    .line 680
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

    .line 689
    .restart local v7       #IMSI_M_S1_2_10bit:I
    .restart local v20       #deIMSI_M_S1_2_10bit:I
    :cond_8
    const/16 v32, 0x7

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_7

    .line 690
    .restart local v16       #binary8byte:Ljava/lang/String;
    :cond_9
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_8

    .line 706
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

    .line 709
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

    .line 711
    const/16 v32, 0xf

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v29, v0

    .line 712
    .local v29, sidChar:[C
    const/16 v32, 0xe

    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 714
    const/16 v32, 0x9

    aget-byte v32, p0, v32

    if-ltz v32, :cond_c

    const/16 v32, 0x9

    aget-byte v32, p0, v32

    :goto_b
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 715
    .local v11, binary10byte:Ljava/lang/String;
    const/16 v24, 0x0

    :goto_c
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_d

    .line 716
    add-int/lit8 v32, v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 715
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 714
    .end local v11           #binary10byte:Ljava/lang/String;
    :cond_c
    const/16 v32, 0x9

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_b

    .line 718
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

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 719
    .local v12, binary11byte:Ljava/lang/String;
    const/16 v24, 0x2

    :goto_e
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_f

    .line 720
    add-int/lit8 v32, v24, -0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 719
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 718
    .end local v12           #binary11byte:Ljava/lang/String;
    :cond_e
    const/16 v32, 0xa

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_d

    .line 722
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

    .line 724
    const/16 v32, 0x10

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v26, v0

    .line 725
    .local v26, nidChar:[C
    const/16 v32, 0xe

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 726
    const/16 v32, 0xf

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 728
    const/16 v32, 0xb

    aget-byte v32, p0, v32

    if-ltz v32, :cond_10

    const/16 v32, 0xb

    aget-byte v32, p0, v32

    :goto_f
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 729
    .local v13, binary12byte:Ljava/lang/String;
    const/16 v24, 0x0

    :goto_10
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_11

    .line 730
    add-int/lit8 v32, v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 729
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 728
    .end local v13           #binary12byte:Ljava/lang/String;
    :cond_10
    const/16 v32, 0xb

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_f

    .line 732
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

    invoke-static/range {v32 .. v33}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 733
    .local v14, binary13byte:Ljava/lang/String;
    const/16 v24, 0x2

    :goto_12
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_13

    .line 734
    add-int/lit8 v32, v24, -0x2

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 733
    add-int/lit8 v24, v24, 0x1

    goto :goto_12

    .line 732
    .end local v14           #binary13byte:Ljava/lang/String;
    :cond_12
    const/16 v32, 0xc

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_11

    .line 735
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

    .line 737
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

    .line 740
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

    .line 741
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

    .line 742
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

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 743
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

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 744
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

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 745
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

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 746
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

    .line 747
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

    invoke-static/range {v33 .. v34}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 749
    return-object v28
.end method

.method public static decrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "hex"

    .prologue
    .line 781
    const/4 v1, 0x0

    .line 783
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 784
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 785
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 786
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/omadm/libdo/config/ConfigCoder;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 795
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 790
    :catch_0
    move-exception v2

    .line 791
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    .local v2, len:I
    const-string v3, ""

    .line 80
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 84
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

    .line 86
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
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

    .line 425
    const/4 v3, 0x0

    .line 426
    .local v3, module:I
    const/4 v0, 0x0

    .line 427
    .local v0, digit:I
    const/4 v5, 0x0

    .line 428
    .local v5, totalRet:I
    const/4 v4, 0x0

    .line 429
    .local v4, multiply:I
    move v2, p0

    .line 430
    .local v2, input:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 431
    int-to-double v6, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 432
    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v4, v6

    .line 433
    rem-int v0, v2, v3

    .line 434
    if-nez v0, :cond_0

    .line 435
    sub-int/2addr v2, v3

    .line 443
    :goto_1
    mul-int v6, v0, v4

    add-int/2addr v5, v6

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    div-int/2addr v0, v4

    .line 439
    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 440
    const/4 v0, 0x0

    .line 441
    :cond_1
    sub-int/2addr v2, v0

    goto :goto_1

    .line 446
    :cond_2
    return v5
.end method

.method public static doDecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 409
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

    .line 410
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 412
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

    .line 413
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 414
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

    .line 416
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

    .line 421
    return-object v2

    .line 418
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 419
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
    .line 393
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

    .line 394
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 396
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

    .line 397
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const-wide/16 v5, 0x9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 398
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 399
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

    .line 401
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

    .line 406
    return-object v2

    .line 403
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 404
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
    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 390
    .end local p0
    :goto_0
    return-object p0

    .line 382
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 383
    .local v2, length:I
    const-string v3, ""

    .line 384
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 385
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 386
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 387
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

    .line 388
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    .line 390
    goto :goto_0
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 31
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 32
    .local v2, j:I
    const-string v4, ""

    .line 34
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 36
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

    .line 37
    move v1, v2

    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    goto :goto_0

    .line 40
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 41
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static doStringToASCII(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "str"
    .parameter "isNullTerminate"

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 53
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x2

    .line 54
    .local v3, j:I
    const-string v5, ""

    .line 56
    .local v5, result:Ljava/lang/String;
    :goto_0
    if-gt v3, v4, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, tmp:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, hex:I
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    if-nez v1, :cond_1

    .line 69
    .end local v1           #hex:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 62
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

    .line 63
    move v2, v3

    .line 64
    add-int/lit8 v3, v3, 0x2

    .line 65
    goto :goto_0

    .line 66
    .end local v1           #hex:I
    .end local v6           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 12
    .parameter "parDwVal"
    .parameter "parDwDigits"

    .prologue
    .line 151
    move-object v4, p0

    .line 152
    .local v4, dwVal:Ljava/lang/Long;
    move-object v2, p1

    .line 153
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

    .line 155
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

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 158
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

    .line 160
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

    .line 165
    return-object v3

    .line 162
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 163
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

    .line 168
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwVal:Ljava/lang/Long;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 169
    .local v3, dwVal1:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 170
    .local v1, bsMin1:[C
    new-array v0, v7, [C

    .line 171
    .local v0, bsDat:[C
    if-eqz p0, :cond_0

    .line 172
    move-object v1, p0

    .line 173
    :cond_0
    array-length v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 174
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

    .line 176
    :cond_1
    invoke-static {v1, v8, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 179
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/libdo/config/ConfigCoder;->encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 182
    const/16 v4, 0x30

    aput-char v4, v0, v11

    aput-char v4, v0, v8

    .line 183
    aget-char v4, v1, v7

    aput-char v4, v0, v12

    .line 185
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_2

    .line 187
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 188
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 191
    const/4 v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v8

    .line 192
    const/4 v4, 0x5

    aget-char v4, v1, v4

    aput-char v4, v0, v11

    .line 193
    const/4 v4, 0x6

    aget-char v4, v1, v4

    aput-char v4, v0, v12

    .line 195
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 196
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/omadm/libdo/config/ConfigCoder;->encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 198
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
    .line 454
    const/16 v27, 0x68

    move/from16 v0, v27

    new-array v3, v0, [C

    .line 456
    .local v3, binaryChar:[C
    const/16 v27, 0x7

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 459
    new-instance v27, Ljava/math/BigInteger;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 460
    .local v15, imsi_addr_num:Ljava/lang/String;
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-static {v15, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 461
    const/16 v27, 0x6

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 462
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 463
    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 466
    const/16 v27, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v11

    .line 467
    .local v11, i_mcc_m:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 468
    .local v17, mcc_m:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 469
    const/16 v27, 0x0

    const/16 v28, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 470
    const/16 v27, 0x1

    const/16 v28, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 471
    const/16 v27, 0x2

    const/16 v28, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 472
    const/16 v27, 0x3

    const/16 v28, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 473
    const/16 v27, 0xa

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 474
    const/16 v27, 0xb

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 475
    const/16 v27, 0xc

    const/16 v28, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 476
    const/16 v27, 0xd

    const/16 v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 477
    const/16 v27, 0xe

    const/16 v28, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 478
    const/16 v27, 0xf

    const/16 v28, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 481
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v6

    .line 482
    .local v6, i_imsi_m_11_12:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 483
    .local v16, imsi_m_11_12:Ljava/lang/String;
    const/16 v27, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 484
    const/16 v27, 0x8

    const/16 v28, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 485
    const/16 v27, 0x9

    const/16 v28, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 486
    const/16 v27, 0x13

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 487
    const/16 v27, 0x14

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 488
    const/16 v27, 0x15

    const/16 v28, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 489
    const/16 v27, 0x16

    const/16 v28, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 490
    const/16 v27, 0x17

    const/16 v28, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 493
    const/16 v27, 0x3

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v10

    .line 494
    .local v10, i_imsi_m_s2:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 495
    .local v21, msi_m_s2:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 496
    const/16 v27, 0x10

    const/16 v28, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 497
    const/16 v27, 0x11

    const/16 v28, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 498
    const/16 v27, 0x12

    const/16 v28, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 499
    const/16 v27, 0x19

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 500
    const/16 v27, 0x1a

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 501
    const/16 v27, 0x1b

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 502
    const/16 v27, 0x1c

    const/16 v28, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 503
    const/16 v27, 0x1d

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 504
    const/16 v27, 0x1e

    const/16 v28, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 505
    const/16 v27, 0x1f

    const/16 v28, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 508
    const/16 v27, 0x3

    move-object/from16 v0, p5

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v7

    .line 509
    .local v7, i_imsi_m_s1_0:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 510
    .local v18, msi_m_s1_0:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 511
    const/16 v27, 0x18

    const/16 v28, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 512
    const/16 v27, 0x20

    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 513
    const/16 v27, 0x21

    const/16 v28, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 514
    const/16 v27, 0x22

    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 515
    const/16 v27, 0x23

    const/16 v28, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 516
    const/16 v27, 0x24

    const/16 v28, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 517
    const/16 v27, 0x25

    const/16 v28, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 518
    const/16 v27, 0x26

    const/16 v28, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 519
    const/16 v27, 0x27

    const/16 v28, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 520
    const/16 v27, 0x2f

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 523
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 524
    .local v8, i_imsi_m_s1_1:I
    if-nez v8, :cond_0

    .line 525
    const/16 v8, 0xa

    .line 526
    :cond_0
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 527
    .local v19, msi_m_s1_1:Ljava/lang/String;
    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 528
    const/16 v27, 0x2b

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 529
    const/16 v27, 0x2c

    const/16 v28, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 530
    const/16 v27, 0x2d

    const/16 v28, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 531
    const/16 v27, 0x2e

    const/16 v28, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 534
    const/16 v27, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v9

    .line 535
    .local v9, i_imsi_m_s1_2:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 536
    .local v20, msi_m_s1_2:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 537
    const/16 v27, 0x28

    const/16 v28, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 538
    const/16 v27, 0x29

    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 539
    const/16 v27, 0x2a

    const/16 v28, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 540
    const/16 v27, 0x31

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 541
    const/16 v27, 0x32

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 542
    const/16 v27, 0x33

    const/16 v28, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 543
    const/16 v27, 0x34

    const/16 v28, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 544
    const/16 v27, 0x35

    const/16 v28, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 545
    const/16 v27, 0x36

    const/16 v28, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 546
    const/16 v27, 0x37

    const/16 v28, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 548
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 549
    .local v5, i_accloc:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, accloc:Ljava/lang/String;
    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-static {v2, v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 551
    const/16 v27, 0x30

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 552
    const/16 v27, 0x3d

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 553
    const/16 v27, 0x3e

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 554
    const/16 v27, 0x3f

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 557
    const/16 v27, 0x3c

    const/16 v28, 0x0

    move-object/from16 v0, p9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 559
    const/16 v27, 0x3b

    const/16 v28, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 561
    const/16 v27, 0x3a

    const/16 v28, 0x0

    move-object/from16 v0, p11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 563
    const/16 v27, 0x39

    const/16 v28, 0x0

    move-object/from16 v0, p12

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 566
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 567
    .local v12, i_n_sid_nid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 568
    .local v22, n_sid_nid:Ljava/lang/String;
    const/16 v27, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 569
    const/16 v27, 0x38

    const/16 v28, 0x7

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 570
    const/16 v4, 0x41

    .local v4, i:I
    :goto_0
    const/16 v27, 0x47

    move/from16 v0, v27

    if-gt v4, v0, :cond_1

    .line 571
    add-int/lit8 v27, v4, -0x41

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 570
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 574
    :cond_1
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 575
    .local v14, i_sid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 576
    .local v25, sid:Ljava/lang/String;
    const/16 v27, 0xf

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 577
    const/16 v4, 0x48

    :goto_1
    const/16 v27, 0x4f

    move/from16 v0, v27

    if-gt v4, v0, :cond_2

    .line 578
    add-int/lit8 v27, v4, -0x42

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 577
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 579
    :cond_2
    const/16 v4, 0x52

    :goto_2
    const/16 v27, 0x57

    move/from16 v0, v27

    if-gt v4, v0, :cond_3

    .line 580
    add-int/lit8 v27, v4, -0x52

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 579
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 581
    :cond_3
    const/16 v27, 0x40

    const/16 v28, 0xe

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 584
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 585
    .local v13, i_nid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 586
    .local v23, nid:Ljava/lang/String;
    const/16 v27, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 587
    const/16 v27, 0x50

    const/16 v28, 0xe

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 588
    const/16 v27, 0x51

    const/16 v28, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 589
    const/16 v4, 0x58

    :goto_3
    const/16 v27, 0x5f

    move/from16 v0, v27

    if-gt v4, v0, :cond_4

    .line 590
    add-int/lit8 v27, v4, -0x52

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 589
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 591
    :cond_4
    const/16 v4, 0x62

    :goto_4
    const/16 v27, 0x67

    move/from16 v0, v27

    if-gt v4, v0, :cond_5

    .line 592
    add-int/lit8 v27, v4, -0x62

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 591
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 595
    :cond_5
    const/16 v27, 0x60

    const/16 v28, 0x0

    move-object/from16 v0, p16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 596
    const/16 v27, 0x61

    const/16 v28, 0x1

    move-object/from16 v0, p16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 598
    const-string v26, ""

    .line 599
    .local v26, str:Ljava/lang/String;
    const-string v24, ""

    .line 600
    .local v24, rslt:Ljava/lang/String;
    const/4 v4, 0x1

    :goto_5
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    if-ge v4, v0, :cond_7

    .line 601
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

    .line 602
    rem-int/lit8 v27, v4, 0x4

    if-nez v27, :cond_6

    .line 603
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

    .line 604
    const-string v26, ""

    .line 600
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 607
    :cond_7
    return-object v24
.end method

.method public static encrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 766
    const/4 v2, 0x0

    .line 768
    .local v2, encrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 769
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 770
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 772
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/omadm/libdo/config/ConfigCoder;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 777
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v2}, Lcom/htc/omadm/libdo/config/ConfigCoder;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 773
    :catch_0
    move-exception v1

    .line 774
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 335
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

    .line 337
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 338
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 340
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 341
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 342
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 343
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 345
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
    .line 233
    move v2, p0

    .line 234
    .local v2, temp:I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 235
    .local v0, b:[B
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 236
    and-int/lit16 v3, v2, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 237
    shr-int/lit8 v2, v2, 0x8

    .line 235
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 239
    :cond_0
    return-object v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 7
    .parameter "parStr"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, begin:I
    move-object v2, p0

    .line 261
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 272
    :cond_3
    move v1, v0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 273
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 277
    goto :goto_0
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 202
    move-object v0, p0

    .line 203
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 204
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

    .line 206
    :cond_0
    return-object v0
.end method

.method public static pendZeroInRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 209
    move-object v0, p0

    .line 210
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 211
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

    .line 213
    :cond_0
    return-object v0
.end method

.method public static reverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 109
    .end local p0
    :goto_0
    return-object p0

    .line 101
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 102
    .local v2, length:I
    const-string v3, ""

    .line 103
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 104
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 106
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

    .line 107
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    .line 109
    goto :goto_0
.end method

.method public static reverseByteForGetMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 317
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v2, rslt:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 319
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 318
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/omadm/libdo/config/ConfigCoder;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 325
    .local v0, bytes:[B
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/omadm/libdo/config/Base64Coder;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static reverseByteForSetMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 294
    move-object v0, p0

    .line 297
    .local v0, hexStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .local v2, rslt:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 299
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static revertBCDDigit(Ljava/lang/String;I)I
    .locals 5
    .parameter "inputStr"
    .parameter "len"

    .prologue
    .line 752
    const-string v2, ""

    .line 753
    .local v2, rsltStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 754
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 755
    .local v0, digit:I
    add-int/lit8 v3, v0, -0x1

    .line 756
    .local v3, tmp:I
    if-gez v3, :cond_0

    .line 757
    add-int/lit8 v3, v3, 0xa

    .line 758
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    .end local v0           #digit:I
    .end local v3           #tmp:I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method
