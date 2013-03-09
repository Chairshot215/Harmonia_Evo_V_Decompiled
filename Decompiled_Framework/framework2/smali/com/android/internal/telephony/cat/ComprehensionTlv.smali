.class Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComprehensionTlv"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const/16 v11, 0x80

    const/4 v2, 0x1

    const/4 v0, 0x0

    move v5, p1

    :try_start_0
    array-length v8, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v5, 0x1

    :try_start_1
    aget-byte v4, p0, v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v9, v4, 0xff

    sparse-switch v9, :sswitch_data_0

    move v1, v9

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_3

    :goto_0
    and-int/lit16 v1, v1, -0x81

    :goto_1
    add-int/lit8 v5, v6, 0x1

    :try_start_2
    aget-byte v0, p0, v6

    and-int/lit16 v9, v0, 0xff

    if-ge v9, v11, :cond_4

    move v3, v9

    :cond_0
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return-object v0

    :sswitch_0
    if-nez v9, :cond_1

    :try_start_3
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isZerosPadding([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v5, v6

    goto :goto_3

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v7

    move v5, v6

    :goto_4
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    :sswitch_1
    :try_start_4
    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int v1, v4, v10

    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    :goto_5
    const v0, -0x8001

    and-int/2addr v1, v0

    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_5

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x81

    if-ne v9, v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    aget-byte v0, p0, v5

    and-int/lit16 v3, v0, 0xff

    if-ge v3, v11, :cond_8

    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    const/16 v0, 0x82

    if-ne v9, v0, :cond_6

    :try_start_5
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    add-int/lit8 v5, v5, 0x2

    const/16 v0, 0x100

    if-ge v3, v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    :catch_1
    move-exception v7

    goto :goto_4

    :cond_6
    const/16 v0, 0x83

    if-ne v9, v0, :cond_7

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    add-int/lit8 v5, v5, 0x3

    const/high16 v0, 0x1

    if-ge v3, v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    move v5, v6

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f -> :sswitch_1
        0x80 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    add-int p1, v3, v4

    goto :goto_0

    :cond_0
    const-string v3, "ComprehensionTlv"

    const-string v4, "decodeMany: ctlv is null, stop decoding"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-object v2
.end method

.method private static isZerosPadding([BI)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    array-length v3, p0

    if-gt p1, v3, :cond_1

    array-length v2, p0

    move v0, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    if-eqz v3, :cond_2

    :cond_0
    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    return v0
.end method
