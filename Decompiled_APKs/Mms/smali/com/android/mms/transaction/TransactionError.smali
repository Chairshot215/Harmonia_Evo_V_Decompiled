.class public Lcom/android/mms/transaction/TransactionError;
.super Ljava/lang/Object;
.source "TransactionError.java"


# static fields
.field public static final ERROR_AIRPLANE_MODE:I = 0x1063

.field protected static final ERROR_BASE:I = 0x1000

.field public static final ERROR_GENERIC_FAILURE:I = 0x1001

.field public static final ERROR_INVALID_RESPONSE_RECEIVED:I = 0x1002

.field public static final ERROR_RESP_ST_CONTENT_NOT_ACCEPTED:I = 0x10087

.field public static final ERROR_RESP_ST_MESSAGE_FORMAT_CORRUPT:I = 0x10083

.field public static final ERROR_RESP_ST_MESSAGE_NOT_FOUND:I = 0x10085

.field public static final ERROR_RESP_ST_NETWORK_PROBLEM:I = 0x10086

.field public static final ERROR_RESP_ST_OK:I = 0x10080

.field public static final ERROR_RESP_ST_PERMANENT_ADDRESS_HIDING_NOT_SUPPORTED:I = 0x100100ea

.field public static final ERROR_RESP_ST_PERMANENT_CONTENT_NOT_ACCEPTED:I = 0x100100e5

.field public static final ERROR_RESP_ST_PERMANENT_FAILURE:I = 0x100100e0

.field public static final ERROR_RESP_ST_PERMANENT_LACK_OF_PREPAID:I = 0x100100eb

.field public static final ERROR_RESP_ST_PERMANENT_MESSAGE_FORMAT_CORRUPT:I = 0x100100e2

.field public static final ERROR_RESP_ST_PERMANENT_MESSAGE_NOT_FOUND:I = 0x100100e4

.field public static final ERROR_RESP_ST_PERMANENT_REPLY_CHARGING_FORWARDING_DENIED:I = 0x100100e8

.field public static final ERROR_RESP_ST_PERMANENT_REPLY_CHARGING_LIMITATIONS_NOT_MET:I = 0x100100e6

.field public static final ERROR_RESP_ST_PERMANENT_REPLY_CHARGING_NOT_SUPPORTED:I = 0x100100e9

.field public static final ERROR_RESP_ST_PERMANENT_REPLY_CHARGING_REQUEST_NOT_ACCEPTED:I = 0x100100e7

.field public static final ERROR_RESP_ST_PERMANENT_SENDING_ADDRESS_UNRESOLVED:I = 0x100100e3

.field public static final ERROR_RESP_ST_PERMANENT_SERVICE_DENIED:I = 0x100100e1

.field public static final ERROR_RESP_ST_SENDING_ADDRESS_UNRESOLVED:I = 0x10084

.field public static final ERROR_RESP_ST_SERVICE_DENIED:I = 0x10082

.field public static final ERROR_RESP_ST_TRANSIENT_FAILURE:I = 0x100c0

.field public static final ERROR_RESP_ST_TRANSIENT_MESSAGE_NOT_FOUND:I = 0x100c2

.field public static final ERROR_RESP_ST_TRANSIENT_NETWORK_PROBLEM:I = 0x100c3

.field public static final ERROR_RESP_ST_TRANSIENT_PARTIAL_SUCCESS:I = 0x100c4

.field public static final ERROR_RESP_ST_TRANSIENT_SENDING_ADDRESS_UNRESOLVED:I = 0x100c1

.field public static final ERROR_RESP_ST_UNSPECIFIED:I = 0x10081

.field public static final ERROR_RESP_ST_UNSUPPORTED_MESSAGE:I = 0x10088

.field public static final ERROR_RETR_ST_OK:I = 0x10180

.field public static final ERROR_RETR_ST_PERMANENT_CONTENT_UNSUPPORTED:I = 0x100101e3

.field public static final ERROR_RETR_ST_PERMANENT_FAILURE:I = 0x100101e0

