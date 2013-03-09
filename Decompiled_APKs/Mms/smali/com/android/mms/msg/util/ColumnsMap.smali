.class public Lcom/android/mms/msg/util/ColumnsMap;
.super Ljava/lang/Object;
.source "ColumnsMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/msg/util/ColumnsMap$SMS;,
        Lcom/android/mms/msg/util/ColumnsMap$MMS;
    }
.end annotation


# static fields
.field public static final COLUMN_CATEGORY_NAME:I = 0x27

.field public static final COLUMN_HTC_DATE2:I = 0x1b

.field public static final COLUMN_HTC_MSG_DATE:I = 0x1f

.field public static final COLUMN_HTC_MSG_READ:I = 0x20

.field public static final COLUMN_HTC_MSG_TYPE:I = 0x1e

.field public static final COLUMN_ID:I = 0x1

.field public static final COLUMN_MMS_CONTENT_TYPE:I = 0x17

.field public static final COLUMN_MMS_DATE:I = 0x11

.field public static final COLUMN_MMS_DELIVERY_REPORT:I = 0x15

.field public static final COLUMN_MMS_ERROR_TYPE:I = 0x19

.field public static final COLUMN_MMS_LOCKED:I = 0x1a

.field public static final COLUMN_MMS_MESSAGE_BOX:I = 0x14

.field public static final COLUMN_MMS_MESSAGE_TYPE:I = 0x13

.field public static final COLUMN_MMS_PRIORITY:I = 0x18

.field public static final COLUMN_MMS_READ:I = 0x12

.field public static final COLUMN_MMS_READ_REPORT:I = 0x16

.field public static final COLUMN_MMS_SUBJECT:I = 0xf

.field public static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x10

.field public static final COLUMN_MSG_TYPE:I = 0x0

.field public static final COLUMN_SMS_ADDRESS:I = 0x3

.field public static final COLUMN_SMS_BODY:I = 0x4

.field public static final COLUMN_SMS_CALLBACK_NUMBER:I = 0xc

.field public static final COLUMN_SMS_DATE:I = 0x5

.field public static final COLUMN_SMS_FLAGS:I = 0xe

.field public static final COLUMN_SMS_GID:I = 0x1d

.field public static final COLUMN_SMS_ISEVDO:I = 0x1c

.field public static final COLUMN_SMS_IS_CDMA_FORMAT:I = 0xd

.field public static final COLUMN_SMS_LOCKED:I = 0xa

.field public static final COLUMN_SMS_PRIORITY:I = 0xb

.field public static final COLUMN_SMS_READ:I = 0x6

.field public static final COLUMN_SMS_SIM_ON_INDEX:I = 0x9

.field public static final COLUMN_SMS_STATUS:I = 0x8

.field public static final COLUMN_SMS_TYPE:I = 0x7

.field public static final COLUMN_THREAD_ID:I = 0x2

.field public static final COLUMN_VVM_ADDRESS:I = 0x26

.field public static final COLUMN_VVM_ID:I = 0x21

.field public static final COLUMN_VVM_PLAY_TIME:I = 0x22

.field public static final COLUMN_VVM_PRIVATE:I = 0x23

.field public static final COLUMN_VVM_TYPE:I = 0x25

.field public static final COLUMN_VVM_URGENT:I = 0x24

.field public static final DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

