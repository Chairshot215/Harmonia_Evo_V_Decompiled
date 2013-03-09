.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const/16 v9, 0x80

    const/4 v1, 0x0

    array-length v4, p0

    const/4 v5, 0x0

    add-int/lit8 v2, v1, 0x1

    :try_start_0
    aget-byte v8, p0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v6, v8, 0xff

    const/16 v8, 0xd0

    if-ne v6, v8, :cond_3

    add-int/lit8 v1, v2, 0x1

    :try_start_1
    aget-byte v8, p0, v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_3

    and-int/lit16 v7, v8, 0xff

    if-ge v7, v9, :cond_0

    move v5, v7

    :goto_0
    sub-int v8, v4, v1

    if-ge v8, v5, :cond_4

    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    :cond_0
    const/16 v8, 0x81

    if-ne v7, v8, :cond_2

    add-int/lit8 v2, v1, 0x1

    :try_start_2
    aget-byte v8, p0, v1

    and-int/lit16 v7, v8, 0xff

    if-ge v7, v9, :cond_1

    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v3

    move v1, v2

    :goto_1
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    :cond_1
    move v5, v7

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_3
    :try_start_4
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v8

    and-int/lit16 v9, v6, -0x81

    if-ne v8, v9, :cond_5

    const/4 v6, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :catch_2
    move-exception v3

    move v1, v2

    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    :cond_4
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v8, v6, v0}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;)V

    return-object v8

    :catch_3
    move-exception v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method
