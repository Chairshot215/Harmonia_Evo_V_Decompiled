.class Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 448
    invoke-static {p1}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;-><init>([B)V

    .line 449
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    .line 453
    iput v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 454
    iput v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 455
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 13
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    const/4 v10, 0x0

    .line 565
    iget v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 566
    .local v4, offset:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .line 567
    .local v8, userDataLength:I
    const/4 v3, 0x0

    .line 568
    .local v3, headerSeptets:I
    const/4 v7, 0x0

    .line 570
    .local v7, userDataHeaderLength:I
    if-eqz p1, :cond_6

    .line 571
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    .line 573
    new-array v6, v7, [B

    .line 574
    .local v6, udh:[B
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    invoke-static {v6}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->fromByteArray([B)Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userDataHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    .line 576
    add-int/2addr v4, v7

    .line 578
    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .line 579
    .local v2, headerBits:I
    div-int/lit8 v3, v2, 0x7

    .line 580
    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    add-int/2addr v3, v9

    .line 581
    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 585
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :goto_1
    if-eqz p2, :cond_2

    .line 591
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .line 603
    .local v0, bufferLen:I
    :cond_0
    :goto_2
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userData:[B

    .line 604
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userData:[B

    iget-object v12, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    iput v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 607
    if-eqz p2, :cond_5

    .line 609
    sub-int v1, v8, v3

    .line 611
    .local v1, count:I
    if-gez v1, :cond_4

    .line 614
    .end local v1           #count:I
    :goto_3
    return v10

    .end local v0           #bufferLen:I
    .restart local v2       #headerBits:I
    .restart local v6       #udh:[B
    :cond_1
    move v9, v10

    .line 580
    goto :goto_0

    .line 597
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v9, v7, 0x1

    :goto_4
    sub-int v0, v8, v9

    .line 598
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    goto :goto_2

    .end local v0           #bufferLen:I
    :cond_3
    move v9, v10

    .line 597
    goto :goto_4

    .restart local v0       #bufferLen:I
    .restart local v1       #count:I
    :cond_4
    move v10, v1

    .line 611
    goto :goto_3

    .line 614
    .end local v1           #count:I
    :cond_5
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userData:[B

    array-length v10, v9

    goto :goto_3

    .end local v0           #bufferLen:I
    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_6
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_1
.end method

.method getAddress()Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;
    .locals 5

    .prologue
    .line 505
    iget-object v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 506
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 508
    .local v1, lengthBytes:I
    new-instance v2, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    iget-object v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;-><init>([BII)V

    .line 510
    .local v2, ret:Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;
    iget v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 512
    return-object v2
.end method

.method getByte()I
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 468
    .local v0, len:I
    if-nez v0, :cond_0

    .line 470
    const/4 v1, 0x0

    .line 482
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 484
    return-object v1

    .line 474
    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0

    .line 476
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 477
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 13

    .prologue
    .line 522
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 523
    .local v8, year:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 524
    .local v3, month:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 525
    .local v0, day:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 526
    .local v1, hour:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 527
    .local v2, minute:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 534
    .local v4, second:I
    iget-object v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 537
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 539
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    .line 541
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 544
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x32

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 545
    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 546
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 547
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 548
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 549
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 552
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 539
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    goto :goto_0

    .line 544
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .locals 4
    .parameter "septetCount"

    .prologue
    .line 709
    iget-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    invoke-static {v1, v2, p1, v3}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 714
    return-object v0
.end method

.method getUserDataHeader()Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->userDataHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    return-object v0
.end method

.method getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 728
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    .line 735
    return-object v1

    .line 729
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 730
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 731
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
