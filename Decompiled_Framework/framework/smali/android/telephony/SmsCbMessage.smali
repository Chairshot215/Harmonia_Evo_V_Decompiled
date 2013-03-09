.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String; = null

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SMSCB"

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private mLanguage:Ljava/lang/String;

.field private mPrimaryNotificationDigitalSignature:[B

.field private mPrimaryNotificationTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v1, v0, v5

    const-string/jumbo v1, "it"

    aput-object v1, v0, v6

    const-string v1, "fr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "he"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "is"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v3, 0x2b

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "ETWS"

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    array-length v0, p1

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/telephony/SmsCbMessage;->getTimestampMillis([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationTimestamp:J

    new-array v0, v3, [B

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationDigitalSignature:[B

    const/16 v0, 0xd

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationDigitalSignature:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/telephony/SmsCbMessage;->parseBody([B)V

    goto :goto_0
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsCbMessage;
    .locals 3

    :try_start_0
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p0}, Landroid/telephony/SmsCbMessage;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SMSCB"

    const-string v2, "Failed parsing SMS-CB pdu"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTimestampMillis([B)J
    .locals 13

    const/4 v9, 0x6

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    const/4 v9, 0x7

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    const/16 v9, 0x8

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    const/16 v9, 0x9

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    const/16 v9, 0xa

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    const/16 v9, 0xb

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    const/16 v9, 0xc

    aget-byte v7, p1, v9

    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    iput v1, v5, Landroid/text/format/Time;->hour:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v4, v5, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    :cond_0
    neg-int v6, v6

    goto :goto_0

    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method private parseBody([B)V
    .locals 11

    const/16 v10, 0x52

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    aget-byte v7, p1, v0

    array-length v0, p1

    mul-int/lit8 v1, v7, 0x53

    add-int/lit8 v1, v1, 0x7

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pdu length "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " does not match "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " pages"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v2, 0x1

    sget-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v1, v1, 0xf

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    sget-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v1, v1, 0xf

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_8
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0x4

    shr-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    mul-int/lit8 v0, v6, 0x53

    add-int/lit8 v3, v0, 0x7

    add-int/lit8 v0, v3, 0x52

    aget-byte v4, p1, v0

    if-le v4, v10, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Page length "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " exceeds maximum value "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/telephony/SmsCbMessage;->unpackBody([BIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    :goto_2
    return-void

    :cond_5
    const/4 v3, 0x6

    array-length v0, p1

    sub-int v4, v0, v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/telephony/SmsCbMessage;->unpackBody([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private unpackBody([BIIIZ)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    return-object v0

    :pswitch_1
    mul-int/lit8 v3, p4, 0x8

    div-int/lit8 v3, v3, 0x7

    invoke-static {p1, p3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-eqz p5, :cond_2

    array-length v3, p1

    add-int/lit8 v4, p3, 0x2

    if-lt v3, v4, :cond_2

    invoke-static {p1, p3, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p4, p4, -0x2

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const v3, 0xfffe

    and-int/2addr v3, p4

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, p1, p3, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public appendToBody(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-void
.end method

.method public getEtwsEmergencyUserAlert()Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    return v0
.end method

.method public getEtwsPopup()Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    return v0
.end method

.method public getEtwsSecuritySignature()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationDigitalSignature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEtwsSecurityTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationTimestamp:J

    return-wide v0
.end method

.method public getEtwsWarningType()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    return v0
.end method

.method public getGeographicalScope()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCode()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    return v0
.end method

.method public getMessageFormat()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    return v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    return v0
.end method

.method public getUpdateNumber()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
