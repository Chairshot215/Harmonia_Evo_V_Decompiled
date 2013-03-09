.class public Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
.super Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;,
        Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->replyPathPresent:Z

    .line 94
    iput-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isStatusReportMessage:Z

    .line 439
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/4 v5, 0x1

    .line 752
    new-instance v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v3}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 754
    .local v3, ted:Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_0

    move v4, v5

    :goto_0
    :try_start_0
    invoke-static {p0, v4}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v2

    .line 755
    .local v2, septets:I
    iput v2, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 756
    const/16 v4, 0xa0

    if-le v2, v4, :cond_1

    .line 757
    div-int/lit16 v4, v2, 0x99

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 758
    rem-int/lit16 v4, v2, 0x99

    rsub-int v4, v4, 0x99

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 764
    :goto_1
    const/4 v4, 0x1

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 778
    .end local v2           #septets:I
    :goto_2
    return-object v3

    .line 754
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 761
    .restart local v2       #septets:I
    :cond_1
    const/4 v4, 0x1

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 762
    rsub-int v4, v2, 0xa0

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Lcom/futuredial/atparser/utils/PDUparser/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 765
    .end local v2           #septets:I
    :catch_0
    move-exception v0

    .line 766
    .local v0, ex:Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    .line 767
    .local v1, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 768
    const/16 v4, 0x8c

    if-le v1, v4, :cond_2

    .line 769
    div-int/lit16 v4, v1, 0x86

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 770
    rem-int/lit16 v4, v1, 0x86

    rsub-int v4, v4, 0x86

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 776
    :goto_3
    const/4 v4, 0x3

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 773
    :cond_2
    iput v5, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 774
    rsub-int v4, v1, 0x8c

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3
.end method

