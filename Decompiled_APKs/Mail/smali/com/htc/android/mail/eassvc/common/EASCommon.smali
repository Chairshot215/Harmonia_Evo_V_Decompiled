.class public final Lcom/htc/android/mail/eassvc/common/EASCommon;
.super Ljava/lang/Object;
.source "EASCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/common/EASCommon$DeviceInformation;,
        Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    }
.end annotation


# static fields
.field public static final ACNT_CONFIGURED:I = 0x1

.field public static final ACNT_NOT_CONFIGURED:I = 0x0

.field public static final ALLOW_PROTOCOL_14_0:Z = false

.field public static final CAL_FILTERTYPE_1_DAY:I = 0x1

.field public static final CAL_FILTERTYPE_1_MON:I = 0x5

.field public static final CAL_FILTERTYPE_1_WK:I = 0x3

.field public static final CAL_FILTERTYPE_2_WK:I = 0x4

.field public static final CAL_FILTERTYPE_3_DAY:I = 0x2

.field public static final CAL_FILTERTYPE_3_MON:I = 0x6

.field public static final CAL_FILTERTYPE_6_MON:I = 0x7

.field public static final CAL_FILTERTYPE_ALL:I = 0x0

.field public static final CANCEL_MAIL_OPTIION_DOWNLOAD_MAIL:I = 0x64

.field public static final CANCEL_MAIL_OPTION_FETCH_ITEM:I = 0x65

.field public static final COMPOSE_MEETING_INVITATION:Ljava/lang/String; = "6"

.field public static final CONFLICT_CLIENT_WIN:I = 0x0

.field public static final CONFLICT_SERVER_WIN:I = 0x1

.field public static final DEF_CAL_SYNC_BODY_FORMAT:I = 0x1

.field public static final DEF_CAL_SYNC_DAYS:I = 0x4

.field public static final DEF_CONFLICT_RESOLVE:I = 0x1

.field public static final DEF_CONNECT_WHILE_ROAMING:Z = true

.field public static final DEF_MAIL_DL_ATTACH_SIZE:I = 0x0

.field public static final DEF_MAIL_DL_DAYS:I = 0x2

.field public static final DEF_MAIL_DL_SIZE:I = 0x4

.field public static final DEF_MAIL_FORMAT:I = 0x2

.field public static final DEF_MAIL_FORMAT_2_5:I = 0x1

.field public static final DEF_PEAK_DAYS:I = 0x1f

.field public static final DEF_SCHD_OPTION:I = 0x4

.field public static final DEF_SCHD_OPTION_OFFPEAK:I = 0x6

.field public static final DEF_TASK_SYNC_COMPLETE:I = 0x0

.field public static final EAS_CONFIG_VERSION:I = 0x3

.field public static final EAS_ERROR_CERTIFICATE_EXPIRED:I = -0xa

.field public static final EAS_ERROR_CERTIFICATE_MISMATCH:I = -0xb

.field public static final EAS_ERROR_CERTIFICATE_NOT_VALID_YET:I = -0xc

.field public static final EAS_ERROR_CERTIFICATE_PATH:Ljava/lang/String; = "/data/data/com.htc.android.mail/CerError"

.field public static final EAS_ERROR_CERTIFICATE_UNTRUST:I = -0xd

.field public static final EMAIL_ATTACH_DEFAULT_SDCARD_PATH:Ljava/lang/String; = "/sdcard/.easc/Attachment/"

.field public static final EMAIL_DEFAULT_EASC_SDCARD_ATTACH:Ljava/lang/String; = "/sdcard/.easc/Attachment"

.field public static final EMAIL_DEFAULT_SDCARD_EASC:Ljava/lang/String; = "/sdcard/.easc"

.field public static final EMAIL_DELETE_FROM_SERVER:I = 0x1

.field public static final EMAIL_EXCHANGE_DESC:Ljava/lang/String; = "Exchange Server"

.field public static final EMAIL_PROVIDER_NAME:Ljava/lang/String; = "Exchange"

.field public static final EXCEPTION:I = 0x12c

.field public static final EXCEPTION_CERTIFICATE:I = 0x131

.field public static final EXCEPTION_DOWNLOAD_ATTACH:I = 0x132

