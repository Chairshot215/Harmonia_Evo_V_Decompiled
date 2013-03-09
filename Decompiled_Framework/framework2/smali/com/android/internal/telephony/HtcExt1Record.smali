.class public Lcom/android/internal/telephony/HtcExt1Record;
.super Ljava/lang/Object;
.source "HtcExt1Record.java"


# static fields
.field private static final EXT_RECORD_FREE:I = 0x0

.field private static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field private static final EXT_RECORD_LENGTH_POSITION:I = 0x1

.field private static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final EXT_RECORD_TYPE_MASK:I = 0x3

.field private static final EXT_RECORD_TYPE_POSITION:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "HtcExt1Record"

.field private static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa


# instance fields
.field mRecId:I

.field mRecordData:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcExt1Record;-><init>()V

    array-length v1, p2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput-object p2, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcExt1Record"

    const-string v3, "Error parsing AdnRecord ext record"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static parseFromEf(I[B)Lcom/android/internal/telephony/HtcExt1Record;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/HtcExt1Record;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public buildExt1Record(Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0xd

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    array-length v3, v3

    if-ge v3, v7, :cond_1

    const-string v3, "HtcExt1Record"

    const-string v4, "Incorrect EXT1 length!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    const-string v3, "HtcExt1Record"

    const-string v4, "The ext1 additional number is too long!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "HtcExt1Record"

    const-string v4, "Error encoding EXT1 record."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "HtcExt1Record"

    const-string v4, "TON & NPI shall not be existed in EXT1!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD_withoutTOA(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v4, 0x1

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v5, 0x2

    array-length v6, v0

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    add-int/lit8 v2, v3, 0x2

    :goto_2
    if-ge v2, v7, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public clear()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcExt1Record"

    const-string v3, "Clear EXT1 record error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcExt1Record;->mRecordData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "HtcExt1Record"

    const-string v3, "Error encoding EXT1 record."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
