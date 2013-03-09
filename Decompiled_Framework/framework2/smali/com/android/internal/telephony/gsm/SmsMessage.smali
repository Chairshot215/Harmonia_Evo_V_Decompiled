.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final KT_SINGLE_SMS_MAX_SEPTETS:I = 0x5a

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PROTOCOL_ID_CBS:I = 0x52

.field private static final PROTOCOL_ID_EXTRA:I = 0x53

.field private static final PROTOCOL_ID_LBS:I = 0x51

.field private static final PROTOCOL_ID_LMS:I = 0x4f

.field private static final PROTOCOL_ID_MAX_23_040:I = 0x7f

.field private static final PROTOCOL_ID_OTA_DM:I = 0x7d

.field private static final PROTOCOL_ID_PLATFORM_CALLBACK:I = 0x4d

.field private static final PROTOCOL_ID_RESERVE_SEG1_END:I = 0x2f

.field private static final PROTOCOL_ID_RESERVE_SEG1_START:I = 0x2e

.field private static final PROTOCOL_ID_RESERVE_SEG2_END:I = 0x37

.field private static final PROTOCOL_ID_RESERVE_SEG2_START:I = 0x33

.field private static final PROTOCOL_ID_RESERVE_SEG3_END:I = 0x5d

.field private static final PROTOCOL_ID_RESERVE_SEG3_START:I = 0x48

.field private static final PROTOCOL_ID_RESERVE_SEG4_END:I = 0x6b

.field private static final PROTOCOL_ID_RESERVE_SEG4_START:I = 0x60

.field private static final PROTOCOL_ID_URL_CALLBACK:I = 0x4e

.field private static final PROTOCOL_ID_VOICE_VIDEO:I = 0x48

.field public static final TP_VPF_ABSOLUTE:I = 0x18

.field public static final TP_VPF_ENHANCED:I = 0x8

.field public static final TP_VPF_MASK:I = 0x18

.field public static final TP_VPF_NOT_PRESENT:I = 0x0