.field public static final EXCEPTION_FILE_TOO_LARGE:I = 0x135

.field public static final EXCEPTION_IO:I = 0x12d

.field public static final EXCEPTION_MAILBOX_NOT_FOUND:I = 0x134

.field public static final EXCEPTION_MAIL_NOT_FOUND:I = 0x133

.field public static final EXCEPTION_OUT_OF_MEMORY:I = 0x12e

.field public static final EXCEPTION_SOCKET_TIME_OUT:I = 0x12f

.field public static final EXCEPTION_UNKNOW_HOST:I = 0x130

.field public static final EXTRA_ACCOUNT_ALREADY_EXIST:I = -0x14

.field public static final EXTRA_ACCOUNT_NAME_ALREADY_EXIST:I = -0x17

.field public static final EXTRA_ACCOUNT_SIZE_LIMIT:I = -0x15

.field public static final EXTRA_DELAY_TIME:Ljava/lang/String; = "com.htc.eas.extra.delayTime"

.field public static final EXTRA_EAS_PROGRESS_MESSAGE:Ljava/lang/String; = "extra.eas.progress.message"

.field public static final EXTRA_FROM_EASC:Ljava/lang/String; = "extra.eas.from.easc"

.field public static final EXTRA_FROM_MAIL:Ljava/lang/String; = "extra.eas.from.mail"

.field public static final EXTRA_INVALID_ACCOUNT_PASSWORD:I = -0x16

.field public static final EXTRA_MAIL_SEND_ERRORCODE:Ljava/lang/String; = "extra.eas.mail.sendmailErrorcode"

.field public static final EXTRA_PHONE_STATUS:Ljava/lang/String; = "extra.phone_status"

.field public static final EXTRA_PHONE_STATUS_AIRPLANEMODE:I = 0x1

.field public static final EXTRA_PHONE_STATUS_NORMAL:I = 0x0

.field public static final EXTRA_PHONE_STATUS_ROAMING:I = 0x2

.field public static final EXTRA_POLICY_ADMIN_NOT_EXIST:I = -0xd

.field public static final EXTRA_POLICY_SUPPORT_BUT_NOT_SUFFICIENT:I = -0xe

.field public static final EXTRA_PROVISION_NOT_APPILED:I = -0xa

.field public static final EXTRA_PROVISION_NOT_FULLY_SUPPORT:I = -0xc

.field public static final EXTRA_PROVISION_PASSWORD_REQUIRED:I = -0xb

.field public static final EXTRA_SENDMAIL_ACCOUNT_FAIL:I = 0x1

.field public static final EXTRA_SENDMAIL_OTHER_FAIL:I = 0x2

.field public static final EXTRA_STORAGE_FULL:I = -0x7

.field public static final EXTRA_SYNCSRC_TYPE:Ljava/lang/String; = "extra.syncsrc_type"

.field public static final EXTRA_SYNC_ERROR_CODE:Ljava/lang/String; = "extra.sync_error_code"

.field public static final EXTRA_SYNC_RESULT:Ljava/lang/String; = "extra.sync_result"

.field public static final EXTRA_SYNC_STATUS:Ljava/lang/String; = "extra.sync_status"

.field public static final EXTRA_SYNC_STATUS_ADD_MAIL:I = 0xe

.field public static final EXTRA_SYNC_STATUS_CHECK_NEW_MAIL:I = 0xb

.field public static final EXTRA_SYNC_STATUS_CONNECT_TO_SERVER:I = 0xa

.field public static final EXTRA_SYNC_STATUS_Del_MAIL:I = 0xf

.field public static final EXTRA_SYNC_STATUS_FETCH_ATTACH:I = 0x11

.field public static final EXTRA_SYNC_STATUS_FETCH_MAIL:I = 0x10

.field public static final EXTRA_SYNC_STATUS_FETCH_NEW_MAIL:I = 0xc

.field public static final EXTRA_SYNC_STATUS_PARAM:Ljava/lang/String; = "extra.sync_status_param"

.field public static final EXTRA_SYNC_STATUS_SYNC_MAIL:I = 0xd