.field public static final HTC_PROJECTION:[Ljava/lang/String;

.field public static final MMS_PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_COUNT:[Ljava/lang/String;

.field public static final SMS_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mColumnCategoryName:I

.field public mColumnHtcDate2:I

.field public mColumnHtcMsgDate:I

.field public mColumnHtcMsgRead:I

.field public mColumnHtcMsgType:I

.field public mColumnHtcVvmAddress:I

.field public mColumnHtcVvmId:I

.field public mColumnHtcVvmPlayTime:I

.field public mColumnHtcVvmPrivate:I

.field public mColumnHtcVvmType:I

.field public mColumnHtcVvmUrgent:I

.field public mColumnIsCdmaFormat:I

.field public mColumnMmsContentType:I

.field public mColumnMmsDate:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsPriority:I

.field public mColumnMmsRead:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnSmsAddress:I

.field public mColumnSmsBody:I

.field public mColumnSmsCallbackNumber:I

.field public mColumnSmsDate:I

.field public mColumnSmsFlags:I

.field public mColumnSmsIsEvdo:I

.field public mColumnSmsLocked:I

.field public mColumnSmsPriority:I

.field public mColumnSmsRead:I

.field public mColumnSmsSimOnIndex:I

.field public mColumnSmsStatus:I

.field public mColumnSmsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_on_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_cdma_format"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "date2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "is_evdo"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "gid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION:[Ljava/lang/String;

    .line 86
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_on_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_cdma_format"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "date2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "is_evdo"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "gid"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "vvm_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ptime"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "htcthread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/msg/util/ColumnsMap;->HTC_PROJECTION:[Ljava/lang/String;

    .line 139
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 146
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "htc_category"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_on_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "gid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/msg/util/ColumnsMap;->SMS_PROJECTION:[Ljava/lang/String;

    .line 163
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "htc_category"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/msg/util/ColumnsMap;->MMS_PROJECTION:[Ljava/lang/String;

    .line 711
    new-instance v0, Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/msg/util/ColumnsMap;-><init>()V

    sput-object v0, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    .line 282
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    .line 283
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsAddress:I

    .line 284
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsBody:I

    .line 285
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I

    .line 286
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsRead:I

    .line 287
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsType:I

    .line 288
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsStatus:I

    .line 289
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubject:I

    .line 290
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubjectCharset:I

    .line 291
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDate:I

    .line 292
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsRead:I

    .line 293
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageType:I

    .line 294
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageBox:I

    .line 295
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDeliveryReport:I

    .line 296
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsReadReport:I

    .line 297
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsContentType:I

    .line 298
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsErrorType:I

    .line 299
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsSimOnIndex:I

    .line 300
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsPriority:I

    .line 301
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsPriority:I

    .line 302
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsCallbackNumber:I

    .line 303
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsLocked:I

    .line 304
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsLocked:I

    .line 305
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnIsCdmaFormat:I

    .line 306
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsFlags:I

    .line 307
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcDate2:I

    .line 310
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgType:I

    .line 311
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgDate:I

    .line 312
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgRead:I

    .line 313
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmId:I

    .line 314
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPlayTime:I

    .line 315
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPrivate:I

    .line 316
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmUrgent:I

    .line 317
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmType:I

    .line 318
    const/16 v0, 0x26

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmAddress:I

    .line 321
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsIsEvdo:I

    .line 322
    const/16 v0, 0x27

    iput v0, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnCategoryName:I

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 325
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    :try_start_1
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_1
    :try_start_2
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsAddress:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 348
    :goto_2
    :try_start_3
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsBody:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 354
    :goto_3
    :try_start_4
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 360
    :goto_4
    :try_start_5
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsRead:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 366
    :goto_5
    :try_start_6
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsType:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 372
    :goto_6
    :try_start_7
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsStatus:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 378
    :goto_7
    :try_start_8
    const-string v1, "sub"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubject:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 384
    :goto_8
    :try_start_9
    const-string v1, "sub_cs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 390
    :goto_9
    :try_start_a
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDate:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 396
    :goto_a
    :try_start_b
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsRead:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 402
    :goto_b
    :try_start_c
    const-string v1, "m_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageType:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    .line 408
    :goto_c
    :try_start_d
    const-string v1, "msg_box"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 414
    :goto_d
    :try_start_e
    const-string v1, "d_rpt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    .line 420
    :goto_e
    :try_start_f
    const-string v1, "rr"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsReadReport:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    .line 426
    :goto_f
    :try_start_10
    const-string v1, "ct_t"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsContentType:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10

    .line 432
    :goto_10
    :try_start_11
    const-string v1, "err_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsErrorType:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11

    .line 439
    :goto_11
    :try_start_12
    const-string v1, "index_on_sim"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsSimOnIndex:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_12

    .line 447
    :goto_12
    :try_start_13
    const-string v1, "priority"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsPriority:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13

    .line 453
    :goto_13
    :try_start_14
    const-string v1, "pri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsPriority:I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_14

    .line 459
    :goto_14
    :try_start_15
    const-string v1, "callback_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsCallbackNumber:I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_15

    .line 467
    :goto_15
    :try_start_16
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsLocked:I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_16

    .line 473
    :goto_16
    :try_start_17
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsLocked:I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_17

    .line 480
    :goto_17
    :try_start_18
    const-string v1, "is_cdma_format"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnIsCdmaFormat:I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_18

    .line 487
    :goto_18
    :try_start_19
    const-string v1, "extra"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsFlags:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_19

    .line 495
    :goto_19
    :try_start_1a
    const-string v1, "msg_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgType:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 501
    :goto_1a
    :try_start_1b
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgDate:I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 507
    :goto_1b
    :try_start_1c
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgRead:I
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 513
    :goto_1c
    :try_start_1d
    const-string v1, "vvm_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmId:I
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 519
    :goto_1d
    :try_start_1e
    const-string v1, "ptime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPlayTime:I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 525
    :goto_1e
    :try_start_1f
    const-string v1, "is_private"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPrivate:I
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 531
    :goto_1f
    :try_start_20
    const-string v1, "is_urgent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmUrgent:I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_20

    .line 537
    :goto_20
    :try_start_21
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmType:I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_21

    .line 543
    :goto_21
    :try_start_22
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmAddress:I
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_22

    .line 551
    :goto_22
    :try_start_23
    const-string v1, "is_evdo"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsIsEvdo:I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_23

    .line 560
    :goto_23
    :try_start_24
    const-string v1, "date2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcDate2:I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_24

    .line 565
    :goto_24
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 338
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 343
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 344
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 349
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 350
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 355
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 356
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 361
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 362
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 367
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 368
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 373
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v0

    .line 374
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 379
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 380
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 385
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 386
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 391
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 392
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 397
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v0

    .line 398
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 403
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v0

    .line 404
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 409
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v0

    .line 410
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 415
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 416
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 421
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v0

    .line 422
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 427
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 428
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 433
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v0

    .line 434
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 440
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v0

    .line 441
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 448
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v0

    .line 449
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 454
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 455
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 460
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v0

    .line 461
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 468
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_16
    move-exception v0

    .line 469
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 474
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_17
    move-exception v0

    .line 475
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 481
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_18
    move-exception v0

    .line 482
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 488
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_19
    move-exception v0

    .line 489
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 496
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v0

    .line 497
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 502
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1b
    move-exception v0

    .line 503
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 508
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1c
    move-exception v0

    .line 509
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 514
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1d
    move-exception v0

    .line 515
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 520
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1e
    move-exception v0

    .line 521
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 526
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1f
    move-exception v0

    .line 527
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 532
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_20
    move-exception v0

    .line 533
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 538
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_21
    move-exception v0

    .line 539
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 544
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_22
    move-exception v0

    .line 545
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 553
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_23
    move-exception v0

    .line 554
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 561
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_24
    move-exception v0

    .line 562
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "MsgType"

    .prologue
    .line 569
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    :try_start_1
    const-string v1, "date2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcDate2:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 585
    :goto_1
    const-string v1, "sms"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    :try_start_2
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsAddress:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 595
    :goto_2
    :try_start_3
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsBody:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 601
    :goto_3
    :try_start_4
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 607
    :goto_4
    :try_start_5
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsRead:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 613
    :goto_5
    :try_start_6
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsType:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 619
    :goto_6
    :try_start_7
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsStatus:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 625
    :goto_7
    :try_start_8
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsLocked:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 631
    :goto_8
    :try_start_9
    const-string v1, "index_on_sim"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsSimOnIndex:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 638
    :goto_9
    :try_start_a
    const-string v1, "extra"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsFlags:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 708
    :goto_a
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 581
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 591
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 596
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 597
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 602
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 603
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 608
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 609
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 614
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 615
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 620
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v0

    .line 621
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 626
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 627
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 632
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 633
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 639
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 640
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 648
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_b
    const-string v1, "sub"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubject:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_c

    .line 654
    :goto_b
    :try_start_c
    const-string v1, "sub_cs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_d

    .line 660
    :goto_c
    :try_start_d
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDate:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_e

    .line 666
    :goto_d
    :try_start_e
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsRead:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_f

    .line 672
    :goto_e
    :try_start_f
    const-string v1, "m_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageType:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_10

    .line 678
    :goto_f
    :try_start_10
    const-string v1, "msg_box"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_11

    .line 684
    :goto_10
    :try_start_11
    const-string v1, "d_rpt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_12

    .line 690
    :goto_11
    :try_start_12
    const-string v1, "rr"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsReadReport:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_13

    .line 696
    :goto_12
    :try_start_13
    const-string v1, "ct_t"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsContentType:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_14

    .line 702
    :goto_13
    :try_start_14
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsLocked:I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_a

    .line 703
    :catch_b
    move-exception v0

    .line 704
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 649
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v0

    .line 650
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 655
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v0

    .line 656
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 661
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 662
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 667
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v0

    .line 668
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 673
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 674
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 679
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v0

    .line 680
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 685
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v0

    .line 686
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 691
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v0

    .line 692
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 697
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 698
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
