.class public Lcom/android/mms/transaction/CDMATransportError;
.super Ljava/lang/Object;
.source "CDMATransportError.java"


# static fields
.field private static final CDMA_1XEVDO_FAILURE_TYPE:I = 0x1

.field private static final CDMA_1XRTT_FAILURE_TYPE:I = 0x0

.field public static final CDMA_1X_DNS_NOT_RESPONDING:I = 0x1100b

.field public static final CDMA_1X_DROP_CALL:I = 0x11007

.field public static final CDMA_1X_NOT_AVAILABLE:I = 0x10011001

.field public static final CDMA_1X_PDSN_AUTHENTICATION_FAILED:I = 0x10011009

.field private static final CDMA_ERROR_EXPIRY_TIME:J = 0x1388L

.field public static final CDMA_EVDO_DNS_NOT_RESPONDING:I = 0x1100e

.field public static final CDMA_EVDO_DROP_CALL:I = 0x1100c

.field public static final CDMA_EVDO_PDSN_AUTHENTICATION_FAILED:I = 0x1001100d

.field public static final CDMA_FAILURE_BEGIN:I = 0x11000

.field public static final CDMA_MMSC_NOT_RESPONDING:I = 0x1100a

.field public static final CDMA_SERVICE_OPTION_REJECTED:I = 0x10011008

.field public static final CDMA_SERVICE_OPTION_RELEASE_NO_REASON:I = 0x11006

.field public static final CDMA_SERVICE_OPTION_REQUEST_INTERCEPT:I = 0x10011005

.field public static final CDMA_SERVICE_OPTION_REQUEST_REORDER:I = 0x11002

.field public static final CDMA_SERVICE_OPTION_REQUEST_RETRY:I = 0x11003

.field public static final CDMA_SERVICE_OPTION_REQUEST_TIMEOUT:I = 0x10011004

.field public static final CDMA_TRANSPORT_NO_ERROR:I = 0x0

.field private static final DISABLE_RETRY_MASK:I = 0x10000000

.field private static sLastError:Lcom/android/mms/transaction/CDMATransportError;

.field private static sLastErrorTimestamp:J


# instance fields
.field private mCode:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "Msg_ID"
    .parameter "CauseCode"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/CDMATransportError;->mCode:I

    .line 47
    invoke-static {p1, p2}, Lcom/android/mms/transaction/CDMATransportError;->getErrorCode(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/CDMATransportError;->mCode:I

    .line 48
    return-void
.end method

.method private static get1XEVDOErrorCode(I)I
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    .line 97
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_1
    const v0, 0x1001100d

    goto :goto_0

    .line 95
    :pswitch_2
    const v0, 0x1100c

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0xbc4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static get1XRTTErrorCode(I)I
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 69
    sparse-switch p0, :sswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 71
    :sswitch_0
    const v0, 0x10011001

    goto :goto_0

    .line 73
    :sswitch_1
    const v0, 0x10011004

    goto :goto_0

    .line 75
    :sswitch_2
    const v0, 0x10011008

    goto :goto_0

    .line 77
    :sswitch_3
    const v0, 0x10011005

    goto :goto_0

    .line 79
    :sswitch_4
    const v0, 0x11002

    goto :goto_0

    .line 81
    :sswitch_5
    const v0, 0x11003

    goto :goto_0

    .line 83
    :sswitch_6
    const v0, 0x11006

    goto :goto_0

    .line 85
    :sswitch_7
    const v0, 0x11007

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3f2 -> :sswitch_1
        0x3f4 -> :sswitch_2
        0x3f9 -> :sswitch_3
        0x3fa -> :sswitch_4
        0x3fb -> :sswitch_5
        0x3fd -> :sswitch_6
        0x401 -> :sswitch_7
    .end sparse-switch
.end method

.method private static getErrorCode(II)I
    .locals 1
    .parameter "Msg_ID"
    .parameter "CauseCode"

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    invoke-static {p1}, Lcom/android/mms/transaction/CDMATransportError;->get1XRTTErrorCode(I)I

    move-result v0

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-static {p1}, Lcom/android/mms/transaction/CDMATransportError;->get1XEVDOErrorCode(I)I

    move-result v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getErrorDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "code"

    .prologue
    .line 105
    sparse-switch p2, :sswitch_data_0

    .line 134
    const v0, 0x7f090229

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 107
    :sswitch_0
    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_1
    const v0, 0x7f09022b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_2
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_3
    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_4
    const v0, 0x7f09022e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_5
    const v0, 0x7f09022f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :sswitch_6
    const v0, 0x7f090230

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_7
    const v0, 0x7f090231

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_8
    const v0, 0x7f090232

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_9
    const v0, 0x7f090233

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :sswitch_a
    const v0, 0x7f090234

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_b
    const v0, 0x7f090235

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :sswitch_c
    const v0, 0x7f090236

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x11002 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11006 -> :sswitch_4
        0x11007 -> :sswitch_5
        0x1100a -> :sswitch_8
        0x1100b -> :sswitch_9
        0x1100c -> :sswitch_a
        0x1100e -> :sswitch_c
        0x10011004 -> :sswitch_2
        0x10011005 -> :sswitch_3
        0x10011008 -> :sswitch_6
        0x10011009 -> :sswitch_7
        0x1001100d -> :sswitch_b
    .end sparse-switch
.end method

.method public static declared-synchronized getLastError()Lcom/android/mms/transaction/CDMATransportError;
    .locals 6

    .prologue
    .line 143
    const-class v1, Lcom/android/mms/transaction/CDMATransportError;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/mms/transaction/CDMATransportError;->sLastErrorTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/transaction/CDMATransportError;->sLastError:Lcom/android/mms/transaction/CDMATransportError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLastError(Lcom/android/mms/transaction/CDMATransportError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 138
    const-class v1, Lcom/android/mms/transaction/CDMATransportError;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/mms/transaction/CDMATransportError;->sLastError:Lcom/android/mms/transaction/CDMATransportError;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/mms/transaction/CDMATransportError;->sLastErrorTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v1

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/mms/transaction/CDMATransportError;->mCode:I

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mms/transaction/CDMATransportError;->mCode:I

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/CDMATransportError;->getErrorDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRetryEnabled()Z
    .locals 2

    .prologue
    .line 55
    const/high16 v0, 0x1000

    iget v1, p0, Lcom/android/mms/transaction/CDMATransportError;->mCode:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