.field public static final EXTRA_SYNC_STATUS_UPD_MAIL:I = 0xe

.field public static final EXTRA_SYNC_STATUS_UPD_MAIL_BOXS:I = 0xc

.field public static final EXTRA_SYNC_UPDATE_LAST_SYNC_TIME:I = 0x12

.field public static final EXTRA_TAG:Ljava/lang/String; = "com.htc.eas.extra.tag"

.field public static final EXTRA_TEST_SERVER_HTTP_SC:Ljava/lang/String; = "extra.test_server_http_sc"

.field public static final EXTRA_TEST_SERVER_STATUS:Ljava/lang/String; = "extra.test_server_status"

.field public static final EXTRA_TEST_STATUS_ABORT:I = -0x4

.field public static final EXTRA_TEST_STATUS_CERTIFICATE_NOT_TRUST:I = -0x6

.field public static final EXTRA_TEST_STATUS_FORBIDDEN:I = -0x5

.field public static final EXTRA_TEST_STATUS_INVALID_ACCOUNT:I = -0x2

.field public static final EXTRA_TEST_STATUS_NOSERVER:I = -0x1

.field public static final EXTRA_TEST_STATUS_OK:I = 0x0

.field public static final EXTRA_TEST_STATUS_UNKNOWFAIL:I = -0x3

.field public static final EXTRA_VERIFY_ACCOUNT_ERROR:I = 0x1

.field public static final EXTRA_VERIFY_ACCOUNT_OK:I = 0x0

.field public static final EXTRA_VERIFY_AUTHENTICATION_ERROR:I = 0x3

.field public static final EXTRA_VERIFY_SERVER_ERROR:I = 0x2

.field public static final EXTRA_VERIFY_STATUS_STATUS:Ljava/lang/String; = "extra.verify_account_status"

.field public static final INTENT_ALL_SYNC_FINISH:Ljava/lang/String; = "com.htc.eas.intent.all_sync_finish"

.field public static final INTENT_ALL_SYNC_START:Ljava/lang/String; = "com.htc.eas.intent.all_sync_start"

.field public static final INTENT_CANCEL_SYNC_SOURCE_DONE:Ljava/lang/String; = "com.htc.eas.intent.cancel_sync_source_done"

.field public static final INTENT_CHK_SVRCAP_FAILED:Ljava/lang/String; = "com.htc.eas.intent.chk_svrcap_failed"

.field public static final INTENT_DELETE_EXCHG_ACCOUNT:Ljava/lang/String; = "com.htc.mail.eas.intent.delete_exchg_account"

.field public static final INTENT_DELETE_MAIL_FINISH:Ljava/lang/String; = "com.htc.eas.intent.delete_mail_finish"

.field public static final INTENT_EAS_PROGRESS_MESSAGE:Ljava/lang/String; = "intent.eas.progress.message"

.field public static final INTENT_FAILED_SYNC:Ljava/lang/String; = "com.htc.eas.intent.failed_sync"

.field public static final INTENT_FOLDER_NAME_UPDATE:Ljava/lang/String; = "com.htc.eas.intent.updateFolderName"

.field public static final INTENT_FORCE_RESUME:Ljava/lang/String; = "intent.eas.mail.priority.high"

.field public static final INTENT_FROM_WHERE:Ljava/lang/String; = "intent.eas.from_where"

.field public static final INTENT_MAIL_SEND_ERROR:Ljava/lang/String; = "intent.eas.mail.sendmailError"

.field public static final INTENT_MEETING_INVITATION:Ljava/lang/String; = "intent.eas.meeting_invitation"

.field public static final INTENT_MODE_WIZARD:Ljava/lang/String; = "intent.eas.mode.wizard"

.field public static final INTENT_PAUSE_SYNC:Ljava/lang/String; = "com.htc.eas.intent.pauseSync"

.field public static final INTENT_PHONE_STATUS_CHANGE:Ljava/lang/String; = "com.htc.eas.intent.phone_status_change"

.field public static final INTENT_RESUME_SYNC:Ljava/lang/String; = "com.htc.eas.intent.resumeSync"

.field public static final INTENT_START_SYNC:Ljava/lang/String; = "com.htc.eas.intent.start_sync"