.method public static createFromEfRecord(I[B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 174
    :try_start_0
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    invoke-direct {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;-><init>()V

    .line 176
    .local v1, msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    iput p0, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->indexOnIcc:I

    .line 181
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 182
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 199
    .end local v1           #msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    :goto_0
    return-object v1

    .line 186
    .restart local v1       #msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->statusOnIcc:I

    .line 189
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 193
    .local v3, size:I
    new-array v2, v3, [B

    .line 194
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-direct {v1, v2}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1           #msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 199
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    invoke-direct {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;-><init>()V

    .line 105
    .local v1, msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    invoke-direct {v1, p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 343
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;-><init>()V

    .line 344
    .local v1, portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    .line 345
    iput v7, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    .line 346
    iput-boolean v7, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->areEightBits:Z

    .line 348
    new-instance v3, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    invoke-direct {v3}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;-><init>()V

    .line 349
    .local v3, smsHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    iput-object v1, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    .line 351
    invoke-static {v3}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->toByteArray(Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;)[B

    move-result-object v4

    .line 353
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 354
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v2, 0x0

    .line 382
    :goto_0
    return-object v2

    .line 359
    :cond_0
    new-instance v2, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;-><init>()V

    .line 360
    .local v2, ret:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 367
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 372
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 379
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 381
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 230
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v9

    .line 309
    :goto_0
    return-object v3

    .line 234
    :cond_1
    new-instance v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;-><init>()V

    .line 236
    .local v3, ret:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_2

    const/16 v7, 0x40

    :goto_1
    or-int/lit8 v7, v7, 0x1

    int-to-byte v2, v7

    .line 237
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, p3, v3}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 245
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p2, p4}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 247
    .local v6, userData:[B
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v10, 0xa0

    if-le v7, v10, :cond_3

    move-object v3, v9

    .line 249
    goto :goto_0

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v6           #userData:[B
    :cond_2
    move v7, v8

    .line 236
    goto :goto_1

    .line 260
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    .restart local v6       #userData:[B
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    const/4 v7, 0x0

    array-length v10, v6

    invoke-virtual {v0, v6, v7, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/futuredial/atparser/utils/PDUparser/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0

    .line 265
    .end local v6           #userData:[B
    :catch_0
    move-exception v1

    .line 271
    .local v1, ex:Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
    :try_start_1
    const-string v7, "utf-16be"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 279
    .local v4, textPart:[B
    if-eqz p4, :cond_4

    .line 281
    array-length v7, p4

    array-length v10, v4

    add-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [B

    .line 283
    .restart local v6       #userData:[B
    array-length v7, p4

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 284
    const/4 v7, 0x1

    array-length v10, p4

    invoke-static {p4, v8, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    array-length v7, p4

    add-int/lit8 v7, v7, 0x1

    array-length v10, v4

    invoke-static {v4, v8, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    :goto_3
    array-length v7, v6

    const/16 v10, 0x8c

    if-le v7, v10, :cond_5

    move-object v3, v9

    .line 293
    goto :goto_0

    .line 272
    .end local v4           #textPart:[B
    .end local v6           #userData:[B
    :catch_1
    move-exception v5

    .line 273
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v9

    .line 276
    goto :goto_0

    .line 288
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #textPart:[B
    :cond_4
    move-object v6, v4

    .restart local v6       #userData:[B
    goto :goto_3

    .line 298
    :cond_5
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 303
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    array-length v7, v6

    invoke-virtual {v0, v6, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 400
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 404
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 405
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 412
    :goto_0
    if-eqz p3, :cond_0

    .line 414
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 415
    const-string v2, "GSM"

    const-string v4, "SMS status report requested"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 428
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 432
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 435
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    return-object v0

    .line 407
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v3

    .line 428
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 209
    .local v0, len:I
    const/4 v1, 0x0

    .line 211
    .local v1, smscLen:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 213
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 144
    :try_start_0
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    invoke-direct {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;-><init>()V

    .line 145
    .local v1, msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    invoke-static {p0}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    invoke-direct {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;-><init>()V

    .line 125
    .local v1, msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/futuredial/atparser/utils/PDUparser/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #msg:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 137
    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    .line 158
    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mPdu:[B

    .line 866
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;-><init>([B)V

    .line 868
    .local v1, p:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->scAddress:Ljava/lang/String;

    .line 870
    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 871
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    invoke-virtual {v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 880
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mti:I

    .line 881
    iget v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 895
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseSmsDeliver(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;I)V

    .line 897
    :goto_0
    return-void

    .line 888
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseSmsSubmit(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 891
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseSmsStatusReport(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 977
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->replyPathPresent:Z

    .line 979
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getAddress()Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    .line 981
    iget-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    if-eqz v1, :cond_0

    .line 988
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    .line 992
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    .line 995
    const-string v1, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS TP-PID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data coding scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->scTimeMillis:J

    .line 1001
    const-string v1, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS SC timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->scTimeMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1005
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseUserData(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;Z)V

    .line 1006
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 977
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1003
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 906
    iput-boolean v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isStatusReportMessage:Z

    .line 909
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->forSubmit:Z

    .line 911
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageRef:I

    .line 913
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getAddress()Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->recipientAddress:Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    .line 915
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->scTimeMillis:J

    .line 917
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dischargeTimeMillis:J

    .line 919
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->status:I

    .line 922
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 924
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 925
    .local v0, extraParams:I
    move v2, v0

    .line 926
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 930
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 909
    goto :goto_0

    .line 933
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 934
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    .line 937
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 938
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    .line 941
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 942
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 943
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseUserData(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;Z)V

    .line 946
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 942
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 952
    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->replyPathPresent:Z

    .line 953
    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_2

    move v0, v3

    .line 954
    .local v0, hasUserDataHeader:Z
    :goto_1
    and-int/lit8 v1, p2, 0x18

    .line 957
    .local v1, tp_vpFormat:I
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    .line 960
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getAddress()Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    .line 963
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    .line 966
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    .line 969
    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getByte()I

    .line 973
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseUserData(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;Z)V

    .line 974
    return-void

    .end local v0           #hasUserDataHeader:Z
    .end local v1           #tp_vpFormat:I
    :cond_1
    move v2, v4

    .line 952
    goto :goto_0

    :cond_2
    move v0, v4

    .line 953
    goto :goto_1
.end method

.method private parseUserData(Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;Z)V
    .locals 11
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v10, 0xe0

    const/16 v9, 0xc0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1016
    const/4 v3, 0x0

    .line 1017
    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .line 1019
    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1022
    .local v2, encodingType:I
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_5

    .line 1024
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->automaticDeletion:Z

    .line 1025
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_2

    move v4, v6

    .line 1026
    :goto_1
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    move v3, v6

    .line 1028
    :goto_2
    if-eqz v4, :cond_4

    .line 1029
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :goto_3
    if-ne v2, v6, :cond_e

    :goto_4
    invoke-virtual {p1, p2, v6}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1099
    .local v1, count:I
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->userData:[B

    .line 1100
    invoke-virtual {p1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getUserDataHeader()Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->userDataHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    .line 1102
    packed-switch v2, :pswitch_data_0

    .line 1117
    :goto_5
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS message body (raw): \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->parseMessageBody()V

    .line 1123
    :cond_0
    if-nez v3, :cond_f

    .line 1124
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 1141
    :goto_6
    return-void

    .end local v1           #count:I
    :cond_1
    move v5, v7

    .line 1024
    goto :goto_0

    :cond_2
    move v4, v7

    .line 1025
    goto :goto_1

    :cond_3
    move v3, v7

    .line 1026
    goto :goto_2

    .line 1032
    :cond_4
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    .line 1034
    :pswitch_0
    const/4 v2, 0x1

    .line 1035
    goto :goto_3

    .line 1038
    :pswitch_1
    const/4 v2, 0x3

    .line 1039
    goto :goto_3

    .line 1043
    :pswitch_2
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v2, 0x2

    goto :goto_3

    .line 1049
    :cond_5
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v8, 0xf0

    if-ne v5, v8, :cond_7

    .line 1050
    iput-boolean v7, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->automaticDeletion:Z

    .line 1051
    const/4 v3, 0x1

    .line 1052
    const/4 v4, 0x0

    .line 1054
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_6

    .line 1056
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1059
    :cond_6
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1061
    :cond_7
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-eq v5, v9, :cond_8

    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v8, 0xd0

    if-eq v5, v8, :cond_8

    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_d

    .line 1070
    :cond_8
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_9

    .line 1071
    const/4 v2, 0x3

    .line 1076
    :goto_7
    const/4 v4, 0x0

    .line 1077
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_a

    move v0, v6

    .line 1081
    .local v0, active:Z
    :goto_8
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_c

    .line 1082
    iput-boolean v6, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isMwi:Z

    .line 1083
    iput-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mwiSense:Z

    .line 1084
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v9, :cond_b

    move v5, v6

    :goto_9
    iput-boolean v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mwiDontStore:Z

    goto/16 :goto_3

    .line 1073
    .end local v0           #active:Z
    :cond_9
    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    move v0, v7

    .line 1077
    goto :goto_8

    .restart local v0       #active:Z
    :cond_b
    move v5, v7

    .line 1084
    goto :goto_9

    .line 1086
    :cond_c
    iput-boolean v7, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isMwi:Z

    .line 1088
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI for fax, email, or other "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1092
    .end local v0           #active:Z
    :cond_d
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    move v6, v7

    .line 1097
    goto/16 :goto_4

    .line 1105
    .restart local v1       #count:I
    :pswitch_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1109
    :pswitch_4
    invoke-virtual {p1, v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1113
    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1126
    :cond_f
    iget v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_6

    .line 1128
    :pswitch_6
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1131
    :pswitch_7
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1134
    :pswitch_8
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1137
    :pswitch_9
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1032
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1126
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    check-cast v0, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    check-cast v0, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 801
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mwiSense:Z

    if-nez v0, :cond_0

    .line 805
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    check-cast v0, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 811
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mwiSense:Z

    if-ne v0, v1, :cond_0

    .line 815
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    check-cast v0, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 821
    iget-boolean v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 829
    const-string v1, " "

    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 835
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 788
    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method