.field public static final TP_VPF_RELATIVE:I = 0x10


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private mRawSmsc:[B

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private mwiCounter:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 11

    const/4 v9, 0x0

    const/16 v2, 0xa0

    const/16 v1, 0x99

    const/4 v8, 0x1

    const/4 v10, -0x1

    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    if-nez p1, :cond_1

    move v7, v8

    :goto_0
    :try_start_0
    invoke-static {p0, v7, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    if-ne p2, v10, :cond_2

    :goto_1
    const/4 v7, 0x2

    if-ne p2, v7, :cond_c

    if-ne p2, v10, :cond_b

    :goto_2
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd2

    if-ne v7, v10, :cond_14

    const/16 v2, 0x50

    const/16 v1, 0x50

    :cond_0
    :goto_3
    if-le v5, v2, :cond_16

    rem-int v7, v5, v1

    if-nez v7, :cond_15

    div-int v7, v5, v1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_4
    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :goto_5
    return-object v6

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    const/16 v2, 0x9b

    goto :goto_1

    :cond_3
    if-ne p2, v8, :cond_5

    if-ne p2, v10, :cond_4

    :goto_6
    goto :goto_1

    :cond_4
    const/16 v2, 0x9b

    goto :goto_6

    :cond_5
    const/16 v7, 0xe

    if-ne p2, v7, :cond_7

    if-ne p2, v10, :cond_6

    :cond_6
    goto :goto_1

    :cond_7
    const/4 v7, 0x3

    if-ne p2, v7, :cond_9

    if-ne p2, v10, :cond_8

    :goto_7
    goto :goto_1

    :cond_8
    const/16 v2, 0x98

    goto :goto_7

    :cond_9
    if-ne p2, v10, :cond_a

    :goto_8
    goto :goto_1

    :cond_a
    const/16 v2, 0x98

    goto :goto_8

    :cond_b
    const/16 v1, 0x95

    goto :goto_2

    :cond_c
    if-ne p2, v8, :cond_e

    if-ne p2, v10, :cond_d

    :goto_9
    goto :goto_2

    :cond_d
    const/16 v1, 0x95

    goto :goto_9

    :cond_e
    const/16 v7, 0xe

    if-ne p2, v7, :cond_10

    if-ne p2, v10, :cond_f

    :cond_f
    goto :goto_2

    :cond_10
    const/4 v7, 0x3

    if-ne p2, v7, :cond_12

    if-ne p2, v10, :cond_11

    :goto_a
    goto :goto_2

    :cond_11
    const/16 v1, 0x92

    goto :goto_a

    :cond_12
    if-ne p2, v10, :cond_13

    :goto_b
    goto :goto_2

    :cond_13
    const/16 v1, 0x92

    goto :goto_b

    :cond_14
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v7, v10, :cond_0

    const/16 v2, 0x5a

    const/16 v1, 0x5a

    goto :goto_3

    :cond_15
    div-int v7, v5, v1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    rem-int v7, v5, v1

    sub-int v7, v1, v7

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v4, v7, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd2

    if-ne v7, v10, :cond_18

    const/16 v7, 0x50

    if-le v4, v7, :cond_17

    div-int/lit8 v7, v4, 0x50

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    rem-int/lit8 v7, v4, 0x50

    rsub-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_c
    const/4 v7, 0x3

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_5

    :cond_16
    const/4 v7, 0x1

    :try_start_1
    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    sub-int v7, v2, v5

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_17
    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    rsub-int/lit8 v7, v4, 0x50

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    :cond_18
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v7, v10, :cond_1a

    const/16 v3, 0x5a

    if-le v4, v3, :cond_19

    div-int v7, v4, v3

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    rem-int v7, v4, v3

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    :cond_19
    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    sub-int v7, v3, v4

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    :cond_1a
    const/16 v7, 0x8c

    if-le v4, v7, :cond_1c

    rem-int/lit16 v7, v4, 0x86

    if-nez v7, :cond_1b

    div-int/lit16 v7, v4, 0x86

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    :cond_1b
    div-int/lit16 v7, v4, 0x86

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    rem-int/lit16 v7, v4, 0x86

    rsub-int v7, v7, 0x86

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    :cond_1c
    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    rsub-int v7, v4, 0x8c

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c
.end method

.method private checkMWIStatus(Lcom/android/internal/telephony/SmsHeader$MiscElt;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for fax, email, or other "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    new-array v2, v3, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "GSM"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "GSM"

    const-string v4, "SMS PDU parsing failed, OOM: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    if-nez p0, :cond_2

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0xb4

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v9, v8, 0x2

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xf0

    const/16 v10, 0xf0

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_2
    sub-int v8, v9, v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v0, v1, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x1

    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p2, v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_3
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    const/4 v8, 0x0

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa0

    if-le v8, v9, :cond_5

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :try_start_1
    invoke-static {p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_3

    :catch_0
    move-exception v7

    :try_start_2
    const-string v8, "GSM"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x0

    goto :goto_0

    :catch_1
    move-exception v4

    const/4 v8, 0x0

    :try_start_3
    invoke-static {p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    const/4 v3, 0x3

    goto :goto_3

    :catch_2
    move-exception v7

    const-string v8, "GSM"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object v6

    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v0, v6, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v0, v2, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8c

    if-le v8, v9, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 17

    const/4 v6, 0x1

    new-instance v10, Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-direct {v10}, Landroid/telephony/SmsMessage$DeliveryPdu;-><init>()V

    const/4 v9, -0x1

    if-eqz p5, :cond_0

    const-string v15, "NLI"

    const/16 v16, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_0
    const/4 v15, -0x1

    if-eq v9, v15, :cond_4

    const/16 v15, 0x40

    :goto_0
    or-int/lit8 v15, v15, 0x0

    int-to-byte v8, v15

    move-object/from16 v0, p0

    invoke-static {v0, v8, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPduHead(Ljava/lang/String;BLandroid/telephony/SmsMessage$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_5

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    new-instance v12, Landroid/text/format/Time;

    const-string v15, "UTC"

    invoke-direct {v12, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget v15, v12, Landroid/text/format/Time;->year:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v15, v12, Landroid/text/format/Time;->month:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v15, v12, Landroid/text/format/Time;->hour:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v15, v12, Landroid/text/format/Time;->minute:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v15, v12, Landroid/text/format/Time;->second:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_6

    const/4 v15, -0x1

    if-eq v9, v15, :cond_3

    const/4 v15, 0x1

    new-array v3, v15, [B

    const/4 v15, 0x0

    int-to-byte v0, v9

    move/from16 v16, v0

    aput-byte v16, v3, v15

    new-instance v11, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    new-instance v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    const/16 v15, 0xe

    if-eq v9, v15, :cond_1

    const/16 v15, 0x24

    iput v15, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    new-instance v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    const/16 v15, 0x25

    iput v15, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    :cond_3
    :try_start_0
    move-object/from16 v0, p3

    invoke-static {v0, v5, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_2
    const/4 v15, 0x0

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iput-object v15, v10, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    :goto_3
    return-object v10

    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    const-string v15, "SmsMessage"

    const-string v16, "Implausible EncodeException "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    :try_start_1
    const-string v15, "utf-16be"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v13

    const-string v15, "SmsMessage"

    const-string v16, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static getDeliveryPduHead(Ljava/lang/String;BLandroid/telephony/SmsMessage$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xb4

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const/4 v5, 0x0

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_3

    :goto_2
    sub-int v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWellFormedSmsAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    goto :goto_0

    :cond_1
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v5

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    goto :goto_0

    :cond_2
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

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

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput v7, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v7, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iput-object v2, p3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {p3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v5, v1

    invoke-virtual {v0, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    if-nez p5, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    :cond_2
    if-eqz p4, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    :cond_3
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    goto :goto_3

    :catch_0
    move-exception v10

    :try_start_2
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    const/16 p5, 0x3

    goto :goto_3

    :catch_2
    move-exception v10

    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15

    if-nez p1, :cond_1

    const-string v11, "GSM"

    const-string v12, "dest addr is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v3, 0x0

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    if-eqz p4, :cond_4

    const/16 v11, 0x40

    :goto_1
    or-int/lit8 v12, v11, 0x1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    const/16 v11, 0x10

    :goto_2
    or-int/2addr v11, v12

    int-to-byte v6, v11

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    if-eqz p6, :cond_9

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xa0

    if-le v11, v12, :cond_6

    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    if-nez p6, :cond_0

    :try_start_1
    const-string v11, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    if-eqz p4, :cond_14

    move-object/from16 v0, p4

    array-length v11, v0

    array-length v12, v8

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [B

    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    array-length v13, v8

    invoke-static {v8, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    array-length v11, v10

    const/16 v12, 0x8c

    if-le v11, v12, :cond_15

    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_7

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_7

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_8

    :cond_7
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_8
    const/4 v11, 0x0

    array-length v12, v10

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    if-nez p6, :cond_11

    :try_start_3
    const-string v11, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v8

    if-eqz p4, :cond_18

    move-object/from16 v0, p4

    array-length v11, v0

    array-length v12, v8

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [B

    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    array-length v13, v8

    invoke-static {v8, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    array-length v11, v10

    const/16 v12, 0x8c

    if-le v11, v12, :cond_19

    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_0
    move-exception v5

    const/16 p6, 0x0

    if-nez p6, :cond_11

    :try_start_4
    const-string v11, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v8

    if-eqz p4, :cond_12

    move-object/from16 v0, p4

    array-length v11, v0

    array-length v12, v8

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [B

    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    array-length v13, v8

    invoke-static {v8, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    array-length v11, v10

    const/16 v12, 0x8c

    if-le v11, v12, :cond_e

    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_b

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_b

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_c

    :cond_b
    const/16 v12, 0xa9

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_c
    array-length v12, v10

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v12, 0x0

    array-length v13, v10

    invoke-virtual {v4, v10, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_d
    throw v11

    :cond_e
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_f

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_f

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_10

    :cond_f
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_10
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v11, 0x0

    array-length v12, v10

    :goto_7
    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_12
    move-object v10, v8

    goto/16 :goto_6

    :catchall_0
    move-exception v11

    if-nez p6, :cond_d

    :try_start_5
    const-string v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v8

    if-eqz p4, :cond_13

    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v8

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    add-int/lit8 v13, v13, 0x1

    array-length v14, v8

    invoke-static {v8, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9
    array-length v12, v10

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_2
    move-exception v9

    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_13
    move-object v10, v8

    goto :goto_9

    :catch_3
    move-exception v9

    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_14
    move-object v10, v8

    goto/16 :goto_3

    :cond_15
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_16

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_16

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_17

    :cond_16
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_17
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v11, 0x0

    array-length v12, v10

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    :catch_4
    move-exception v9

    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :cond_18
    move-object v10, v8

    goto/16 :goto_5

    :cond_19
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1a

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1a

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_1b

    :cond_1a
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1b
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v11, 0x0

    array-length v12, v10

    goto/16 :goto_7
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-nez p0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    :goto_0
    if-eqz p3, :cond_0

    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    const-string v2, "GSM"

    const-string v5, "SMS status report requested"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v5, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v6, 0xf0

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_1
    sub-int v2, v5, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v2, v5, :cond_3

    const-string v2, "0000001005"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static intToBCDbyte(I)B
    .locals 3

    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v0, v2, 0x4

    div-int/lit8 v1, p0, 0xa

    or-int v2, v0, v1

    int-to-byte v2, v2

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2

    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2

    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method static packTimeStamp(Landroid/text/format/Time;)[B
    .locals 8

    const-wide/16 v6, 0x384

    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v1, 0x7

    new-array v0, v1, [B

    if-nez p0, :cond_0

    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v3

    :goto_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/text/format/Time;->second:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v5

    :goto_1
    return-object v0

    :cond_1
    iget v1, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    goto :goto_1
.end method

.method private parsePdu([B)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {p1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v2, p1

    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    array-length v4, v4

    invoke-static {p1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v2, v5, :cond_9

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x7f

    if-le v2, v5, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Give up the SMS, KT don\'t accept PID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x2e

    if-lt v2, v5, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x2f

    if-le v2, v5, :cond_7

    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x33

    if-lt v2, v5, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x37

    if-le v2, v5, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x48

    if-lt v2, v5, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x5d

    if-le v2, v5, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x60

    if-lt v2, v5, :cond_8

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x6b

    if-gt v2, v5, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x7d

    if-ne v2, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    const-string v2, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS SC timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_a

    move v1, v3

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void

    :cond_a
    move v1, v4

    goto :goto_2
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->dischargeTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    move v2, v0

    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    :cond_4
    return-void

    :cond_5
    move v1, v5

    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7

    const/4 v4, 0x1

    and-int/lit8 v3, p2, 0x18

    and-int/lit8 v5, p2, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_0

    move v0, v4

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/4 v2, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_1
    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->absoluteValidityPeriod:J

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xcc

    const/16 v8, 0x84

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_19

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v4, -0x1

    const/4 v3, -0x1

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsHeader;->getSsmiElement()Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->checkMWIStatus(Lcom/android/internal/telephony/SmsHeader$MiscElt;)V

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v4, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v3, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_1
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader;->mAlternateReplyAddressLength:I

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    packed-switch v7, :pswitch_data_0

    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_3
    if-nez v2, :cond_1a

    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    :goto_3
    return-void

    :cond_4
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_c

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-eq v7, v8, :cond_5

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v7, v8, :cond_7

    :cond_5
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xcc

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xc

    if-ne v7, v8, :cond_7

    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :cond_7
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_9

    const/4 v6, 0x1

    :goto_5
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_a

    const/4 v2, 0x1

    :goto_6
    if-eqz v6, :cond_b

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :pswitch_1
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :pswitch_2
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :cond_c
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_e

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_d

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :cond_e
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xc0

    if-eq v7, v8, :cond_f

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_f

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_14

    :cond_f
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_10

    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    :goto_7
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_11

    const/4 v0, 0x1

    :goto_8
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_13

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_12

    const/4 v7, 0x1

    :goto_9
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    goto :goto_9

    :cond_13
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI for fax, email, or other "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_16

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xaf

    if-eq v7, v8, :cond_15

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8f

    if-ne v7, v8, :cond_16

    :cond_15
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KT force : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :cond_16
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_18

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/16 v8, 0x84

    if-ne v7, v8, :cond_17

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    :cond_17
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_1

    :pswitch_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p1, v1, v4, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1a
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_8
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    :pswitch_9
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    :pswitch_a
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    :pswitch_b
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMwiCounter()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getRawSmsc()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

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

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

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

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

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

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

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

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kddiGetMessageId()I
    .locals 2

    const-string v0, "GSM"

    const-string v1, "GetMessageID: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