.field public static final INTENT_STOP_SYNC:Ljava/lang/String; = "com.htc.eas.intent.stop_sync"

.field public static final INTENT_SYNC_CALENDAR:Ljava/lang/String; = "com.htc.android.eas.syncCalendar"

.field public static final INTENT_SYNC_CHANGE:Ljava/lang/String; = "com.htc.eas.intent.sync_change"

.field public static final INTENT_SYNC_CONTACTS:Ljava/lang/String; = "com.htc.android.eas.syncContacts"

.field public static final INTENT_SYNC_STATUS_CHANGED:Ljava/lang/String; = "com.htc.eas.intent.sync_status_change"

.field public static final MAIL_ATTACH_OPT_100K:I = 0x2

.field public static final MAIL_ATTACH_OPT_1M:I = 0x4

.field public static final MAIL_ATTACH_OPT_25K:I = 0x1

.field public static final MAIL_ATTACH_OPT_2M:I = 0x5

.field public static final MAIL_ATTACH_OPT_500K:I = 0x3

.field public static final MAIL_ATTACH_OPT_ALWAYS:I = 0x6

.field public static final MAIL_ATTACH_OPT_NEVER:I = 0x0

.field public static final MAIL_BODY_TYPE_HTML:I = 0x2

.field public static final MAIL_BODY_TYPE_MIME:I = 0x4

.field public static final MAIL_BODY_TYPE_RTF:I = 0x3

.field public static final MAIL_BODY_TYPE_TEXT:I = 0x1

.field public static final MAIL_DLSIZE_100_KB:I = 0x8

.field public static final MAIL_DLSIZE_10_KB:I = 0x5

.field public static final MAIL_DLSIZE_1_KB:I = 0x2

.field public static final MAIL_DLSIZE_20_KB:I = 0x6

.field public static final MAIL_DLSIZE_2_KB:I = 0x3

.field public static final MAIL_DLSIZE_50_KB:I = 0x7

.field public static final MAIL_DLSIZE_512_CHARS:I = 0x1

.field public static final MAIL_DLSIZE_5_KB:I = 0x4

.field public static final MAIL_DLSIZE_MIME_102400_CHARS:I = 0x7

.field public static final MAIL_DLSIZE_MIME_10240_CHARS:I = 0x4

.field public static final MAIL_DLSIZE_MIME_20480_CHARS:I = 0x5

.field public static final MAIL_DLSIZE_MIME_4096_CHARS:I = 0x1

.field public static final MAIL_DLSIZE_MIME_51200_CHARS:I = 0x6

.field public static final MAIL_DLSIZE_MIME_5120_CHARS:I = 0x2

.field public static final MAIL_DLSIZE_MIME_7168_CHARS:I = 0x3

.field public static final MAIL_DLSIZE_MIME_NEVER_TURNCATE:I = 0x8

.field public static final MAIL_DLSIZE_MIME_ONLY_TITLE:I = 0x0

.field public static final MAIL_DLSIZE_NEVER_TRUNCATE:I = 0x9

.field public static final MAIL_DLSIZE_ONLY_TITLE:I = 0x0

.field public static final MAIL_DLSIZE_TEXT:I = 0xa

.field public static final MAIL_FILTERTYPE_1_DAY:I = 0x1

.field public static final MAIL_FILTERTYPE_1_MON:I = 0x5

.field public static final MAIL_FILTERTYPE_1_WK:I = 0x3

.field public static final MAIL_FILTERTYPE_2_WK:I = 0x4

.field public static final MAIL_FILTERTYPE_3_DAY:I = 0x2

.field public static final MAIL_FILTERTYPE_ALL:I = 0x0

.field public static final MAIL_MEETING_FORWARD:Ljava/lang/String; = "IPM.Schedule.Meeting.MeetingRespForward"

.field public static final MAIL_MEETING_PROPOSE_NEW_TIME:Ljava/lang/String; = "IPM.Schedule.Meeting.proposeNewTime"

.field public static final MAIL_MESSAGE_CLASS_ACCEPT:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Pos"

.field public static final MAIL_MESSAGE_CLASS_CANCEL:Ljava/lang/String; = "IPM.Schedule.Meeting.Canceled"