.field public static final ERROR_RETR_ST_PERMANENT_MESSAGE_NOT_FOUND:I = 0x100101e2

.field public static final ERROR_RETR_ST_PERMANENT_SERVICE_DENIED:I = 0x100101e1

.field public static final ERROR_RETR_ST_TRANSIENT_FAILURE:I = 0x101c0

.field public static final ERROR_RETR_ST_TRANSIENT_MESSAGE_NOT_FOUND:I = 0x101c1

.field public static final ERROR_RETR_ST_TRANSIENT_NETWORK_PROBLEM:I = 0x101c2

.field public static final ERROR_TIME_OUT:I = 0x1062

.field public static final ERROR_TRANSACTION_ID_MISMATCH:I = 0x1003

.field public static final ERROR_UNKNOWN_NETWORK_FAILURE:I = 0x1014

.field public static final NO_NETWORK_COVERAGE:Lcom/android/mms/transaction/TransactionError; = null

.field protected static final PERMANENT_MASK:I = 0x10000000

.field public static final UNSPECIFIED:Lcom/android/mms/transaction/TransactionError;


# instance fields
.field private mCause:Lcom/android/mms/transaction/CDMATransportError;

.field private final mCode:I

.field private final mRetry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    new-instance v0, Lcom/android/mms/transaction/TransactionError;

    invoke-direct {v0, v2, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(IZ)V

    sput-object v0, Lcom/android/mms/transaction/TransactionError;->UNSPECIFIED:Lcom/android/mms/transaction/TransactionError;

    .line 219
    new-instance v0, Lcom/android/mms/transaction/TransactionError;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(IZ)V

    sput-object v0, Lcom/android/mms/transaction/TransactionError;->NO_NETWORK_COVERAGE:Lcom/android/mms/transaction/TransactionError;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/mms/transaction/TransactionError;->isTransient(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(IZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "code"
    .parameter "retry"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/mms/transaction/TransactionError;->mCode:I

    .line 108
    iput-boolean p2, p0, Lcom/android/mms/transaction/TransactionError;->mRetry:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/CDMATransportError;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionError;->mCause:Lcom/android/mms/transaction/CDMATransportError;

    .line 113
    invoke-virtual {p1}, Lcom/android/mms/transaction/CDMATransportError;->getCode()I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/TransactionError;->mCode:I

    .line 114
    invoke-virtual {p1}, Lcom/android/mms/transaction/CDMATransportError;->isRetryEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionError;->mRetry:Z

    .line 115
    return-void
.end method

.method private getErrorDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "code"

    .prologue
    const/16 v1, 0xa8

    .line 229
    sparse-switch p2, :sswitch_data_0

    .line 314
    const v0, 0x7f090202

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 231
    :sswitch_0
    const v0, 0x7f090203

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :sswitch_1
    const v0, 0x7f090204

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :sswitch_2
    const v0, 0x7f090205

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :sswitch_3
    const v0, 0x7f090206

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :sswitch_4
    const v0, 0x7f090207

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :sswitch_5
    const v0, 0x7f090208

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :sswitch_6
    const v0, 0x7f0901b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :sswitch_7
    const v0, 0x7f090209

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :sswitch_8
    const v0, 0x7f09020a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :sswitch_9
    const v0, 0x7f09020b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :sswitch_a
    const v0, 0x7f09020c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :sswitch_b
    const v0, 0x7f09020d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :sswitch_c
    const v0, 0x7f09020e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :sswitch_d
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 258
    const v0, 0x7f090210

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_0
    const v0, 0x7f09020f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :sswitch_e
    const v0, 0x7f090211

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :sswitch_f
    const v0, 0x7f090212

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :sswitch_10
    const v0, 0x7f090213

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :sswitch_11
    const v0, 0x7f090214

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :sswitch_12
    const v0, 0x7f090215

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :sswitch_13
    const v0, 0x7f090216

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 274
    :sswitch_14
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_1

    .line 275
    const v0, 0x7f090218

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 277
    :cond_1
    const v0, 0x7f090217

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 279
    :sswitch_15
    const v0, 0x7f090219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    :sswitch_16
    const v0, 0x7f09021a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :sswitch_17
    const v0, 0x7f09021b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 285
    :sswitch_18
    const v0, 0x7f09021c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 287
    :sswitch_19
    const v0, 0x7f09021d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :sswitch_1a
    const v0, 0x7f09021e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :sswitch_1b
    const v0, 0x7f09021f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 293
    :sswitch_1c
    const v0, 0x7f090220

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 295
    :sswitch_1d
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_2

    .line 296
    const v0, 0x7f090222

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 298
    :cond_2
    const v0, 0x7f090221

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :sswitch_1e
    const v0, 0x7f090223

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :sswitch_1f
    const v0, 0x7f090224

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 304
    :sswitch_20
    const v0, 0x7f090225

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 306
    :sswitch_21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_3

    .line 307
    const v0, 0x7f090227

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 309
    :cond_3
    const v0, 0x7f090226

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    :sswitch_22
    const v0, 0x7f090228

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_1
        0x1014 -> :sswitch_2
        0x10081 -> :sswitch_3
        0x10082 -> :sswitch_4
        0x10083 -> :sswitch_5
        0x10084 -> :sswitch_6
        0x10085 -> :sswitch_7
        0x10086 -> :sswitch_8
        0x10087 -> :sswitch_9
        0x10088 -> :sswitch_a
        0x100c0 -> :sswitch_b
        0x100c1 -> :sswitch_c
        0x100c2 -> :sswitch_d
        0x100c3 -> :sswitch_e
        0x100c4 -> :sswitch_f
        0x101c0 -> :sswitch_1c
        0x101c1 -> :sswitch_1d
        0x101c2 -> :sswitch_1e
        0x100100e0 -> :sswitch_10
        0x100100e1 -> :sswitch_11
        0x100100e2 -> :sswitch_12
        0x100100e3 -> :sswitch_13
        0x100100e4 -> :sswitch_14
        0x100100e5 -> :sswitch_15
        0x100100e6 -> :sswitch_16
        0x100100e7 -> :sswitch_17
        0x100100e8 -> :sswitch_18
        0x100100e9 -> :sswitch_19
        0x100100ea -> :sswitch_1a
        0x100100eb -> :sswitch_1b
        0x100101e0 -> :sswitch_1f
        0x100101e1 -> :sswitch_20
        0x100101e2 -> :sswitch_21
        0x100101e3 -> :sswitch_22
    .end sparse-switch
.end method

.method public static isDefinedError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 216
    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTransient(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 130
    const/high16 v0, 0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static responseStatusToErrorCode(I)I
    .locals 1
    .parameter "status"

    .prologue
    const v0, 0x10081

    .line 134
    sparse-switch p0, :sswitch_data_0

    .line 188
    :goto_0
    :sswitch_0
    return v0

    .line 136
    :sswitch_1
    const v0, 0x10080

    goto :goto_0

    .line 140
    :sswitch_2
    const v0, 0x10082

    goto :goto_0

    .line 142
    :sswitch_3
    const v0, 0x10083

    goto :goto_0

    .line 144
    :sswitch_4
    const v0, 0x10084

    goto :goto_0

    .line 146
    :sswitch_5
    const v0, 0x10085

    goto :goto_0

    .line 148
    :sswitch_6
    const v0, 0x10086

    goto :goto_0

    .line 150
    :sswitch_7
    const v0, 0x10087

    goto :goto_0

    .line 152
    :sswitch_8
    const v0, 0x10088

    goto :goto_0

    .line 154
    :sswitch_9
    const v0, 0x100c0

    goto :goto_0

    .line 156
    :sswitch_a
    const v0, 0x100c1

    goto :goto_0

    .line 158
    :sswitch_b
    const v0, 0x100c2

    goto :goto_0

    .line 160
    :sswitch_c
    const v0, 0x100c3

    goto :goto_0

    .line 162
    :sswitch_d
    const v0, 0x100c4

    goto :goto_0

    .line 164
    :sswitch_e
    const v0, 0x100100e0

    goto :goto_0

    .line 166
    :sswitch_f
    const v0, 0x100100e1

    goto :goto_0

    .line 168
    :sswitch_10
    const v0, 0x100100e2

    goto :goto_0

    .line 170
    :sswitch_11
    const v0, 0x100100e3

    goto :goto_0

    .line 172
    :sswitch_12
    const v0, 0x100100e4

    goto :goto_0

    .line 174
    :sswitch_13
    const v0, 0x100100e5

    goto :goto_0

    .line 176
    :sswitch_14
    const v0, 0x100100e6

    goto :goto_0

    .line 180
    :sswitch_15
    const v0, 0x100100e8

    goto :goto_0

    .line 182
    :sswitch_16
    const v0, 0x100100e9

    goto :goto_0

    .line 184
    :sswitch_17
    const v0, 0x100100ea

    goto :goto_0

    .line 186
    :sswitch_18
    const v0, 0x100100eb

    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x81 -> :sswitch_0
        0x82 -> :sswitch_2
        0x83 -> :sswitch_3
        0x84 -> :sswitch_4
        0x85 -> :sswitch_5
        0x86 -> :sswitch_6
        0x87 -> :sswitch_7
        0x88 -> :sswitch_8
        0xc0 -> :sswitch_9
        0xc1 -> :sswitch_a
        0xc2 -> :sswitch_b
        0xc3 -> :sswitch_c
        0xc4 -> :sswitch_d
        0xe0 -> :sswitch_e
        0xe1 -> :sswitch_f
        0xe2 -> :sswitch_10
        0xe3 -> :sswitch_11
        0xe4 -> :sswitch_12
        0xe5 -> :sswitch_13
        0xe6 -> :sswitch_14
        0xe8 -> :sswitch_15
        0xe9 -> :sswitch_16
        0xea -> :sswitch_17
        0xeb -> :sswitch_18
    .end sparse-switch
.end method

.method public static retrieveStatusToErrorCode(I)I
    .locals 1
    .parameter "status"

    .prologue
    const v0, 0x101c0

    .line 193
    sparse-switch p0, :sswitch_data_0

    .line 211
    :goto_0
    :sswitch_0
    return v0

    .line 195
    :sswitch_1
    const v0, 0x10180

    goto :goto_0

    .line 199
    :sswitch_2
    const v0, 0x101c1

    goto :goto_0

    .line 201
    :sswitch_3
    const v0, 0x101c2

    goto :goto_0

    .line 203
    :sswitch_4
    const v0, 0x100101e0

    goto :goto_0

    .line 205
    :sswitch_5
    const v0, 0x100101e1

    goto :goto_0

    .line 207
    :sswitch_6
    const v0, 0x100101e2

    goto :goto_0

    .line 209
    :sswitch_7
    const v0, 0x100101e3

    goto :goto_0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xe0 -> :sswitch_4
        0xe1 -> :sswitch_5
        0xe2 -> :sswitch_6
        0xe3 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public causedByTransport()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionError;->mCause:Lcom/android/mms/transaction/CDMATransportError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/mms/transaction/TransactionError;->mCode:I

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionError;->mCause:Lcom/android/mms/transaction/CDMATransportError;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionError;->mCause:Lcom/android/mms/transaction/CDMATransportError;

    invoke-virtual {v0, p1}, Lcom/android/mms/transaction/CDMATransportError;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/TransactionError;->mCode:I

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/TransactionError;->getErrorDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransportError()Lcom/android/mms/transaction/CDMATransportError;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionError;->mCause:Lcom/android/mms/transaction/CDMATransportError;

    return-object v0
.end method

.method public isRetryEnabled()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionError;->mRetry:Z

    return v0
.end method
