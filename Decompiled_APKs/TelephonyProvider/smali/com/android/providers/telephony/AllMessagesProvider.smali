.class public Lcom/android/providers/telephony/AllMessagesProvider;
.super Landroid/content/ContentProvider;
.source "AllMessagesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/AllMessagesProvider$1;,
        Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;
    }
.end annotation


# static fields
.field private static final ALL_MESSAGES_COLUMNS:[Ljava/lang/String; = null

.field private static final AUTHORITY:Ljava/lang/String; = "allmessages"

.field private static final COMMON_COLUMNS:[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final GET_ALL_MESSAGE_FROM_STATE:Ljava/lang/String; = " (SELECT pdu._id AS _id, addr.address AS address, pdu.read AS read, pdu.thread_id AS thread_id,    pdu.date * 1000 AS date, 0 AS msg_type , pdu.sub AS sub ,pdu.sub_cs as sub_cs, -1 as sms_type,    pdu.m_type as mms_type, pri AS priority, htcthread_id, NULL AS vvm_id, NULL AS ptime,    NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, \'mms\' AS transport_type   FROM addr, pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)    ON threads_id = pdu.thread_id   WHERE addr.msg_id = pdu._id AND addr.address <> \'insert_address_token\' AND pdu.thread_id IS NOT NULL  UNION ALL   SELECT sms._id AS _id, sms.address AS address, sms.read AS read, sms.thread_id as thread_id,    sms.date AS date, 1 AS msg_type , sms.body as sub ,  NULL as sub_cs, sms.type as sms_type,    -1 as mms_type, priority, htcthread_id, NULL AS vvm_id, NULL AS ptime,    NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, \'sms\' AS transport_type   FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads) ON threads_id = sms.thread_id   WHERE sms.address <> \'insert_address_token\' AND sms.thread_id IS NOT NULL  UNION ALL   SELECT htcmsgs._id AS _id, address, read, thread_id, date, -1 AS msg_type, NULL AS sub, NULL AS sub_cs,    -1 AS sms_type, -1 AS mms_type, NULL AS priority, htcthread_id, vvm_id, ptime,    htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, \'vvm\' AS transport_type   FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)   ON htcthreads_id = htcmsgs.htcthread_id   WHERE htcmsgs.htcthread_id IS NOT NULL ) "

.field private static final HTC_MSG_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTC_MSG_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final HTC_THREADS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AllMessagesProvider"

.field private static final MMS_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MMS_CONVERSATION_CONSTRAINT:Ljava/lang/String; = "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

.field private static final MMS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final MMS_UNDELETED_CONSTRAINT:Ljava/lang/String; = "msg_box > 0"

.field private static final NO_DELETES_INSERTS_OR_UPDATES:Ljava/lang/String; = "AllMessagesProvider does not support deletes, inserts, or updates for this URI."

.field private static final SMS_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_CONVERSATION_CONSTRAINT:Ljava/lang/String; = "(type != 3 AND type > 0)"

.field private static final SMS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final SMS_UNDELETED_CONSTRAINT:Ljava/lang/String; = "type > 0"

.field private static final SUGGESTIONS:I = 0x13

.field public static final TABLE_ALL_MESSAGES:Ljava/lang/String; = "htcthreads LEFT JOIN threads_list  ON htcthreads.recipient_ids = threads_list.recipient_ids"

.field public static final TABLE_CONTACT_ALL_MESSAGES:Ljava/lang/String; = "contact_allprovider_threads"

.field public static final TABLE_HTCTHREADS:Ljava/lang/String; = "htcthreads"

.field public static final TABLE_PENDING_MSG:Ljava/lang/String; = "pending_msgs"

.field private static final TAG:Ljava/lang/String; = "AllMessagesProvider"

.field private static final THREADS_COLUMNS:[Ljava/lang/String; = null

.field private static final THREADS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final UNION_COLUMNS:[Ljava/lang/String; = null

.field private static final URI_ALL_MSG:I = 0x3e8

.field private static final URI_AVAILABLE_THREAD_ID:I = 0x14

.field private static final URI_CANONICAL_ADDRESS:I = 0x5

.field private static final URI_CANONICAL_ADDRESSES:I = 0xd

.field private static final URI_COMPLETE_CONVERSATIONS:I = 0x7

.field private static final URI_CONTACTBASE_CONVERSATIONS_ALL_MESSAGES:I = 0x1f

.field private static final URI_CONTACTBASE_CONVERSATIONS_MESSAGES:I = 0x20

.field private static final URI_CONTACTBASE_LATEST_MT_MSG_PER_THREAD:I = 0x22

.field private static final URI_CONVERSATIONS:I = 0x0

.field private static final URI_CONVERSATIONS_ALL_MESSAGES:I = 0x15

.field private static final URI_CONVERSATIONS_CONTACT_BASE:I = 0x17

.field private static final URI_CONVERSATIONS_MESSAGES:I = 0x1

.field private static final URI_CONVERSATIONS_RECIPIENTS:I = 0x2

.field private static final URI_CONVERSATIONS_SUBJECT:I = 0x9

.field private static final URI_DRAFT:I = 0xc

.field private static final URI_DRAFT_LIST:I = 0x11

.field private static final URI_FIRST_LOCKED_MESSAGE_ALL:I = 0xf

.field private static final URI_FIRST_LOCKED_MESSAGE_BY_THREAD_ID:I = 0x10

.field private static final URI_GET_ALL_PHONE_FOR_CONTACT_ID:I = 0x21

.field private static final URI_HTC_THREAD_ID:I = 0x16

.field private static final URI_LATEST_MT_MSG_PER_THREAD:I = 0x12

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MESSAGES_BY_PHONE:I = 0x3

.field private static final URI_NOTIFICATIONS:I = 0xa

.field private static final URI_OBSOLETE_THREADS:I = 0xb

.field private static final URI_PENDING_MSG:I = 0x6

.field private static final URI_SEARCH:I = 0xe

.field private static final URI_THREAD_ID:I = 0x4

.field private static final URI_UNDELIVERED_MSG:I = 0x8

.field private static final VND_ANDROID_DIR_ALL_MESSAGES:Ljava/lang/String; = "vnd.android-dir/allmessages"

.field public static final VVM_CLIENT_AUTHORITY:Ljava/lang/String; = "com.htc.vvm.provider.VoiceMailContentProvider"

.field public static final VVM_CLIENT_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 136
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "date_sent"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    .line 141
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ct_cls"

    aput-object v1, v0, v3

    const-string v1, "ct_l"

    aput-object v1, v0, v4

    const-string v1, "ct_t"

    aput-object v1, v0, v5

    const-string v1, "d_rpt"

    aput-object v1, v0, v6

    const-string v1, "exp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 154
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "body"

    aput-object v1, v0, v4

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "reply_path_present"

    aput-object v1, v0, v6

    const-string v1, "service_center"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "index_on_sim"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_evdo"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_cdma_format"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 166
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "msg_type"

    aput-object v1, v0, v3

    const-string v1, "htcthread_id"

    aput-object v1, v0, v4

    const-string v1, "vvm_id"

    aput-object v1, v0, v5

    const-string v1, "ptime"

    aput-object v1, v0, v6

    const-string v1, "is_private"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_ONLY_COLUMNS:[Ljava/lang/String;

    .line 178
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v5

    const-string v1, "message_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 194
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v5

    const-string v1, "recipient_address"

    aput-object v1, v0, v6

    const-string v1, "latest_date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "p_message_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "p_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "p_read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vvm_ptime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 215
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "message_count"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "read"

    aput-object v1, v0, v5

    const-string v1, "snippet"

    aput-object v1, v0, v6

    const-string v1, "snippet_cs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "htc_category"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "err_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/AllMessagesProvider;->THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->ALL_MESSAGES_COLUMNS:[Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    .line 249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_COLUMNS:Ljava/util/Set;

    .line 254
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 256
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 277
    const-string v0, "content://com.htc.vvm.provider.VoiceMailContentProvider/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->VVM_CLIENT_CONTENT_URI:Landroid/net/Uri;

    .line 280
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "conversations"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "complete-conversations"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "conversations/#/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "conversations/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "conversations/#/recipients"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "conversations/#/subject"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "conversations/obsolete"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "messages/byphone/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "htcthreadId"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "htcthreadId/*"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "available-threadID"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "canonical-address/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "canonical-addresses"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "search"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "pending"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "undelivered"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "notifications"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "draft"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "locked"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "locked/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "draftlist"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "missed_msg"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "suggestion/search_suggest_query"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "allmessages"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "contactbase/conversations/#"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "contactbase/conversations/#/#"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "contactbase/missed_msg"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "get-contactThreadPhone/#"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    sget-object v0, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "allmessages"

    const-string v2, "contactbase/conversations"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->initializeColumnSets()V

    .line 378
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->initializeAllMessagesColumnsSets()V

    .line 379
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/AllMessagesProvider;->map:Ljava/util/Map;

    .line 2332
    return-void
.end method

.method private buildAllMessagesConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 11
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "contactbase"
    .parameter "IsSortbyDate2"

    .prologue
    .line 2824
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullHtcThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2826
    .local v9, _projection:[Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 2828
    move-object v2, v9

    .line 2833
    .local v2, columns:[Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_0

    const-string p4, "latest_date DESC"

    .line 2835
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2836
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    if-eqz p5, :cond_3

    .line 2837
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_2

    .line 2838
    const-string v3, "contact_allprovider_threads_date2"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2844
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2845
    .local v10, qs:Ljava/lang/String;
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "build allmessages query> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    return-object v10

    .line 2830
    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v10           #qs:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/providers/telephony/AllMessagesProvider;->makeHtcThreadsProjectioin([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #columns:[Ljava/lang/String;
    goto :goto_0

    .line 2840
    .restart local v1       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_2
    const-string v3, "contact_allprovider_threads"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 2842
    :cond_3
    const-string v3, "htcthreads LEFT JOIN threads_list  ON htcthreads.recipient_ids = threads_list.recipient_ids"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 34
    .parameter "projection"
    .parameter "selection"
    .parameter "threadIdString"
    .parameter "htc_threadId"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1879
    .local v28, mmssmsSelection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "htcthread_id = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1882
    .local v20, htcmsgSelection:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1883
    .local v25, mmsProjection:[Ljava/lang/String;
    const-string v15, "htcmsgs._id"

    .line 1884
    .local v15, HTC_MSG_ID:Ljava/lang/String;
    const-string v2, "_id"

    const-string v6, "htcmsgs._id"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v6}, Lcom/android/providers/telephony/AllMessagesProvider;->createNewProjection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1886
    .local v18, htcmsgProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1887
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v30, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1888
    .local v30, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1890
    .local v19, htcmsgQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1891
    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1892
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1894
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1895
    const-string v2, "sms"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1896
    const-string v2, "htcmsgs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1898
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1899
    .local v29, smsColumns:[Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1900
    .local v24, mmsColumns:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1902
    .local v16, htcmsgColumns:[Ljava/lang/String;
    const/16 v2, 0x3e8

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1903
    .local v3, innerMmsProjection:[Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v22

    .line 1904
    .local v22, innerSmsProjection:[Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v23

    .line 1906
    .local v23, innerhtcmsgProjection:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1907
    .local v4, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "pdu._id"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1908
    const-string v2, "err_type"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1910
    new-instance v17, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_COLUMNS:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1911
    .local v17, htcmsgColumnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "htcmsgs._id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1913
    const-string v2, "msg_box != 3"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1916
    .local v26, mmsSelection:Ljava/lang/String;
    const-string v2, "transport_type"

    const/4 v5, 0x0

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, v26

    invoke-static {v0, v7}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1927
    .local v27, mmsSubQuery:Ljava/lang/String;
    const-string v6, "transport_type"

    sget-object v8, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v9, 0x0

    const-string v10, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, v30

    move-object/from16 v7, v22

    move-object/from16 v12, p4

    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1938
    .local v31, smsSubQuery:Ljava/lang/String;
    const-string v6, "transport_type"

    const/4 v9, 0x0

    const-string v10, "htcmsgs"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, v19

    move-object/from16 v7, v23

    move-object/from16 v8, v17

    move-object/from16 v11, v20

    move-object/from16 v12, p4

    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1949
    .local v21, htcmsgSubQuery:Ljava/lang/String;
    new-instance v33, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v33 .. v33}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1951
    .local v33, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1953
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v31, v2, v6

    const/4 v6, 0x1

    aput-object v27, v2, v6

    const/4 v6, 0x2

    aput-object v21, v2, v6

    invoke-static/range {p5 .. p5}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1957
    .local v32, unionQuery:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1959
    .local v5, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1961
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v29

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 41
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "IsSortbyDate2"

    .prologue
    .line 1967
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1968
    .local v33, mmsProjection:[Ljava/lang/String;
    const-string v16, "htcmsgs._id"

    .line 1969
    .local v16, HTC_MSG_ID:Ljava/lang/String;
    const-string v3, "_id"

    const-string v7, "htcmsgs._id"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v7}, Lcom/android/providers/telephony/AllMessagesProvider;->createNewProjection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1971
    .local v24, htcmsgProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1972
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v37, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v37 .. v37}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1973
    .local v37, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v25, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v25 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1975
    .local v25, htcmsgQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1976
    const/4 v3, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1977
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1979
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1980
    const-string v3, "sms"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1981
    const-string v3, "htcmsgs"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1983
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 1984
    .local v36, smsColumns:[Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1985
    .local v32, mmsColumns:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 1987
    .local v22, htcmsgColumns:[Ljava/lang/String;
    const/16 v3, 0x3e8

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v28

    .line 1988
    .local v28, innerMmsProjectionTemp:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1989
    .local v4, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    .line 1990
    const/16 v3, 0x3e8

    move-object/from16 v0, v28

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDate2([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1994
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 1995
    .local v29, innerSmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v31

    .line 1996
    .local v31, innerhtcmsgProjectionTemp:[Ljava/lang/String;
    const/16 v30, 0x0

    .line 1997
    .local v30, innerhtcmsgProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    .line 1998
    invoke-static/range {v31 .. v31}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDate2InVVM([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 2002
    :goto_1
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2003
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2004
    const-string v3, "err_type"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2006
    const-string v3, "phone_type"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2007
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    .line 2008
    const-string v3, "date2 * 1000 AS date2"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2011
    :cond_0
    if-eqz v4, :cond_2

    .line 2012
    const/16 v17, -0x1

    .line 2013
    .local v17, addrIdx:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_2
    array-length v3, v4

    move/from16 v0, v27

    if-ge v0, v3, :cond_1

    .line 2014
    aget-object v3, v4, v27

    const-string v7, "address"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2015
    move/from16 v17, v27

    .line 2019
    :cond_1
    const/4 v3, -0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_2

    .line 2020
    const-string v18, "(SELECT address FROM addr WHERE msg_id = pdu._id AND (type = 137 OR type = 151) AND addr.address != \'insert-address-token\') AS address"

    .line 2023
    .local v18, addrSQL:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2024
    aput-object v18, v4, v17

    .line 2030
    .end local v17           #addrIdx:I
    .end local v18           #addrSQL:Ljava/lang/String;
    .end local v27           #i:I
    :cond_2
    if-eqz v4, :cond_4

    .line 2031
    const/16 v20, -0x1

    .line 2032
    .local v20, gidIdx:I
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_3
    array-length v3, v4

    move/from16 v0, v27

    if-ge v0, v3, :cond_3

    .line 2033
    aget-object v3, v4, v27

    const-string v7, "gid"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2034
    move/from16 v20, v27

    .line 2038
    :cond_3
    const/4 v3, -0x1

    move/from16 v0, v20

    if-le v0, v3, :cond_4

    .line 2039
    const-string v21, "random() AS gid"

    .line 2040
    .local v21, gidSQL:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2041
    aput-object v21, v4, v20

    .line 2046
    .end local v20           #gidIdx:I
    .end local v21           #gidSQL:Ljava/lang/String;
    .end local v27           #i:I
    :cond_4
    new-instance v23, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_COLUMNS:Ljava/util/Set;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2047
    .local v23, htcmsgColumnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "htcmsgs._id"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2048
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 2049
    const-string v3, "date as date2"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2051
    :cond_5
    if-eqz v30, :cond_7

    .line 2052
    const/16 v20, -0x1

    .line 2053
    .restart local v20       #gidIdx:I
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_4
    move-object/from16 v0, v30

    array-length v3, v0

    move/from16 v0, v27

    if-ge v0, v3, :cond_6

    .line 2054
    aget-object v3, v30, v27

    const-string v7, "gid"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2055
    move/from16 v20, v27

    .line 2059
    :cond_6
    const/4 v3, -0x1

    move/from16 v0, v20

    if-le v0, v3, :cond_7

    .line 2060
    const-string v21, "random() AS gid"

    .line 2061
    .restart local v21       #gidSQL:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2062
    aput-object v21, v30, v20

    .line 2067
    .end local v20           #gidIdx:I
    .end local v21           #gidSQL:Ljava/lang/String;
    .end local v27           #i:I
    :cond_7
    const-string v3, "msg_box != 3"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2071
    .local v34, mmsSelection:Ljava/lang/String;
    new-instance v19, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2072
    .local v19, columnsPresentInSMSTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "gid"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2075
    const-string v3, "transport_type"

    const/4 v6, 0x0

    const-string v7, "mms"

    const-string v8, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, v34

    invoke-static {v0, v8}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2086
    .local v35, mmsSubQuery:Ljava/lang/String;
    const-string v7, "transport_type"

    const/4 v10, 0x0

    const-string v11, "sms"

    const-string v3, "(type != 3 AND type > 0)"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, v37

    move-object/from16 v8, v29

    move-object/from16 v9, v19

    move-object/from16 v13, p2

    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2097
    .local v38, smsSubQuery:Ljava/lang/String;
    const-string v7, "transport_type"

    const/4 v10, 0x0

    const-string v11, "htcmsgs"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, v25

    move-object/from16 v8, v30

    move-object/from16 v9, v23

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2108
    .local v26, htcmsgSubQuery:Ljava/lang/String;
    new-instance v40, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v40 .. v40}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2110
    .local v40, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2112
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v38, v3, v7

    const/4 v7, 0x1

    aput-object v35, v3, v7

    const/4 v7, 0x2

    aput-object v26, v3, v7

    invoke-static/range {p3 .. p4}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullSortOrder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v7, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2116
    .local v39, unionQuery:Ljava/lang/String;
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2118
    .local v6, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2120
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, v36

    move-object/from16 v12, p3

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1992
    .end local v5           #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v19           #columnsPresentInSMSTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23           #htcmsgColumnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #htcmsgSubQuery:Ljava/lang/String;
    .end local v29           #innerSmsProjection:[Ljava/lang/String;
    .end local v30           #innerhtcmsgProjection:[Ljava/lang/String;
    .end local v31           #innerhtcmsgProjectionTemp:[Ljava/lang/String;
    .end local v34           #mmsSelection:Ljava/lang/String;
    .end local v35           #mmsSubQuery:Ljava/lang/String;
    .end local v38           #smsSubQuery:Ljava/lang/String;
    .end local v39           #unionQuery:Ljava/lang/String;
    .end local v40           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_8
    move-object/from16 v4, v28

    goto/16 :goto_0

    .line 2000
    .restart local v29       #innerSmsProjection:[Ljava/lang/String;
    .restart local v30       #innerhtcmsgProjection:[Ljava/lang/String;
    .restart local v31       #innerhtcmsgProjectionTemp:[Ljava/lang/String;
    :cond_9
    move-object/from16 v30, v31

    goto/16 :goto_1

    .line 2013
    .restart local v5       #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17       #addrIdx:I
    .restart local v27       #i:I
    :cond_a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 2032
    .end local v17           #addrIdx:I
    .restart local v20       #gidIdx:I
    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 2053
    .restart local v23       #htcmsgColumnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_4
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 1083
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    .end local p1
    :goto_0
    return-object p1

    .line 1085
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1086
    goto :goto_0

    .line 1088
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "old"

    .prologue
    .line 1744
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1745
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1746
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1747
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 1745
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1749
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1752
    :cond_1
    return-object v1
.end method

.method private static createNewProjection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "old"
    .parameter "oldItem"
    .parameter "newItem"

    .prologue
    .line 1763
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1764
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1765
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1766
    aput-object p2, v1, v0

    .line 1764
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1768
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1771
    :cond_1
    return-object v1
.end method

.method public static deletOneVvmMessage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14
    .parameter "context"
    .parameter "db"
    .parameter "vvm_id"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2860
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletOneVvmMessage: vvm_id> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const/4 v13, 0x0

    .line 2862
    .local v13, rows:I
    const-wide/16 v11, 0x0

    .line 2864
    .local v11, htcThread_id:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vvm_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2867
    const-string v3, "htcmsgs"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "htcthread_id"

    aput-object v5, v4, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2871
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 2872
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2873
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2875
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2879
    :cond_1
    const-string v2, "htcmsgs"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 2880
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-lez v2, :cond_2

    .line 2882
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->updateHtcThreadIdList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2885
    :cond_2
    return v13
.end method

.method private deleteContactbaseHtcConversation(JLjava/lang/String;[Ljava/lang/String;ZZ)I
    .locals 13
    .parameter "contactId"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "isBackground"
    .parameter "isTrashcan"

    .prologue
    .line 2373
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/AllMessagesProvider;->getContactmember(J)Ljava/util/ArrayList;

    move-result-object v10

    .line 2374
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;>;"
    const/4 v12, 0x0

    .line 2377
    .local v12, row:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;

    .line 2378
    .local v11, member:Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;
    iget-wide v1, v11, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;->threadId:J

    iget-wide v3, v11, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;->htcThreadId:J

    move-object v0, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcConversation(JJLjava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_0

    .line 2381
    .end local v11           #member:Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2383
    return v12
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2551
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 2553
    .local v16, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2560
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2563
    .local v4, finalSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2564
    .local v9, affectedIDs:[J
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2565
    const-string v2, "sms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2566
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 2567
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2568
    .local v15, size:I
    if-lez v15, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2569
    new-array v9, v15, [J

    .line 2570
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 2571
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v9, v13

    .line 2572
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2570
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2554
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #finalSelection:Ljava/lang/String;
    .end local v9           #affectedIDs:[J
    .end local v10           #c:Landroid/database/Cursor;
    .end local v13           #i:I
    .end local v15           #size:I
    :catch_0
    move-exception v12

    .line 2555
    .local v12, e:Ljava/lang/NumberFormatException;
    const-string v2, "AllMessagesProvider"

    const-string v3, "Thread ID must be a Long."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2556
    const/4 v11, 0x0

    .line 2595
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    return v11

    .line 2575
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #finalSelection:Ljava/lang/String;
    .restart local v9       #affectedIDs:[J
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #size:I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2580
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #size:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v2, v1, v4, v0, v3}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    const-string v3, "sms"

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int v11, v2, v3

    .line 2584
    .local v11, count:I
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2585
    if-eqz v9, :cond_0

    .line 2586
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete SMS IDs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 2588
    .local v14, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.deleteSMS"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2589
    const-string v2, "affectedIDs"

    invoke-virtual {v14, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2590
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private deleteHtcConversation(JJLjava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "threadId"
    .parameter "htcThreadId"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v7, 0x0

    .line 2434
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcConversation(JJLjava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private deleteHtcConversation(JJLjava/lang/String;[Ljava/lang/String;ZZ)I
    .locals 19
    .parameter "threadId"
    .parameter "htcThreadId"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "isBG"
    .parameter "isTrashcan"

    .prologue
    .line 2443
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHtcConversation: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2449
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p5, :cond_1

    .line 2450
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_0

    .line 2451
    const-string v3, "htcthreads"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2453
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 2454
    const-string v3, "threads"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2458
    :cond_1
    const/16 v16, 0x0

    .line 2459
    .local v16, rows:I
    const/4 v10, 0x0

    .line 2460
    .local v10, affectedIDs:[J
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_2

    .line 2461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcthread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2464
    .local v13, htcMsgSelection:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v13, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteVvmClientMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2470
    :goto_0
    const-string v3, "htcmsgs"

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int v16, v16, v3

    .line 2473
    .end local v13           #htcMsgSelection:Ljava/lang/String;
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_6

    .line 2474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2478
    .local v5, finalSelection:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2479
    const-string v3, "sms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2480
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 2481
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 2482
    .local v17, size:I
    if-lez v17, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2483
    move/from16 v0, v17

    new-array v10, v0, [J

    .line 2484
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 2485
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v10, v14

    .line 2486
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 2484
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2465
    .end local v5           #finalSelection:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v17           #size:I
    .restart local v13       #htcMsgSelection:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2466
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete vvm message error >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2489
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #htcMsgSelection:Ljava/lang/String;
    .restart local v5       #finalSelection:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v17       #size:I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2495
    .end local v11           #c:Landroid/database/Cursor;
    .end local v17           #size:I
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p7

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_b

    .line 2496
    :cond_5
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2497
    .local v18, values:Landroid/content/ContentValues;
    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_a

    .line 2499
    const-string v3, "type"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-static {v3, v2, v5, v0}, Lcom/android/providers/telephony/MmsProvider;->deleteToTrashcanConversation(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "sms"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int v16, v16, v3

    .line 2517
    .end local v5           #finalSelection:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_6
    :goto_2
    if-eqz p5, :cond_8

    .line 2518
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_7

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2519
    :cond_7
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_8

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->updateHtcThreadIdList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2524
    :cond_8
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2525
    if-eqz v10, :cond_9

    .line 2526
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete SMS IDs: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 2528
    .local v15, intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.deleteSMS"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2529
    const-string v3, "affectedIDs"

    invoke-virtual {v15, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2530
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2544
    .end local v15           #intent:Landroid/content/Intent;
    :cond_9
    return v16

    .line 2505
    .restart local v5       #finalSelection:Ljava/lang/String;
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_a
    const-string v3, "thread_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v3, v2, v5, v0, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    const-string v4, "sms"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int v16, v16, v3

    goto :goto_2

    .line 2511
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-static {v3, v2, v5, v0, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    const-string v4, "sms"

    move-object/from16 v0, p6

    invoke-virtual {v2, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int v16, v16, v3

    goto/16 :goto_2
.end method

.method private deleteHtcConversation(JLjava/lang/String;[Ljava/lang/String;ZZ)I
    .locals 12
    .parameter "htcThreadId"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "inBackGround"
    .parameter "inTrashcan"

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 2315
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, 0x0

    .line 2316
    .local v1, thread_id:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT thread_id FROM htcthreads WHERE _id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2317
    .local v11, query:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2319
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2320
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2323
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2325
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    const-wide/16 v1, 0x0

    :cond_2
    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 2327
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcConversation(JJLjava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private deleteHtcConversations(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2252
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "htcthreads"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "thread_id"

    aput-object v6, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2255
    .local v11, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 2256
    .local v15, mmsWhere:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 2257
    .local v14, htcWhere:Ljava/lang/StringBuilder;
    if-eqz v11, :cond_5

    .line 2258
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2259
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2260
    .local v12, htcThread_id:J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 2261
    .local v18, thread_id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_1

    .line 2262
    if-nez v14, :cond_2

    .line 2263
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "htcthread_id IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2268
    :cond_1
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_0

    .line 2269
    if-nez v15, :cond_3

    .line 2270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "thread_id IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    goto :goto_0

    .line 2265
    :cond_2
    const-string v3, ", "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2272
    :cond_3
    const-string v3, ", "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2276
    .end local v12           #htcThread_id:J
    .end local v18           #thread_id:J
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2279
    :cond_5
    const/16 v17, 0x0

    .line 2280
    .local v17, rows:I
    if-eqz v15, :cond_6

    .line 2281
    const-string v3, ")"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2283
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locked = 0"

    invoke-static {v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2284
    .local v16, mmssmsWhere:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    const-string v4, "sms"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int v17, v17, v3

    .line 2288
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2297
    .end local v16           #mmssmsWhere:Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    .line 2298
    const-string v3, ")"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2300
    .local v10, _where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v10, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteVvmClientMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2301
    const-string v3, "htcmsgs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int v17, v17, v3

    .line 2302
    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->updateAllHtcThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2305
    .end local v10           #_where:Ljava/lang/String;
    :cond_7
    return v17
.end method

.method public static deleteHtcMsgs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2898
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteVvmClientMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2899
    .local v0, _count:I
    if-gtz v0, :cond_1

    .line 2900
    const/4 v1, 0x0

    .line 2908
    :cond_0
    :goto_0
    return v1

    .line 2904
    :cond_1
    const-string v2, "htcmsgs"

    invoke-virtual {p1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2905
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 2906
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->updateAllHtcThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteOneMsg(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "context"
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2912
    const-wide/16 v12, 0x0

    .line 2913
    .local v12, htcThread_id:J
    const/16 v17, 0x0

    .line 2914
    .local v17, vvm_id:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2917
    .local v14, msg_type:Ljava/lang/String;
    const-string v4, "htcmsgs"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "htcthread_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "vvm_id"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "msg_type"

    aput-object v6, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2921
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 2922
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2923
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2924
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2925
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2927
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2931
    :cond_1
    if-eqz v17, :cond_3

    const-string v3, "vvm"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2932
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteOneVvmClientMessage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 2933
    .local v16, vvm_count:I
    if-gtz v16, :cond_2

    .line 2934
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to delete vvm, vvm_id> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    .end local v16           #vvm_count:I
    :cond_2
    :goto_0
    return v16

    .line 2943
    :cond_3
    const-string v3, "htcmsgs"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2944
    .local v15, rows:I
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_4

    .line 2946
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->updateHtcThreadIdList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_4
    move/from16 v16, v15

    .line 2949
    goto :goto_0
.end method

.method public static deleteOneMsgById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 19
    .parameter "context"
    .parameter "db"
    .parameter "message_id"
    .parameter "where"

    .prologue
    .line 2965
    const-wide/16 v13, 0x0

    .line 2966
    .local v13, htcThread_id:J
    const/16 v18, 0x0

    .line 2967
    .local v18, vvm_id:Ljava/lang/String;
    const/4 v15, 0x0

    .line 2970
    .local v15, msg_type:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2971
    const-string v4, "htcmsgs"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "htcthread_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "vvm_id"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "msg_type"

    aput-object v6, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2976
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 2977
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2978
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2979
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2980
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2982
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2986
    :cond_1
    if-eqz v18, :cond_3

    const-string v3, "vvm"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2987
    const/16 v17, 0x0

    .line 2989
    .local v17, vvm_count:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteOneVvmClientMessage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 2995
    :goto_0
    if-gtz v17, :cond_2

    .line 2996
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to delete vvm, vvm_id> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    .end local v17           #vvm_count:I
    :cond_2
    :goto_1
    return v17

    .line 2990
    .restart local v17       #vvm_count:I
    :catch_0
    move-exception v12

    .line 2991
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOneMsgById_deleteOneVvmClientMessage e > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3004
    .end local v12           #e:Ljava/lang/Exception;
    .end local v17           #vvm_count:I
    :cond_3
    const-string v3, "htcmsgs"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 3005
    .local v16, rows:I
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_4

    .line 3008
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->updateHtcThreadIdList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_4
    move/from16 v17, v16

    .line 3010
    goto :goto_1
.end method

.method public static deleteOneVvmClientMessage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "vvm_id"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2954
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 2961
    :goto_0
    return v1

    .line 2956
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2957
    .local v0, values:Landroid/content/ContentValues;
    const-string v3, "delete_flag"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2958
    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->VVM_CLIENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2959
    .local v2, vvm_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2960
    .local v1, vvm_count:I
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete vvm in vvm client. count> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static deleteVvmClientMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "context"
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2390
    const/4 v13, 0x0

    .line 2392
    .local v13, vvm_count:I
    const-string v1, "htcmsgs"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "vvm_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "msg_type"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2396
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2397
    .local v10, ids:Ljava/lang/StringBuilder;
    if-eqz v8, :cond_4

    .line 2398
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2399
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2400
    .local v14, vvm_id:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2401
    .local v11, msg_type:Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string v0, "vvm"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2402
    if-eqz v10, :cond_1

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    :cond_1
    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #ids:Ljava/lang/StringBuilder;
    const-string v0, "("

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2404
    .restart local v10       #ids:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2407
    .end local v11           #msg_type:Ljava/lang/String;
    .end local v14           #vvm_id:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2408
    if-eqz v10, :cond_4

    .line 2409
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2410
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "delete_flag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2411
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " _id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2413
    .local v15, vvm_where:Ljava/lang/String;
    const-string v0, "AllMessagesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update vvm client where: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/AllMessagesProvider;->VVM_CLIENT_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v15, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 2420
    :goto_1
    if-gtz v13, :cond_4

    .line 2421
    const-string v0, "AllMessagesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete vvm in vvm client.... count> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v15           #vvm_where:Ljava/lang/String;
    :cond_4
    return v13

    .line 2416
    .restart local v12       #values:Landroid/content/ContentValues;
    .restart local v15       #vvm_where:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2417
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "AllMessagesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVvmClientMessages_updateVVM  e >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAddressIds(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 792
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    .local v0, address:Ljava/lang/String;
    const-string v5, "insert-address-token"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 794
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/AllMessagesProvider;->getSingleAddressId(Ljava/lang/String;)J

    move-result-wide v2

    .line 795
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 796
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    :cond_1
    const-string v5, "AllMessagesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAddressIds: address ID not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #id:J
    :cond_2
    return-object v4
.end method

.method private getAllMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/16 v7, 0x2c

    .line 1313
    const-string v4, "SELECT "

    .line 1314
    .local v4, query:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    .local v3, projectionBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 1316
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 1317
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1321
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1325
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1329
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (SELECT pdu._id AS _id, addr.address AS address, pdu.read AS read, pdu.thread_id AS thread_id,    pdu.date * 1000 AS date, 0 AS msg_type , pdu.sub AS sub ,pdu.sub_cs as sub_cs, -1 as sms_type,    pdu.m_type as mms_type, pri AS priority, htcthread_id, NULL AS vvm_id, NULL AS ptime,    NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, \'mms\' AS transport_type   FROM addr, pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)    ON threads_id = pdu.thread_id   WHERE addr.msg_id = pdu._id AND addr.address <> \'insert_address_token\' AND pdu.thread_id IS NOT NULL  UNION ALL   SELECT sms._id AS _id, sms.address AS address, sms.read AS read, sms.thread_id as thread_id,    sms.date AS date, 1 AS msg_type , sms.body as sub ,  NULL as sub_cs, sms.type as sms_type,    -1 as mms_type, priority, htcthread_id, NULL AS vvm_id, NULL AS ptime,    NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, \'sms\' AS transport_type   FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads) ON threads_id = sms.thread_id   WHERE sms.address <> \'insert_address_token\' AND sms.thread_id IS NOT NULL  UNION ALL   SELECT htcmsgs._id AS _id, address, read, thread_id, date, -1 AS msg_type, NULL AS sub, NULL AS sub_cs,    -1 AS sms_type, -1 AS mms_type, NULL AS priority, htcthread_id, vvm_id, ptime,    htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, \'vvm\' AS transport_type   FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)   ON htcthreads_id = htcmsgs.htcthread_id   WHERE htcmsgs.htcthread_id IS NOT NULL ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1330
    if-eqz p2, :cond_2

    .line 1331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1333
    :cond_2
    if-eqz p4, :cond_3

    .line 1334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1336
    :cond_3
    iget-object v6, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 1327
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "* FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private declared-synchronized getAvailableThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 965
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/AllMessagesProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/telephony/AllMessagesProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v0

    .line 966
    .local v0, Ids:[J
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/AllMessagesProvider;->getCommaSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v4

    .line 969
    .local v4, recipientIds:Ljava/lang/String;
    const-string v1, "SELECT _id FROM threads WHERE recipient_ids IN (%s)"

    .line 971
    .local v1, THREAD_QUERY:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 972
    const-string v5, "AllMessagesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "THREAD_QUERY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v5, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 974
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 975
    .local v2, cursor:Landroid/database/Cursor;
    monitor-exit p0

    return-object v2

    .line 965
    .end local v0           #Ids:[J
    .end local v1           #THREAD_QUERY:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #recipientIds:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getCommaSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 865
    array-length v2, p1

    .line 866
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 869
    if-eqz v1, :cond_0

    .line 870
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1476
    const/4 v0, 0x0

    .line 1479
    .local v0, unionQuery:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getContactbaseMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1279
    const-string v0, "SELECT transport_type, _id, thread_id, address, body, normalized_date,     sub, sub_cs, read, m_type,     COUNT() - SUM(read) AS unread_count, priority, locked,     htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type   FROM incoming_msg_contactbase_vvm WHERE transport_type=\'vvm\' OR thread_id>0 GROUP BY contact_id ORDER BY normalized_date DESC;"

    .line 1285
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getContactmember(J)Ljava/util/ArrayList;
    .locals 13
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2338
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2340
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;>;"
    const-wide/16 v8, 0x0

    .local v8, threadId:J
    const-wide/16 v3, 0x0

    .line 2341
    .local v3, htcThreadId:J
    iget-object v10, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2342
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT thread_id, htcthread_id FROM contacts WHERE contact_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2343
    .local v7, query:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2345
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 2346
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2347
    new-instance v6, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;-><init>(Lcom/android/providers/telephony/AllMessagesProvider$1;)V

    .line 2348
    .local v6, member:Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;->threadId:J

    .line 2349
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;->htcThreadId:J

    .line 2350
    const-wide/16 v8, 0x0

    .line 2351
    const-wide/16 v3, 0x0

    .line 2353
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2354
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2355
    iput-wide v8, v6, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;->threadId:J

    .line 2356
    iput-wide v3, v6, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;->htcThreadId:J

    .line 2357
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_0

    .line 2358
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2359
    :catch_0
    move-exception v2

    .line 2360
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "AllMessagesProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getContactmember error  e>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2363
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #member:Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2367
    :cond_3
    return-object v5
.end method

.method private getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 1720
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1727
    .local v9, extraSelection:Ljava/lang/String;
    invoke-static {p3, v9}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1728
    .local v3, finalSelection:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1729
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {p2}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1731
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1732
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1733
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .end local v0           #queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #finalSelection:Ljava/lang/String;
    .end local v9           #extraSelection:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1721
    :catch_0
    move-exception v8

    .line 1722
    .local v8, exception:Ljava/lang/NumberFormatException;
    const-string v1, "AllMessagesProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 12
    .parameter "threadIdString"
    .parameter "htc_threadId"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "IsSortbyDate2"

    .prologue
    .line 1509
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1510
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1511
    .local v5, id:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gez v9, :cond_0

    const-string p2, "0"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(thread_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "htcthread_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1520
    .local v8, unionThreadId:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v0, v8}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1521
    .local v4, finalSelection:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-static {p3, v4, v0, v1, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1523
    .local v7, unionQuery:Ljava/lang/String;
    const-string v9, "AllMessagesProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getConversationMessages: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v9, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .end local v4           #finalSelection:Ljava/lang/String;
    .end local v5           #id:J
    .end local v7           #unionQuery:Ljava/lang/String;
    .end local v8           #unionThreadId:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1512
    :catch_0
    move-exception v3

    .line 1513
    .local v3, exception:Ljava/lang/NumberFormatException;
    const-string v9, "AllMessagesProvider"

    const-string v10, "Thread ID must be a Long."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZI)Landroid/database/Cursor;
    .locals 23
    .parameter "htcThreadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "isContactBased"
    .parameter "groupByDate"
    .parameter "groupByGID"
    .parameter "IsSortbyDate2"

    .prologue
    .line 1592
    const/16 v17, 0x0

    .line 1593
    .local v17, finalSelection:Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 1595
    .local v14, contact_id:J
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 1596
    const-wide/16 v5, 0x0

    cmp-long v5, v14, v5

    if-gtz v5, :cond_0

    const/4 v5, 0x0

    .line 1650
    :goto_0
    return-object v5

    .line 1597
    :catch_0
    move-exception v16

    .line 1598
    .local v16, exception:Ljava/lang/NumberFormatException;
    const-string v5, "AllMessagesProvider"

    const-string v6, "ID must be a Long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/4 v5, 0x0

    goto :goto_0

    .line 1601
    .end local v16           #exception:Ljava/lang/NumberFormatException;
    :cond_0
    if-nez p6, :cond_4

    .line 1603
    const-wide/16 v19, 0x0

    .line 1604
    .local v19, thread_id:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1605
    .local v8, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "htcthreads"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "thread_id"

    aput-object v10, v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1607
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 1608
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1609
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1611
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1614
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "htcthread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1617
    .local v22, unionThreadId:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1635
    .end local v8           #where:Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v19           #thread_id:J
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 1637
    .local v21, unionQuery:Ljava/lang/String;
    if-eqz p7, :cond_6

    .line 1638
    const/4 v5, 0x1

    move/from16 v0, p9

    if-ne v0, v5, :cond_5

    .line 1639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GROUP BY date2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1649
    :cond_3
    :goto_2
    const-string v5, "AllMessagesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConversationMessages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 1620
    .end local v21           #unionQuery:Ljava/lang/String;
    .end local v22           #unionThreadId:Ljava/lang/String;
    :cond_4
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    .local v18, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v15, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->getHTCthreadIdsFromContactId(JLjava/util/ArrayList;)Z

    .line 1625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "((thread_id in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND thread_id > 0) OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "htcthread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1630
    .restart local v22       #unionThreadId:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 1641
    .end local v18           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21       #unionQuery:Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GROUP BY normalized_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 1643
    :cond_6
    if-eqz p8, :cond_3

    .line 1644
    const/4 v5, 0x1

    move/from16 v0, p9

    if-ne v0, v5, :cond_7

    .line 1645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GROUP BY gid ORDER BY date2 ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 1647
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GROUP BY gid ORDER BY normalized_date ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1365
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1366
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1368
    .local v18, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1369
    const-string v2, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1371
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1372
    .local v14, columns:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1374
    .local v3, innerMmsProjection:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 1376
    .local v15, innerSmsProjection:[Ljava/lang/String;
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "thread_id"

    const-string v10, "date = MAX(date)"

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1381
    .local v16, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "date = MAX(date)"

    move-object/from16 v4, v18

    move-object v6, v15

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1386
    .local v19, smsSubQuery:Ljava/lang/String;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1388
    .local v21, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1390
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v16, v2, v5

    const/4 v5, 0x1

    aput-object v19, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1393
    .local v20, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1395
    .local v4, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1397
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "tid"

    const-string v9, "normalized_date = MAX(normalized_date)"

    const/4 v11, 0x0

    move-object v5, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1401
    .local v17, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getDraftList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 38
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1199
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/AllMessagesProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1200
    .local v30, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1201
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v34, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v34 .. v34}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1203
    .local v34, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1204
    const-string v3, "sms"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1206
    const-string v3, "msg_box = 3"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1209
    .local v8, finalMmsSelection:Ljava/lang/String;
    const-string v3, "type = 3"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1212
    .local v15, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1213
    .local v33, smsColumns:[Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, mmsColumns:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1217
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1220
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x39

    if-eq v3, v6, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x60

    if-ne v3, v6, :cond_1

    .line 1223
    :cond_0
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1227
    .local v31, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v34

    move-object/from16 v11, v33

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1246
    .local v35, smsSubQuery:Ljava/lang/String;
    :goto_0
    new-instance v37, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v37 .. v37}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1248
    .local v37, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1250
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v35, v3, v6

    const/4 v6, 0x1

    aput-object v31, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1254
    .local v36, unionQuery:Ljava/lang/String;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1256
    .local v19, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1258
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v33

    move-object/from16 v25, p4

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1261
    .local v32, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 1233
    .end local v19           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v31           #mmsSubQuery:Ljava/lang/String;
    .end local v32           #outerQuery:Ljava/lang/String;
    .end local v35           #smsSubQuery:Ljava/lang/String;
    .end local v36           #unionQuery:Ljava/lang/String;
    .end local v37           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 1235
    .local v18, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 1237
    .local v29, innerSmsProjection:[Ljava/lang/String;
    const-string v17, "transport_type"

    const/16 v20, 0x1

    const-string v21, "mms"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v5

    move-object/from16 v22, v8

    move-object/from16 v23, p3

    invoke-virtual/range {v16 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1241
    .restart local v31       #mmsSubQuery:Ljava/lang/String;
    const-string v20, "transport_type"

    sget-object v22, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/16 v23, 0x1

    const-string v24, "sms"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, v34

    move-object/from16 v21, v29

    move-object/from16 v25, v15

    move-object/from16 v26, p3

    invoke-virtual/range {v19 .. v28}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .restart local v35       #smsSubQuery:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1161
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "thread_id"

    aput-object v5, v3, v2

    .line 1162
    .local v3, innerProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1163
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1165
    .local v16, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1166
    const-string v2, "sms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1168
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "msg_box=3"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1173
    .local v14, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "type=3"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v16

    move-object v6, v3

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1178
    .local v17, smsSubQuery:Ljava/lang/String;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1180
    .local v19, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1182
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v2, v5

    const/4 v5, 0x1

    aput-object v17, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1185
    .local v18, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1187
    .local v4, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1189
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1192
    .local v15, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v15, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1429
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1430
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v17, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1432
    .local v17, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1433
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1435
    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1437
    .local v3, innerMmsProjection:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 1439
    .local v14, innerSmsProjection:[Ljava/lang/String;
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "thread_id"

    const-string v10, "locked=1"

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1444
    .local v15, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "locked=1"

    move-object/from16 v4, v17

    move-object v6, v14

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1449
    .local v18, smsSubQuery:Ljava/lang/String;
    new-instance v20, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1451
    .local v20, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1453
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v15, v2, v5

    const/4 v5, 0x1

    aput-object v18, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1456
    .local v19, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1458
    .local v4, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1460
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "tid"

    const/4 v9, 0x0

    const-string v11, "1"

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1465
    .local v16, outerQuery:Ljava/lang/String;
    const-string v2, "AllMessagesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFirstLockedMessage query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getHTCthreadIdsFromContactId(JLjava/util/ArrayList;)Z
    .locals 16
    .parameter "contactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1529
    .local p3, IdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1531
    .local v5, selection:Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/providers/telephony/ContactMessageStore;->isFakedContactId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    sget-wide v2, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    sub-long v14, p1, v2

    .line 1533
    .local v14, tid:J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_0

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htcthread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1537
    .end local v14           #tid:J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v12

    .line 1538
    .local v12, store:Lcom/android/providers/telephony/ContactMessageStore;
    if-nez v12, :cond_1

    .line 1539
    const/4 v2, 0x0

    .line 1578
    :goto_0
    return v2

    .line 1541
    :cond_1
    const-string v13, ""

    .local v13, threadId:Ljava/lang/String;
    const-string v11, ""

    .line 1543
    .local v11, htcthreadId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "thread_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "htcthread_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1547
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 1548
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1549
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1552
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1553
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1554
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1559
    :cond_3
    :goto_1
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1560
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 1561
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1568
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1570
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1574
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    const/4 v2, 0x1

    goto :goto_0

    .line 1556
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 1563
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2
.end method

.method private getHtcThreadId(I)Landroid/database/Cursor;
    .locals 4
    .parameter "thread_id"

    .prologue
    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT DISTINCT _id FROM htcthreads WHERE thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, queryString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 986
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getHtcThreadId(Ljava/util/List;Z)Landroid/database/Cursor;
    .locals 12
    .parameter
    .parameter "create"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHtcThreadId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/AllMessagesProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/providers/telephony/AllMessagesProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v1

    .line 1000
    .local v1, Ids:[J
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v7

    .line 1003
    .local v7, recipientIds:Ljava/lang/String;
    array-length v8, v1

    new-array v0, v8, [Ljava/lang/String;

    .line 1004
    .local v0, Address:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v1

    if-ge v5, v8, :cond_0

    .line 1005
    iget-object v8, p0, Lcom/android/providers/telephony/AllMessagesProvider;->map:Ljava/util/Map;

    aget-wide v9, v1, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v0, v5

    .line 1006
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ids: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v1, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/AllMessagesProvider;->getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1010
    .local v6, recipientAddress:Ljava/lang/String;
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recipientIds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recipientAddress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SELECT "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "htcthreads"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "recipient_ids"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, THREAD_QUERY:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1020
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v4, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1022
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_1

    const-string v8, "AllMessagesProvider"

    const-string v9, "cursor is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz p2, :cond_2

    .line 1024
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1025
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/providers/telephony/AllMessagesProvider;->insertHtcThread(Ljava/lang/String;ILjava/lang/String;)J

    .line 1026
    iget-object v8, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1027
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v4, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1030
    :cond_2
    monitor-exit p0

    return-object v3

    .line 997
    .end local v0           #Address:[Ljava/lang/String;
    .end local v1           #Ids:[J
    .end local v2           #THREAD_QUERY:Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #i:I
    .end local v6           #recipientAddress:Ljava/lang/String;
    .end local v7           #recipientIds:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "phoneNumber"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1673
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1674
    .local v19, escapedPhoneNumber:Ljava/lang/String;
    const-string v3, "pdu._id = matching_addresses.address_id"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1678
    .local v8, finalMmsSelection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1683
    .local v15, finalSmsSelection:Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1684
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1686
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1687
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdu, (SELECT _id AS address_id FROM addr WHERE PHONE_NUMBERS_EQUAL(addr.address, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "AS matching_addresses"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1694
    const-string v3, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1696
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1697
    .local v4, columns:[Ljava/lang/String;
    const-string v3, "transport_type"

    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v6, 0x0

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1700
    .local v20, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x0

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v21

    move-object v11, v4

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1703
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1705
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1707
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v20, v3, v5

    const/4 v5, 0x1

    aput-object v22, v3, v5

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1710
    .local v23, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private getMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1268
    const-string v0, "SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type,     COUNT() - SUM(read) AS unread_count, priority, locked,    htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo  FROM incoming_msg_v2 WHERE transport_type=\'vvm\' OR thread_id>0 GROUP BY htcthread_id ORDER BY normalized_date DESC;"

    .line 1274
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 1139
    iget-object v0, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "threads"

    const-string v7, " date DESC"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSingleAddressId(Ljava/lang/String;)J
    .locals 18
    .parameter "address"

    .prologue
    .line 730
    const-wide/16 v14, -0x1

    .line 731
    .local v14, retVal:J
    const/4 v11, 0x0

    .line 734
    .local v11, isEmail:Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "*@PRIVATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*@DELIVERY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*@UNKNOWN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 739
    :cond_0
    move-object/from16 v13, p1

    .line 740
    .local v13, refinedAddress:Ljava/lang/String;
    const-string v4, "address = ?"

    .line 748
    .local v4, selection:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    .line 749
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 752
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 753
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "canonical_addresses"

    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 757
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 758
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 759
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v9, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 762
    const-string v2, "canonical_addresses"

    const-string v3, "address"

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 765
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSingleAddressId: insert new canonical_address for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", _id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->map:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    if-eqz v10, :cond_1

    .line 779
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide/from16 v16, v14

    .line 783
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v14           #retVal:J
    .local v16, retVal:J
    :goto_1
    return-wide v16

    .line 742
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #refinedAddress:Ljava/lang/String;
    .end local v16           #retVal:J
    .restart local v14       #retVal:J
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    .line 743
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v12

    .line 744
    .local v12, isPhone:Z
    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 745
    .restart local v13       #refinedAddress:Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_4

    const-string v4, "PHONE_NUMBERS_EQUAL(address, ?)"

    .restart local v4       #selection:Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .end local v4           #selection:Ljava/lang/String;
    .end local v13           #refinedAddress:Ljava/lang/String;
    :cond_3
    move-object/from16 v13, p1

    .line 744
    goto :goto_2

    .line 745
    .restart local v13       #refinedAddress:Ljava/lang/String;
    :cond_4
    const-string v4, "address = ?"

    goto :goto_3

    .line 773
    .end local v12           #isPhone:Z
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_5
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 774
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/AllMessagesProvider;->map:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    :cond_6
    if-eqz v10, :cond_7

    .line 779
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    move-wide/from16 v16, v14

    .line 783
    .end local v14           #retVal:J
    .restart local v16       #retVal:J
    goto :goto_1

    .line 778
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v16           #retVal:J
    .restart local v14       #retVal:J
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 779
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method private getSortedSet(Ljava/util/Set;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 810
    .local v5, size:I
    new-array v4, v5, [J

    .line 811
    .local v4, result:[J
    const/4 v0, 0x0

    .line 813
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 814
    .local v3, number:Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 817
    .end local v3           #number:Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 818
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 821
    :cond_1
    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 829
    array-length v2, p1

    .line 830
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 833
    if-eqz v1, :cond_0

    .line 834
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "numbers"

    .prologue
    .line 847
    array-length v2, p1

    .line 848
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 851
    if-eqz v1, :cond_0

    .line 852
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/AllMessagesProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/providers/telephony/AllMessagesProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v1

    .line 1042
    .local v1, Ids:[J
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v7

    .line 1045
    .local v7, recipientIds:Ljava/lang/String;
    array-length v8, v1

    new-array v0, v8, [Ljava/lang/String;

    .line 1046
    .local v0, Address:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v1

    if-ge v5, v8, :cond_0

    .line 1047
    iget-object v8, p0, Lcom/android/providers/telephony/AllMessagesProvider;->map:Ljava/util/Map;

    aget-wide v9, v1, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v0, v5

    .line 1048
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ids: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v1, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1051
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/AllMessagesProvider;->getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1052
    .local v6, recipientAddress:Ljava/lang/String;
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recipientIds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v8, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recipientAddress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v2, "SELECT _id FROM threads WHERE recipient_ids = ?"

    .line 1058
    .local v2, THREAD_QUERY:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1059
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v4, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1061
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 1062
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1063
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/providers/telephony/AllMessagesProvider;->insertThread(Ljava/lang/String;ILjava/lang/String;)V

    .line 1064
    iget-object v8, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1065
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v4, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1068
    :cond_1
    monitor-exit p0

    return-object v3

    .line 1041
    .end local v0           #Address:[Ljava/lang/String;
    .end local v1           #Ids:[J
    .end local v2           #THREAD_QUERY:Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #i:I
    .end local v6           #recipientAddress:Ljava/lang/String;
    .end local v7           #recipientIds:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 34
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1777
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/AllMessagesProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1779
    .local v26, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1780
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v30, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1782
    .local v30, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1783
    const-string v3, "sms"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1786
    const-string v3, "(msg_box = 4 AND m_type = 128)"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1790
    .local v8, finalMmsSelection:Ljava/lang/String;
    const-string v3, "(type = 4 OR type = 5 OR type = 6)"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1795
    .local v15, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1796
    .local v29, smsColumns:[Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/providers/telephony/AllMessagesProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1797
    .local v25, mmsColumns:[Ljava/lang/String;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1799
    .local v4, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 1802
    .local v24, innerSmsProjection:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1803
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1804
    const-string v3, "err_type"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1805
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1809
    .local v27, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v30

    move-object/from16 v11, v24

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1813
    .local v31, smsSubQuery:Ljava/lang/String;
    new-instance v33, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v33 .. v33}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1815
    .local v33, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1817
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v31, v3, v6

    const/4 v6, 0x1

    aput-object v27, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1820
    .local v32, unionQuery:Ljava/lang/String;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1822
    .local v16, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1824
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v29

    move-object/from16 v22, p4

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1827
    .local v28, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/AllMessagesProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private handleNullHtcThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 2808
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/providers/telephony/AllMessagesProvider;->ALL_MESSAGES_COLUMNS:[Ljava/lang/String;

    .end local p1
    :cond_0
    return-object p1
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 1099
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 1131
    if-nez p0, :cond_0

    const-string p0, "normalized_date ASC"

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "sortOrder"
    .parameter "IsSortybDate2"

    .prologue
    .line 1116
    if-nez p0, :cond_0

    .line 1117
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1118
    const-string p0, "date2 ASC"

    .line 1123
    :cond_0
    :goto_0
    return-object p0

    .line 1120
    :cond_1
    const-string p0, "normalized_date ASC"

    goto :goto_0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 1108
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/AllMessagesProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static initializeAllMessagesColumnsSets()V
    .locals 7

    .prologue
    .line 2734
    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v0, v5

    .line 2735
    .local v0, htcThreadsOnlyColumnCount:I
    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v4, v5

    .line 2736
    .local v4, threadsOnlyColumnCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2738
    .local v2, joinedColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2739
    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2741
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 2742
    sget-object v5, Lcom/android/providers/telephony/AllMessagesProvider;->THREADS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2745
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2746
    .local v3, len:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 2747
    sget-object v6, Lcom/android/providers/telephony/AllMessagesProvider;->ALL_MESSAGES_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v1

    .line 2746
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2750
    :cond_2
    return-void
.end method

.method private static initializeColumnSets()V
    .locals 11

    .prologue
    .line 2758
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    array-length v1, v9

    .line 2759
    .local v1, commonColumnCount:I
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v9

    .line 2760
    .local v6, mmsOnlyColumnCount:I
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v7, v9

    .line 2761
    .local v7, smsOnlyColumnCount:I
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v2, v9

    .line 2762
    .local v2, htcMsgOnlyColumnCount:I
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2764
    .local v8, unionColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2765
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2766
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2767
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2768
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->COMMON_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2764
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2770
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    .line 2771
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2772
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2770
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2774
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_2

    .line 2775
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2776
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2774
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2779
    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 2780
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2781
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->HTC_MSG_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2779
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2784
    :cond_3
    const/4 v3, 0x0

    .line 2785
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2786
    .local v0, columnName:Ljava/lang/String;
    sget-object v9, Lcom/android/providers/telephony/AllMessagesProvider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aput-object v0, v9, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_4

    .line 2788
    .end local v0           #columnName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private insertHtcThread(Ljava/lang/String;ILjava/lang/String;)J
    .locals 9
    .parameter "recipientIds"
    .parameter "numberOfRecipients"
    .parameter "recipientAddress"

    .prologue
    const/4 v8, 0x0

    .line 882
    const-string v5, "AllMessagesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertHtcThread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 884
    .local v4, values:Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 886
    .local v2, id:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 887
    .local v0, date:J
    const-string v5, "latest_date"

    const-wide/16 v6, 0x3e8

    rem-long v6, v0, v6

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 888
    const-string v5, "recipient_ids"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v5, "recipient_address"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v5, "thread_id"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    iget-object v5, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "htcthreads"

    invoke-virtual {v5, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 901
    iget-object v5, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v5, :cond_0

    .line 903
    const-string v5, "__ALBAL__"

    const-string v6, "AllMessagesProvider  SetBackUp"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v5, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 910
    :cond_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v2, v3, p3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->refreshcontactsTable(JJLjava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 913
    return-wide v2
.end method

.method private insertThread(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .parameter "recipientIds"
    .parameter "numberOfRecipients"
    .parameter "recipientAddress"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 921
    new-instance v8, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v8, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 923
    .local v8, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 924
    .local v6, date:J
    const-string v1, "date"

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 925
    const-string v1, "recipient_ids"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v1, "recipient_address"

    invoke-virtual {v8, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    if-le p2, v9, :cond_0

    .line 928
    const-string v1, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    :cond_0
    const-string v1, "message_count"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "threads"

    invoke-virtual {v1, v4, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 935
    .local v2, thread_id:J
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v1, :cond_1

    .line 937
    const-string v1, "__ALBAL__"

    const-string v4, "AllMessagesProvider  SetBackUp"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v1, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 944
    :cond_1
    new-instance v0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;

    invoke-virtual {p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 950
    .local v0, updateNameThread:Ljava/lang/Thread;
    invoke-virtual {v0, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 951
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 954
    invoke-virtual {p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 955
    return-void
.end method

.method public static isSupportHtcMessages()Z
    .locals 2

    .prologue
    .line 3256
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 3257
    const/4 v0, 0x1

    .line 3259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1739
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method private makeHtcThreadsProjectioin([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "old"

    .prologue
    .line 2791
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 2804
    :cond_0
    return-object v1

    .line 2792
    :cond_1
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 2793
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2794
    aget-object v2, p1, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2795
    const-string v2, "htcthreads._id"

    aput-object v2, v1, v0

    .line 2793
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2796
    :cond_2
    aget-object v2, p1, v0

    const-string v3, "recipient_ids"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2797
    const-string v2, "htcthreads.recipient_ids"

    aput-object v2, v1, v0

    goto :goto_1

    .line 2798
    :cond_3
    aget-object v2, p1, v0

    const-string v3, "recipient_address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2799
    const-string v2, "htcthreads.recipient_address"

    aput-object v2, v1, v0

    goto :goto_1

    .line 2801
    :cond_4
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method private static makeProjectionWithDate2([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 1846
    array-length v1, p0

    .line 1847
    .local v1, projectionSize:I
    new-array v2, v1, [Ljava/lang/String;

    .line 1848
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1850
    aget-object v3, p0, v0

    const-string v4, "date2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date2 * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS date2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1848
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1853
    :cond_0
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    goto :goto_1

    .line 1855
    :cond_1
    return-object v2
.end method

.method private static makeProjectionWithDate2InVVM([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "projection"

    .prologue
    .line 1860
    array-length v1, p0

    .line 1861
    .local v1, projectionSize:I
    new-array v2, v1, [Ljava/lang/String;

    .line 1862
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1864
    aget-object v3, p0, v0

    const-string v4, "date2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1865
    const-string v3, "date as date2"

    aput-object v3, v2, v0

    .line 1862
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1867
    :cond_0
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    goto :goto_1

    .line 1869
    :cond_1
    return-object v2
.end method

.method private makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 1490
    array-length v1, p1

    .line 1491
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 1493
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "thread_id AS tid"

    aput-object v4, v2, v3

    .line 1494
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS normalized_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1496
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 1495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    const/4 v4, 0x0

    .line 1836
    array-length v0, p0

    .line 1837
    .local v0, projectionSize:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 1839
    .local v1, result:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS normalized_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1840
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1841
    return-object v1
.end method

.method private setUpdateMMSshortcutBroadcast()V
    .locals 3

    .prologue
    .line 2239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2240
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.mms.updateShortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2241
    invoke-virtual {p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method private static unionSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 1073
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    .end local p1
    :goto_0
    return-object p1

    .line 1075
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1076
    goto :goto_0

    .line 1078
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static updateAllHtcThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 3204
    if-nez p1, :cond_0

    .line 3205
    const-string p1, ""

    .line 3210
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT _id FROM htcthreads WHERE _id IN (SELECT DISTINCT htcthread_id FROM htcmsgs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3214
    .local v4, query:Ljava/lang/String;
    const-string v6, "AllMessagesProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAllHtcThreads query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    invoke-virtual {p0, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3216
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 3217
    .local v3, list:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 3218
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3219
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3220
    .local v2, id:I
    if-nez v3, :cond_1

    .line 3222
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #list:Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v3       #list:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 3207
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #id:I
    .end local v3           #list:Ljava/lang/StringBuilder;
    .end local v4           #query:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WHERE ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3224
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #id:I
    .restart local v3       #list:Ljava/lang/StringBuilder;
    .restart local v4       #query:Ljava/lang/String;
    :cond_1
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3227
    .end local v2           #id:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3229
    :cond_3
    if-eqz v3, :cond_4

    .line 3230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/providers/telephony/AllMessagesProvider;->updateHtcThreadIdList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3241
    :cond_4
    const-string v1, "_id NOT IN   (SELECT DISTINCT htcthread_id FROM htcmsgs) AND thread_id <= 0"

    .line 3246
    .local v1, deleteWhere:Ljava/lang/String;
    const-string v6, "AllMessagesProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete orphaned htcthreads: where= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    const-string v6, "htcthreads"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 3252
    .local v5, rows:I
    return-void
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "threadIdString"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2671
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2678
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2681
    .local v5, finalSelection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2682
    .local v10, affectedIDs:[J
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 2683
    .local v11, affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v3, "sms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2684
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 2685
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 2686
    .local v18, size:I
    if-lez v18, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2687
    move/from16 v0, v18

    new-array v10, v0, [J

    .line 2688
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 2689
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v10, v15

    .line 2690
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2691
    .local v20, tid:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2692
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2693
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2688
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2672
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #finalSelection:Ljava/lang/String;
    .end local v10           #affectedIDs:[J
    .end local v11           #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #i:I
    .end local v18           #size:I
    .end local v20           #tid:J
    :catch_0
    move-exception v14

    .line 2673
    .local v14, exception:Ljava/lang/NumberFormatException;
    const-string v3, "AllMessagesProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    const/4 v13, 0x0

    .line 2729
    .end local v14           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    return v13

    .line 2696
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #finalSelection:Ljava/lang/String;
    .restart local v10       #affectedIDs:[J
    .restart local v11       #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v18       #size:I
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2700
    .end local v18           #size:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v3, v2, v5, v0, v1}, Lcom/android/providers/telephony/MmsProvider;->updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    const-string v4, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int v13, v3, v4

    .line 2704
    .local v13, count:I
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2705
    const-string v19, ""

    .line 2706
    .local v19, threadIds:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 2707
    .local v20, tid:Ljava/lang/Long;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2709
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 2711
    .end local v20           #tid:Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2716
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #threadIds:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastMarkAsReadIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2717
    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2718
    if-eqz v10, :cond_1

    .line 2719
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update SMS IDs: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2721
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.markAsReadSMS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2722
    const-string v3, "affectedIDs"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static updateHtcThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter "db"
    .parameter "thread_id"

    .prologue
    const/4 v4, 0x0

    .line 3046
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 3047
    invoke-static {p0, v4, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->updateAllHtcThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3200
    :cond_0
    :goto_0
    return-void

    .line 3058
    :cond_1
    const-string v0, "_id = ? AND _id NOT IN   (SELECT htcthread_id     FROM htcmsgs) AND thread_id <= 0"

    .line 3063
    .local v0, deleteThread:Ljava/lang/String;
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete thread id sql: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const-string v2, "htcthreads"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3070
    .local v1, rows:I
    if-lez v1, :cond_0

    .line 3072
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete thread rows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateHtcThreadIdList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "htcThreadList"

    .prologue
    const/4 v5, 0x0

    .line 3020
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHtcThreadIdList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    if-nez p1, :cond_1

    .line 3022
    invoke-static {p0, v5, v5}, Lcom/android/providers/telephony/AllMessagesProvider;->updateAllHtcThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3043
    :cond_0
    :goto_0
    return-void

    .line 3027
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id NOT IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (SELECT DISTINCT htcthread_id FROM htcmsgs WHERE htcthread_id IS NOT NULL) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AND thread_id <= 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, deleteThread:Ljava/lang/String;
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete htc thread id sql: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const-string v2, "htcthreads"

    invoke-virtual {p0, v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3036
    .local v1, rows:I
    if-lez v1, :cond_0

    .line 3038
    const-string v2, "AllMessagesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete thread rows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public _delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    .line 2142
    .local v23, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 2143
    .local v22, context:Landroid/content/Context;
    const/16 v20, 0x0

    .line 2144
    .local v20, affectedRows:I
    const-wide/16 v7, 0x0

    .line 2145
    .local v7, htcThreadId:J
    const-wide/16 v5, 0x0

    .line 2146
    .local v5, threadId:J
    const-string v4, "bg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2147
    .local v21, bg:Ljava/lang/String;
    if-eqz v21, :cond_0

    const-string v4, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v11, 0x1

    .line 2148
    .local v11, delInBG:Z
    :goto_0
    const-string v4, "trash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2149
    .local v25, trash:Ljava/lang/String;
    if-eqz v25, :cond_1

    const-string v4, "true"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v12, 0x1

    .line 2150
    .local v12, delInTrash:Z
    :goto_1
    const-string v4, "Jerry"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete bg >"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    sget-object v4, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2215
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v9, "AllMessagesProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v4, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2147
    .end local v11           #delInBG:Z
    .end local v12           #delInTrash:Z
    .end local v25           #trash:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 2149
    .restart local v11       #delInBG:Z
    .restart local v25       #trash:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 2154
    .restart local v12       #delInTrash:Z
    :sswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2155
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 2161
    invoke-direct/range {v4 .. v12}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcConversation(JJLjava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v20

    .line 2218
    :goto_2
    if-lez v20, :cond_2

    .line 2219
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2220
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_2

    .line 2224
    const-string v4, "__ALBAL__"

    const-string v9, "AllMessagesProvider  SetBackUp"

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2234
    :cond_2
    return v20

    .line 2156
    :catch_0
    move-exception v24

    .line 2157
    .local v24, e:Ljava/lang/NumberFormatException;
    const-string v4, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread id must be a long. htcthread_id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2168
    .end local v24           #e:Ljava/lang/NumberFormatException;
    :sswitch_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    move-object/from16 v13, p0

    move-wide v14, v7

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    move/from16 v19, v12

    .line 2174
    invoke-direct/range {v13 .. v19}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcConversation(JLjava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v20

    .line 2176
    goto :goto_2

    .line 2169
    :catch_1
    move-exception v24

    .line 2170
    .restart local v24       #e:Ljava/lang/NumberFormatException;
    const-string v4, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "htcthread_id must be long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2178
    .end local v24           #e:Ljava/lang/NumberFormatException;
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcConversations(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 2179
    goto/16 :goto_2

    .line 2183
    :sswitch_3
    :try_start_2
    const-string v4, "threads"

    const-string v9, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/4 v10, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v20

    goto/16 :goto_2

    .line 2187
    :catch_2
    move-exception v24

    .line 2188
    .local v24, e:Ljava/lang/Exception;
    const-string v4, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2195
    .end local v24           #e:Ljava/lang/Exception;
    :sswitch_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v7

    move-object/from16 v13, p0

    move-wide v14, v7

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    move/from16 v19, v12

    .line 2208
    invoke-direct/range {v13 .. v19}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteContactbaseHtcConversation(JLjava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v20

    .line 2210
    goto/16 :goto_2

    .line 2196
    :catch_3
    move-exception v24

    .line 2197
    .local v24, e:Ljava/lang/NumberFormatException;
    const-string v4, "AllMessagesProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "htcthread_id must be long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2151
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0xb -> :sswitch_3
        0x15 -> :sswitch_1
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public _query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 64
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 406
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SortbyDate2"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v12

    .line 407
    .local v12, SortbyDate2:I
    const/16 v42, 0x0

    .line 408
    .local v42, cursor:Landroid/database/Cursor;
    const/16 v63, 0x0

    .line 409
    .local v63, thread_id:I
    sget-object v6, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 718
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 721
    .end local v12           #SortbyDate2:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v42

    invoke-interface {v0, v6, v7}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v6, v42

    .line 722
    :goto_1
    return-object v6

    .line 415
    .restart local v12       #SortbyDate2:I
    :sswitch_1
    const-string v6, "simple"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 416
    .local v57, simple:Ljava/lang/String;
    if-eqz v57, :cond_0

    const-string v6, "true"

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    const-string v6, "htcthreads"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12           #SortbyDate2:I
    move-result-object v42

    goto :goto_0

    .line 420
    .restart local v12       #SortbyDate2:I
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/providers/telephony/AllMessagesProvider;->buildAllMessagesConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v52

    .line 422
    .local v52, qs:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 424
    goto :goto_0

    .line 427
    .end local v52           #qs:Ljava/lang/String;
    .end local v57           #simple:Ljava/lang/String;
    :sswitch_2
    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/providers/telephony/AllMessagesProvider;->buildAllMessagesConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v52

    .line 429
    .restart local v52       #qs:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 430
    goto :goto_0

    .line 432
    .end local v52           #qs:Ljava/lang/String;
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v13, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lcom/android/providers/telephony/AllMessagesProvider;->getConversationMessages(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v42

    .line 436
    goto/16 :goto_0

    .line 438
    :sswitch_4
    const-string v6, "groupByDate"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    const/16 v20, 0x1

    .line 439
    .local v20, groupByDate:Z
    :goto_2
    const-string v6, "groupByGID"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_2

    const/16 v21, 0x1

    .line 440
    .local v21, groupByGID:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v22, v12

    invoke-direct/range {v13 .. v22}, Lcom/android/providers/telephony/AllMessagesProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZI)Landroid/database/Cursor;

    move-result-object v42

    .line 444
    goto/16 :goto_0

    .line 438
    .end local v20           #groupByDate:Z
    .end local v21           #groupByGID:Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_2

    .line 439
    .restart local v20       #groupByDate:Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_3

    .line 461
    .end local v20           #groupByDate:Z
    :sswitch_5
    const-string v6, "groupByDate"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_3

    const/16 v20, 0x1

    .line 462
    .restart local v20       #groupByDate:Z
    :goto_4
    const-string v6, "groupByGID"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_4

    const/16 v21, 0x1

    .line 463
    .restart local v21       #groupByGID:Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v22, v12

    invoke-direct/range {v13 .. v22}, Lcom/android/providers/telephony/AllMessagesProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZI)Landroid/database/Cursor;

    move-result-object v42

    .line 467
    goto/16 :goto_0

    .line 461
    .end local v20           #groupByDate:Z
    .end local v21           #groupByGID:Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_4

    .line 462
    .restart local v20       #groupByDate:Z
    :cond_4
    const/16 v21, 0x0

    goto :goto_5

    .line 471
    .end local v20           #groupByDate:Z
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/AllMessagesProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 474
    goto/16 :goto_0

    .line 476
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/AllMessagesProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 479
    goto/16 :goto_0

    .line 481
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/AllMessagesProvider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 484
    goto/16 :goto_0

    .line 486
    :sswitch_9
    const-string v6, "recipient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v54

    .line 487
    .local v54, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "create"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 488
    .local v38, _create:Ljava/lang/String;
    if-eqz v38, :cond_5

    const/16 v41, 0x1

    .line 489
    .local v41, create:Z
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->getHtcThreadId(Ljava/util/List;Z)Landroid/database/Cursor;

    move-result-object v42

    .line 490
    goto/16 :goto_0

    .line 488
    .end local v41           #create:Z
    :cond_5
    const/16 v41, 0x0

    goto :goto_6

    .line 493
    .end local v38           #_create:Ljava/lang/String;
    .end local v54           #recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    .line 494
    const-string v6, "AllMessagesProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thread_id ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v63

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->getHtcThreadId(I)Landroid/database/Cursor;

    move-result-object v42

    .line 501
    goto/16 :goto_0

    .line 495
    :catch_0
    move-exception v44

    .line 496
    .local v44, ex:Ljava/lang/Exception;
    const-string v7, "AllMessagesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad conversation thread id: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 503
    .end local v44           #ex:Ljava/lang/Exception;
    :sswitch_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 504
    .local v45, extraSelection:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v25, v45

    .line 506
    .local v25, finalSelection:Ljava/lang/String;
    :goto_7
    const-string v23, "canonical_addresses"

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v6, 0x0

    const-string v7, "address"

    aput-object v7, v24, v6

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v5

    move-object/from16 v26, p4

    move-object/from16 v29, p5

    invoke-virtual/range {v22 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 509
    goto/16 :goto_0

    .line 504
    .end local v25           #finalSelection:Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto :goto_7

    .line 512
    .end local v45           #extraSelection:Ljava/lang/String;
    :sswitch_c
    const-string v27, "canonical_addresses"

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v28, v6

    const/4 v6, 0x1

    const-string v7, "address"

    aput-object v7, v28, v6

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v5

    move-object/from16 v29, p3

    move-object/from16 v30, p4

    move-object/from16 v33, p5

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 515
    goto/16 :goto_0

    .line 517
    :sswitch_d
    if-nez p5, :cond_7

    if-nez p3, :cond_7

    if-nez p4, :cond_7

    if-eqz p2, :cond_8

    .line 521
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 532
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pattern"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 533
    .local v56, searchString:Ljava/lang/String;
    const-string v58, "_id,thread_id,address,body,date"

    .line 534
    .local v58, smsProjection:Ljava/lang/String;
    const-string v46, "pdu._id,thread_id,addr.address,part.text as body,pdu.date"

    .line 536
    .local v46, mmsProjection:Ljava/lang/String;
    const-string v6, "SELECT %s FROM sms WHERE (body LIKE ?) "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v58, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    .line 543
    .local v59, smsQuery:Ljava/lang/String;
    const-string v6, "SELECT %s FROM pdu,part,addr WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=%d) AND (part.ct=\'text/plain\') AND (body like ?))"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v46, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x97

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 552
    .local v47, mmsQuery:Ljava/lang/String;
    const-string v6, "%s UNION %s GROUP BY %s ORDER BY %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v59, v7, v8

    const/4 v8, 0x1

    aput-object v47, v7, v8

    const/4 v8, 0x2

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "thread_id ASC, date DESC"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    .line 559
    .local v53, rawQuery:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v56, v6, v7

    const/4 v7, 0x1

    aput-object v56, v6, v7

    move-object/from16 v0, v53

    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 560
    goto/16 :goto_0

    .line 562
    .end local v46           #mmsProjection:Ljava/lang/String;
    .end local v47           #mmsQuery:Ljava/lang/String;
    .end local v53           #rawQuery:Ljava/lang/String;
    .end local v56           #searchString:Ljava/lang/String;
    .end local v58           #smsProjection:Ljava/lang/String;
    .end local v59           #smsQuery:Ljava/lang/String;
    :sswitch_e
    const-string v6, "protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 563
    .local v51, protoName:Ljava/lang/String;
    const-string v6, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 564
    .local v48, msgId:Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v50, -0x1

    .line 567
    .local v50, proto:I
    :goto_8
    const/4 v6, -0x1

    move/from16 v0, v50

    if-eq v0, v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proto_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 569
    .restart local v45       #extraSelection:Ljava/lang/String;
    :goto_9
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 573
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v25, v45

    .line 575
    .restart local v25       #finalSelection:Ljava/lang/String;
    :goto_a
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v29, "due_time"

    .line 578
    .local v29, finalOrder:Ljava/lang/String;
    :goto_b
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 579
    const-string v23, "pending_msgs"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v5

    move-object/from16 v24, p2

    move-object/from16 v26, p4

    invoke-virtual/range {v22 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    goto/16 :goto_0

    .line 564
    .end local v25           #finalSelection:Ljava/lang/String;
    .end local v29           #finalOrder:Ljava/lang/String;
    .end local v45           #extraSelection:Ljava/lang/String;
    .end local v50           #proto:I
    :cond_a
    const-string v6, "sms"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v50, 0x0

    goto :goto_8

    :cond_b
    const/16 v50, 0x1

    goto :goto_8

    .line 567
    .restart local v50       #proto:I
    :cond_c
    const-string v45, " 0=0 "

    goto :goto_9

    .line 573
    .restart local v45       #extraSelection:Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto :goto_a

    .restart local v25       #finalSelection:Ljava/lang/String;
    :cond_e
    move-object/from16 v29, p5

    .line 575
    goto :goto_b

    .line 583
    .restart local v29       #finalOrder:Ljava/lang/String;
    :cond_f
    const-string v23, "pending_msgs"

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v5

    move-object/from16 v26, p4

    invoke-virtual/range {v22 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 587
    goto/16 :goto_0

    .line 590
    .end local v25           #finalSelection:Ljava/lang/String;
    .end local v29           #finalOrder:Ljava/lang/String;
    .end local v45           #extraSelection:Ljava/lang/String;
    .end local v48           #msgId:Ljava/lang/String;
    .end local v50           #proto:I
    .end local v51           #protoName:Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 592
    goto/16 :goto_0

    .line 595
    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 596
    goto/16 :goto_0

    .line 601
    :sswitch_11
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v61

    .line 606
    .local v61, threadId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/providers/telephony/AllMessagesProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 608
    goto/16 :goto_0

    .line 602
    .end local v61           #threadId:J
    :catch_1
    move-exception v43

    .line 603
    .local v43, e:Ljava/lang/NumberFormatException;
    const-string v6, "AllMessagesProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 611
    .end local v43           #e:Ljava/lang/NumberFormatException;
    :sswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 613
    goto/16 :goto_0

    .line 617
    :sswitch_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getDraftList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 618
    goto/16 :goto_0

    .line 623
    :sswitch_14
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 625
    goto/16 :goto_0

    .line 631
    :sswitch_15
    const/4 v6, 0x0

    aget-object v60, p4, v6

    .line 632
    .local v60, target:Ljava/lang/String;
    const-string v6, ""

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 633
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 655
    :cond_10
    const/16 v6, 0xc

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v32, v6

    const/4 v6, 0x1

    const-string v7, "message_count"

    aput-object v7, v32, v6

    const/4 v6, 0x2

    const-string v7, "recipient_ids"

    aput-object v7, v32, v6

    const/4 v6, 0x3

    const-string v7, "date as suggest_intent_data_id"

    aput-object v7, v32, v6

    const/4 v6, 0x4

    const-string v7, "read"

    aput-object v7, v32, v6

    const/4 v6, 0x5

    const-string v7, "snippet as suggest_text_2"

    aput-object v7, v32, v6

    const/4 v6, 0x6

    const-string v7, "snippet_cs"

    aput-object v7, v32, v6

    const/4 v6, 0x7

    const-string v7, "error"

    aput-object v7, v32, v6

    const/16 v6, 0x8

    const-string v7, "unread_count"

    aput-object v7, v32, v6

    const/16 v6, 0x9

    const-string v7, "recipient_address as suggest_text_1"

    aput-object v7, v32, v6

    const/16 v6, 0xa

    const-string v7, "name"

    aput-object v7, v32, v6

    const/16 v6, 0xb

    const-string v7, "body"

    aput-object v7, v32, v6

    .line 672
    .local v32, mProjection:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recipient_address like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' or name like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' or body like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 673
    .local v33, where:Ljava/lang/String;
    const-string v49, "date desc"

    .line 675
    .local v49, orderBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30

    const-string v31, "threads"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v37, " date DESC"

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 678
    goto/16 :goto_0

    .line 681
    .end local v32           #mProjection:[Ljava/lang/String;
    .end local v33           #where:Ljava/lang/String;
    .end local v49           #orderBy:Ljava/lang/String;
    .end local v60           #target:Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getAllMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 683
    goto/16 :goto_0

    .line 686
    :sswitch_17
    const-string v6, "recipient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v55

    .line 687
    .local v55, recipients_:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->getAvailableThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v42

    .line 688
    goto/16 :goto_0

    .line 694
    .end local v55           #recipients_:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_18
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v39

    .line 700
    .local v39, contactId:J
    sget-wide v6, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    cmp-long v6, v39, v6

    if-lez v6, :cond_11

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT recipient_address from htcthreads where _id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    sub-long v7, v39, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    goto/16 :goto_0

    .line 695
    .end local v39           #contactId:J
    :catch_2
    move-exception v43

    .line 696
    .restart local v43       #e:Ljava/lang/NumberFormatException;
    const-string v6, "AllMessagesProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    .end local v43           #e:Ljava/lang/NumberFormatException;
    .restart local v39       #contactId:J
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT htcthreads.recipient_address from htcthreads INNER JOIN contacts ON htcthreads._id =  contacts.htcthread_id   AND contacts.contact_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v39

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 707
    goto/16 :goto_0

    .line 712
    .end local v39           #contactId:J
    :sswitch_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/AllMessagesProvider;->getContactbaseMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 714
    goto/16 :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_6
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x5 -> :sswitch_b
        0x6 -> :sswitch_e
        0x7 -> :sswitch_0
        0x8 -> :sswitch_f
        0x9 -> :sswitch_7
        0xc -> :sswitch_10
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_12
        0x10 -> :sswitch_11
        0x11 -> :sswitch_13
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_17
        0x15 -> :sswitch_4
        0x16 -> :sswitch_a
        0x17 -> :sswitch_2
        0x1f -> :sswitch_5
        0x21 -> :sswitch_18
        0x22 -> :sswitch_19
        0x3e8 -> :sswitch_16
    .end sparse-switch
.end method

.method public _update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x0

    .line 2615
    iget-object v3, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2616
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2618
    .local v0, affectedRows:I
    sget-object v3, Lcom/android/providers/telephony/AllMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2645
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "AllMessagesProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2637
    :pswitch_0
    :try_start_0
    const-string v3, "pending_msgs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2649
    :goto_0
    if-lez v0, :cond_0

    .line 2650
    invoke-virtual {p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2655
    :cond_0
    iget-object v3, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v3, :cond_1

    .line 2657
    const-string v3, "__ALBAL__"

    const-string v4, "AllMessagesProvider  SetBackUp"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iget-object v3, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2664
    :cond_1
    return v0

    .line 2639
    :catch_0
    move-exception v2

    .line 2640
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "AllMessagesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2618
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2131
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 2133
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->_delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2135
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 2126
    const-string v0, "vnd.android-dir/allmessages"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2600
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AllMessagesProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/providers/telephony/AllMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/AllMessagesProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 395
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 397
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/telephony/AllMessagesProvider;->_query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2605
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 2607
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/AllMessagesProvider;->_update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2609
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method