.field public static final MAIL_MESSAGE_CLASS_DECLINE:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Neg"

.field public static final MAIL_MESSAGE_CLASS_NOTIFICATION:Ljava/lang/String; = "IPM.Notification.Meeting"

.field public static final MAIL_MESSAGE_CLASS_REQUEST:Ljava/lang/String; = "IPM.Schedule.Meeting.Request"

.field public static final MAIL_MESSAGE_CLASS_TENTATIVE:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Tent"

.field public static final MAX_ACCOUNT_SIZE:I = 0xf

.field public static final MEETING_RESP_ACCEPTED:Ljava/lang/String; = "1"

.field public static final MEETING_RESP_DECLINED:Ljava/lang/String; = "3"

.field public static final MEETING_RESP_FORWARD:Ljava/lang/String; = "4"

.field public static final MEETING_RESP_PROPOSE_NEW_TIME:Ljava/lang/String; = "5"

.field public static final MEETING_RESP_TENTATIVE_ACCEPTED:Ljava/lang/String; = "2"

.field public static final PROTOCOL_12_0:Ljava/lang/String; = "12.0"

.field public static final PROTOCOL_12_1:Ljava/lang/String; = "12.1"

.field public static final PROTOCOL_2_0:Ljava/lang/String; = "2.0"

.field public static final PROTOCOL_2_5:Ljava/lang/String; = "2.5"

.field public static final PROTOCOL_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final PROTOCOL_VER_12_0:D = 12.0

.field public static final PROTOCOL_VER_12_1:D = 12.1

.field public static final PROTOCOL_VER_14_0:D = 14.0

.field public static final PROTOCOL_VER_2_0:D = 2.0

.field public static final PROTOCOL_VER_2_5:D = 2.5

.field public static final PROTOCOL_VER_UNKNOWN:D = -1.0

.field public static final SYNCSRC_ALL:I = 0x0

.field public static final SYNCSRC_CALENDAR:I = 0x2

.field public static final SYNCSRC_CONTACTS:I = 0x1

.field public static final SYNCSRC_EMAIL:I = 0x3

.field public static final SYNCSRC_NONE:I = -0x2

.field public static final SYNCSRC_TASKS:I = 0x4

.field public static final SYNCSRC_UNKNOWN:I = -0x1

.field public static final SYNC_CANCEL:I = -0x1

.field public static final SYNC_FALED:I = 0x1

.field public static final SYNC_LOG_KEEP_DURATION:J = 0x240c8400L

.field public static final SYNC_OK:I = 0x0

.field public static final SYNC_SCHEDULE_10_MIN:I = 0x3

.field public static final SYNC_SCHEDULE_120_MIN:I = 0x7

.field public static final SYNC_SCHEDULE_15_MIN:I = 0x4

.field public static final SYNC_SCHEDULE_1_DAY:I = 0x9

.field public static final SYNC_SCHEDULE_240_MIN:I = 0x8

.field public static final SYNC_SCHEDULE_30_MIN:I = 0x5

.field public static final SYNC_SCHEDULE_5_MIN:I = 0x2

.field public static final SYNC_SCHEDULE_60_MIN:I = 0x6

.field public static final SYNC_SCHEDULE_MANUALLY:I = 0x0

.field public static final SYNC_SCHEDULE_PING:I = 0x1

.field public static final TASK_FILTER_ALL:I = 0x0

.field public static final TASK_FILTER_INCOMPLETE:I = 0x8

.field public static final USER_CANCEL:I = -0xb

.field public static final attachmentHashId:I

.field public static colorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final hashId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "com.htc.eas.easservice"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->hashId:I

    .line 47
    const-string v0, "com.htc.eas.easservice.SDfull"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->attachmentHashId:I

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    .line 285
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x30cdde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x21a883

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208004a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x62b755

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x8fbc51

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xfea379

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xe17d78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xde5c85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xd964d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xb7731c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x875709

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x487615

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xe46fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x26ff4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x1998f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x3c99b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x8fb4a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xccb68d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x2080059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x9ba477

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208005a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xf76ea7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x7b8cf3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    const v1, 0x208005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x3a6ac8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method
