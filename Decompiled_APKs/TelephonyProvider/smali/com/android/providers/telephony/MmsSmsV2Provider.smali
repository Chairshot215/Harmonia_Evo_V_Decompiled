.class public Lcom/android/providers/telephony/MmsSmsV2Provider;
.super Landroid/content/ContentProvider;
.source "MmsSmsV2Provider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "mms-sms-v2"

.field private static final BLOCKLIST_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final GET_SMS_AND_MMS_FROM_STATE:Ljava/lang/String; = " ( SELECT pdu._id AS _id, addr.address AS address, pdu.read AS read, pdu.thread_id AS thread_id, pdu.date * 1000 AS date, 0 AS msg_type , pdu.sub AS sub ,pdu.sub_cs as sub_cs, -1 as sms_type, pdu.m_type as mms_type FROM addr, pdu WHERE addr.msg_id = pdu._id AND addr.address <> \'insert_address_token\' AND pdu.thread_id IS NOT NULL AND addr.type = 137 UNION ALL   SELECT sms._id AS _id, sms.address AS address, sms.read AS read, sms.thread_id as thread_id, sms.date AS date, 1 AS msg_type , sms.body as sub ,  NULL as sub_cs, sms.type as sms_type, -1 as mms_type FROM sms WHERE sms.address <> \'insert_address_token\' AND sms.thread_id IS NOT NULL ) "

.field private static final HTC_DEBUG:Z = false

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MmsSmsV2Provider"

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

.field private static final MMS_SMS_COLUMNS:[Ljava/lang/String; = null

.field private static final MMS_UNDELETED_CONSTRAINT:Ljava/lang/String; = "msg_box > 0"

.field private static final NO_DELETES_INSERTS_OR_UPDATES:Ljava/lang/String; = "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

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

.field public static final TABLE_PENDING_MSG:Ljava/lang/String; = "pending_msgs"

.field private static final TAG:Ljava/lang/String; = "MmsSmsV2Provider"

.field private static final THREADS_COLUMNS:[Ljava/lang/String; = null

.field private static TraditionalBaseCommand:Ljava/lang/String; = null

.field private static final UNION_COLUMNS:[Ljava/lang/String; = null

.field private static final URI_AVAILABLE_THREAD_ID:I = 0x14

.field private static final URI_BLOCKLIST:I = 0x24

.field private static final URI_BLOCKLIST_ID:I = 0x25

.field private static final URI_CANONICAL_ADDRESS:I = 0x5

.field private static final URI_CANONICAL_ADDRESSES:I = 0xd

.field private static final URI_COMPLETE_CONVERSATIONS:I = 0x7

.field private static final URI_CONVERSATIONS:I = 0x0

.field private static final URI_CONVERSATIONS_CONTACTS:I = 0x1f

.field private static final URI_CONVERSATIONS_MESSAGES:I = 0x1

.field private static final URI_CONVERSATIONS_RECIPIENTS:I = 0x2

.field private static final URI_CONVERSATIONS_SUBJECT:I = 0x9

.field private static final URI_DRAFT:I = 0xc

.field private static final URI_DRAFT_LIST:I = 0x11

.field private static final URI_FIRST_LOCKED_MESSAGE_ALL:I = 0xf

.field private static final URI_FIRST_LOCKED_MESSAGE_BY_THREAD_ID:I = 0x10

.field private static final URI_GET_ADDR:I = 0x18

.field private static final URI_GET_ALL_PHONE_FOR_CONTACT_ID:I = 0x16

.field private static final URI_GET_ALL_UNREAD_COUNT:I = 0x20

.field private static final URI_GET_CONTACT_ID:I = 0x15

.field private static final URI_GET_CONTACT_ID_FROM_HTCTHREAD_ID:I = 0x1c

.field private static final URI_GET_CONTACT_INFO:I = 0x1d

.field private static final URI_GET_DELETING_STATUS:I = 0x1a

.field private static final URI_GET_THREADS_ID:I = 0x17

.field private static final URI_GET_THREAD_ID_FROM_CONTACT_ID:I = 0x19

.field private static final URI_GET_UNREAD_COUNT:I = 0x1b

.field private static final URI_GROUP_MESSAGES:I = 0x23

.field private static final URI_INBOX:I = 0x26

.field private static final URI_LATEST_MT_MSG_PER_THREAD:I = 0x12

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MESSAGES_BY_PHONE:I = 0x3

.field private static final URI_NOTIFICATIONS:I = 0xa

.field private static final URI_OBSOLETE_THREADS:I = 0xb

.field private static final URI_OUTBOX:I = 0x28

.field private static final URI_PENDING_MSG:I = 0x6

.field private static final URI_RAW_QUERY:I = 0x21

.field private static final URI_SEARCH:I = 0xe

.field private static final URI_SENT:I = 0x27

.field private static final URI_SMS_AND_MMS_MSG:I = 0x3e8

.field private static final URI_THREAD_ID:I = 0x4

.field private static final URI_TRASH:I = 0x22

.field private static final URI_UNDELIVERED_MSG:I = 0x8

.field private static final VND_ANDROID_DIR_MMS_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms-v2"

.field private static mLockQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static mProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mStore:Lcom/android/providers/telephony/ContactMessageStore;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mUseStrictPhoneNumberComparation:Z

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

    .line 103
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 225
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "date_sent"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    .line 230
    const/16 v0, 0x17

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

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 241
    const/16 v0, 0xd

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

    const-string v2, "is_cdma_format"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 246
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v5

    const-string v1, "message_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    .line 269
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->ID_PROJECTION:[Ljava/lang/String;

    .line 271
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 289
    const-string v0, "    Select tid,normalized_date ,transport_type,s._id,thread_id,address,s.body,s.date,s.read,s.type,s.status,s.index_on_sim,s.locked,s.priority,s.callback_number,s.is_cdma_format,s.extra,    s.sub,s.sub_cs,s.date,s.read,s.m_type,s.msg_box,s.d_rpt,s.rr, s.ct_t, s.pri,s.err_type, s.locked, s.date2,s.is_evdo,s.gid,t.name as name from       (       SELECT thread_id AS tid, date * 1 AS normalized_date, \'sms\' AS transport_type, _id, thread_id, address, body, date, read, type, status, index_on_sim,       locked,priority, callback_number, is_cdma_format, extra, NULL AS sub, NULL AS sub_cs, date, read, NULL AS m_type, NULL AS msg_box, NULL AS d_rpt, NULL AS rr, NULL AS ct_t,       NULL AS pri, NULL AS err_type, locked, date2, is_evdo, NULL AS gid FROM sms WHERE (%s)        ) s JOIN threads t ON s.thread_id = t._id  UNION ALL    Select tid,normalized_date ,transport_type,p._id,thread_id,address,p.body,p.date,p.read,p.type,p.status,p.index_on_sim,p.locked,p.priority,p.callback_number,p.is_cdma_format,p.extra,    p.sub,p.sub_cs,p.date,p.read,p.m_type,p.msg_box,p.d_rpt,p.rr, p.ct_t, p.pri,p.err_type, p.locked, p.date2,p.is_evdo,p.gid,t.name as name from       (       SELECT thread_id AS tid, date * 1000 AS normalized_date, \'mms\' AS transport_type, pdu._id, thread_id, NULL AS address, NULL AS body, date, read, NULL AS type,       NULL AS status, NULL AS index_on_sim, locked, NULL AS priority, NULL AS callback_number, NULL AS is_cdma_format, extra, sub, sub_cs, date, read, m_type, msg_box,       d_rpt, rr, ct_t, pri, NULL AS err_type, locked, date2 * 1000 AS date2, NULL AS is_evdo, NULL AS gid FROM pdu WHERE (%s)       ) p JOIN threads t ON p.thread_id = t._id left JOIN pending_msgs pm ON p._id = pm.msg_id   ORDER BY %s "

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->TraditionalBaseCommand:Ljava/lang/String;

    .line 309
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "blocklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->BLOCKLIST_URI:Landroid/net/Uri;

    .line 313
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "conversations"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "complete-conversations"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "conversations/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "conversations/#/recipients"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "conversations/#/subject"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "conversations/obsolete"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "messages/byphone/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "threadID"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "available-threadID"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-contactID"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "canonical-address/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "canonical-addresses"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "search"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "pending"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "undelivered"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "notifications"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 372
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "draft"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "locked"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "locked/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "draftlist"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "missed_msg"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "suggestion/search_suggest_query"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "allmessages"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-contactID/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-contactID/#/htcthreadID"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-contactThreadPhone/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-threadsID"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-ADDR"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-threadID-from-contactID/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-DeletingStatus"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-UnreadCount/#"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 425
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-ContactInfo/*"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 429
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "conversations/contacts"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 433
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "get-UnreadCount"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 437
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "rawQuery"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "trash"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 445
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "GroupMessage"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "blocklist"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "blocklist/#"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "inbox"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "sent"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 455
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms-v2"

    const-string v2, "outbox"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->initializeColumnSets()V

    .line 480
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    .line 483
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 484
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mLockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->map:Ljava/util/Map;

    return-void
.end method

.method public static Lock()V
    .locals 5

    .prologue
    .line 504
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->isEnableLock()Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    .local v0, bWaiting:Z
    .local v2, pid:I
    :goto_0
    return-void

    .line 507
    .end local v0           #bWaiting:Z
    .end local v2           #pid:I
    :cond_0
    const/4 v0, 0x0

    .line 508
    .restart local v0       #bWaiting:Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 516
    .restart local v2       #pid:I
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getProviderLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 518
    :try_start_0
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mLockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Unlock()V
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->isEnableLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getProviderLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 534
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mLockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_0
.end method

.method private static appendNormalizedDateField([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "projection"

    .prologue
    .line 3686
    array-length v1, p0

    .line 3687
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 3689
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3690
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    .line 3689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3692
    :cond_0
    const-string v3, "normalized_date"

    aput-object v3, v2, v1

    .line 3694
    return-object v2
.end method

.method private buildContactIdQuery(JJLjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "threadId"
    .parameter "htcThreadId"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1439
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gtz v3, :cond_0

    .line 1440
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread id MUST be lager than 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1442
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_2

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcthread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1447
    :goto_0
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT contact_id FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v5}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1450
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1451
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1452
    .local v2, t:Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    .line 1453
    .local v1, row:[Ljava/lang/Object;
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_3

    .line 1454
    const/4 v3, 0x0

    invoke-static {p3, p4}, Lcom/android/providers/telephony/ContactMessageStore;->getContactIdByHtcThreadId(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1458
    :goto_1
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1460
    move-object v0, v2

    .line 1462
    .end local v1           #row:[Ljava/lang/Object;
    .end local v2           #t:Landroid/database/MatrixCursor;
    :cond_1
    return-object v0

    .line 1445
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 1456
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #row:[Ljava/lang/Object;
    .restart local v2       #t:Landroid/database/MatrixCursor;
    :cond_3
    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ContactMessageStore;->genContactId(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 32
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "IsSortbyDate2"

    .prologue
    .line 2894
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 2896
    .local v24, mmsProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2897
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v28, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v28 .. v28}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2899
    .local v28, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2900
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2901
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2902
    const-string v2, "sms"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2904
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 2905
    .local v27, smsColumns:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 2906
    .local v23, mmsColumns:[Ljava/lang/String;
    const/16 v2, 0x3e8

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    .line 2907
    .local v21, innerMmsProjectionTemp:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2908
    .local v3, innerMmsProjection:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 2909
    const/16 v2, 0x3e8

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDate2([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2912
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v22

    .line 2914
    .local v22, innerSmsProjection:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2915
    .local v4, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "pdu._id"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2916
    const-string v2, "err_type"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2918
    const-string v2, "phone_type"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2919
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 2920
    const-string v2, "date2 * 1000 AS date2"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2923
    :cond_0
    if-eqz v3, :cond_2

    .line 2924
    const/4 v15, -0x1

    .line 2925
    .local v15, addrIdx:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    array-length v2, v3

    move/from16 v0, v20

    if-ge v0, v2, :cond_1

    .line 2926
    aget-object v2, v3, v20

    const-string v6, "address"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2927
    move/from16 v15, v20

    .line 2931
    :cond_1
    const/4 v2, -0x1

    if-le v15, v2, :cond_2

    .line 2932
    const-string v16, "(SELECT address FROM addr WHERE msg_id = pdu._id AND (type = 137 OR type = 151) AND addr.address != \'insert-address-token\') AS address"

    .line 2935
    .local v16, addrSQL:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2936
    aput-object v16, v3, v15

    .line 2942
    .end local v15           #addrIdx:I
    .end local v16           #addrSQL:Ljava/lang/String;
    .end local v20           #i:I
    :cond_2
    if-eqz v3, :cond_4

    .line 2943
    const/16 v18, -0x1

    .line 2944
    .local v18, gidIdx:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_2
    array-length v2, v3

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 2945
    aget-object v2, v3, v20

    const-string v6, "gid"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2946
    move/from16 v18, v20

    .line 2950
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_4

    .line 2951
    const-string v19, "random() AS gid"

    .line 2952
    .local v19, gidSQL:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2953
    aput-object v19, v3, v18

    .line 2959
    .end local v18           #gidIdx:I
    .end local v19           #gidSQL:Ljava/lang/String;
    .end local v20           #i:I
    :cond_4
    new-instance v17, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2960
    .local v17, columnsPresentInSMSTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "gid"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2963
    const-string v2, "msg_box != 3"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2965
    .local v25, mmsSelection:Ljava/lang/String;
    const-string v2, "transport_type"

    const/4 v5, 0x0

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2970
    .local v26, mmsSubQuery:Ljava/lang/String;
    const-string v6, "transport_type"

    const/4 v9, 0x0

    const-string v10, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, v28

    move-object/from16 v7, v22

    move-object/from16 v8, v17

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2974
    .local v29, smsSubQuery:Ljava/lang/String;
    new-instance v31, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v31 .. v31}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2976
    .local v31, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2978
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v29, v2, v6

    const/4 v6, 0x1

    aput-object v26, v2, v6

    invoke-static/range {p3 .. p4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullSortOrder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2982
    .local v30, unionQuery:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2984
    .local v5, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2986
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v27

    move-object/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2911
    .end local v4           #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v17           #columnsPresentInSMSTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22           #innerSmsProjection:[Ljava/lang/String;
    .end local v25           #mmsSelection:Ljava/lang/String;
    .end local v26           #mmsSubQuery:Ljava/lang/String;
    .end local v29           #smsSubQuery:Ljava/lang/String;
    .end local v30           #unionQuery:Ljava/lang/String;
    .end local v31           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_5
    move-object/from16 v3, v21

    goto/16 :goto_0

    .line 2925
    .restart local v4       #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15       #addrIdx:I
    .restart local v20       #i:I
    .restart local v22       #innerSmsProjection:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 2944
    .end local v15           #addrIdx:I
    .restart local v18       #gidIdx:I
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2
.end method

.method private declared-synchronized checkRecipientIds(Ljava/lang/String;Ljava/util/List;)J
    .locals 23
    .parameter "recipientIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1874
    .local p2, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v6, 0x1

    .line 1875
    .local v6, allmatch:Z
    const-wide/16 v17, 0x0

    .line 1876
    .local v17, threadId:J
    if-eqz p2, :cond_e

    .line 1877
    :try_start_0
    const-string v20, "MmsSmsV2Provider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "checkRecipientIds: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v4, "SELECT _id,recipient_address FROM threads WHERE recipient_ids = ?"

    .line 1880
    .local v4, THREAD_QUERY:Ljava/lang/String;
    sget-object v20, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1881
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p1, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v9, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1882
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_8

    .line 1883
    const-string v20, "MmsSmsV2Provider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cursot count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-lez v20, :cond_7

    .line 1885
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1886
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1887
    .local v15, recipientAddress:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1889
    .local v5, addresses:[Ljava/lang/String;
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1890
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1896
    :goto_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 1898
    aget-object v20, v5, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->isExist(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1899
    const-string v20, "MmsSmsV2Provider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "There are unmatched recipient: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v5, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v6, 0x0

    .line 1904
    :cond_0
    if-eqz v6, :cond_1

    .line 1905
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1909
    .end local v5           #addresses:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #recipientAddress:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1915
    :goto_3
    if-nez v6, :cond_10

    .line 1916
    const-string v20, "MmsSmsV2Provider"

    const-string v21, "Checking threads table ..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-string v4, "SELECT _id,recipient_address FROM threads"

    .line 1918
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v9, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1919
    .local v8, cursor1:Landroid/database/Cursor;
    if-eqz v8, :cond_e

    .line 1920
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1921
    const/4 v13, 0x0

    .local v13, k:I
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_d

    .line 1922
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1923
    .restart local v15       #recipientAddress:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1925
    .restart local v5       #addresses:[Ljava/lang/String;
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1926
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1932
    :goto_5
    const/4 v14, 0x1

    .line 1933
    .local v14, match:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 1935
    const/4 v12, 0x0

    .local v12, j:I
    :goto_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 1937
    aget-object v21, v5, v10

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    aget-object v21, v5, v10

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_a

    .line 1940
    :cond_2
    const-string v20, "MmsSmsV2Provider"

    const-string v21, "mismatch"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/4 v14, 0x0

    .line 1945
    :cond_3
    if-nez v14, :cond_b

    .line 1949
    .end local v12           #j:I
    :cond_4
    if-eqz v14, :cond_f

    .line 1951
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 1952
    const-string v20, "MmsSmsV2Provider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Found match thread: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1954
    .local v19, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    :goto_8
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    .line 1955
    aget-object v20, v5, v10

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1892
    .end local v8           #cursor1:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v13           #k:I
    .end local v14           #match:Z
    .end local v19           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    .line 1893
    const/16 v20, 0x0

    aput-object v15, v5, v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1874
    .end local v4           #THREAD_QUERY:Ljava/lang/String;
    .end local v5           #addresses:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #recipientAddress:Ljava/lang/String;
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 1896
    .restart local v4       #THREAD_QUERY:Ljava/lang/String;
    .restart local v5       #addresses:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #i:I
    .restart local v15       #recipientAddress:Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1908
    .end local v5           #addresses:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #recipientAddress:Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1912
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1928
    .restart local v5       #addresses:[Ljava/lang/String;
    .restart local v8       #cursor1:Landroid/database/Cursor;
    .restart local v13       #k:I
    .restart local v15       #recipientAddress:Ljava/lang/String;
    :cond_9
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    .line 1929
    const/16 v20, 0x0

    aput-object v15, v5, v20

    goto/16 :goto_5

    .line 1935
    .restart local v10       #i:I
    .restart local v12       #j:I
    .restart local v14       #match:Z
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1933
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1956
    .end local v12           #j:I
    .restart local v19       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v3

    .line 1957
    .local v3, Ids:[J
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v11

    .line 1958
    .local v11, ids:Ljava/lang/String;
    const-string v20, "MmsSmsV2Provider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "recipient_ids: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const-string v16, "UPDATE threads SET recipient_ids = \'"

    .line 1961
    .local v16, sql:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1962
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' WHERE _id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1963
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1964
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1965
    sget-object v20, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1971
    .end local v3           #Ids:[J
    .end local v5           #addresses:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #ids:Ljava/lang/String;
    .end local v14           #match:Z
    .end local v15           #recipientAddress:Ljava/lang/String;
    .end local v16           #sql:Ljava/lang/String;
    .end local v19           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    .end local v4           #THREAD_QUERY:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #cursor1:Landroid/database/Cursor;
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #k:I
    :cond_e
    :goto_9
    monitor-exit p0

    return-wide v17

    .line 1969
    .restart local v4       #THREAD_QUERY:Ljava/lang/String;
    .restart local v5       #addresses:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #cursor1:Landroid/database/Cursor;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #i:I
    .restart local v13       #k:I
    .restart local v14       #match:Z
    .restart local v15       #recipientAddress:Ljava/lang/String;
    :cond_f
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1921
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1974
    .end local v5           #addresses:[Ljava/lang/String;
    .end local v8           #cursor1:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v13           #k:I
    .end local v14           #match:Z
    .end local v15           #recipientAddress:Ljava/lang/String;
    :cond_10
    const-string v20, "MmsSmsV2Provider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Found match recipient_ids: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , ThreadId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9
.end method

.method private static compareAddress(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "recipients"
    .parameter "address"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 578
    if-eqz p1, :cond_1

    .line 579
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    .line 581
    .local v1, isEmail:Z
    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 582
    const/4 v1, 0x1

    .line 584
    :cond_0
    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 590
    .end local v1           #isEmail:Z
    :cond_1
    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 591
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_3

    .line 593
    aget-object v5, v2, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v0

    invoke-static {v5, p1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v3, v4

    .line 599
    .end local v0           #i:I
    .end local v2           #values:[Ljava/lang/String;
    :cond_3
    :goto_1
    return v3

    .line 592
    .restart local v0       #i:I
    .restart local v2       #values:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0           #i:I
    .end local v2           #values:[Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 2039
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    .end local p1
    :goto_0
    return-object p1

    .line 2041
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 2042
    goto :goto_0

    .line 2044
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
    .line 2741
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 2742
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2743
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2744
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 2742
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2746
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 2749
    :cond_1
    return-object v1
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 25
    .parameter "uri"
    .parameter
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "bgDelete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 3252
    .local p2, thread_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v23, 0x0

    .line 3253
    .local v23, tid:Ljava/lang/Long;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3254
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v22

    .line 3256
    .local v22, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 3263
    .end local v22           #threadId:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3265
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v23, :cond_4

    .line 3267
    const-string v19, ""

    .line 3268
    .local v19, sel:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/providers/telephony/ContactMessageStore;->isFakedContactId(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/providers/telephony/ContactMessageStore;->getThreadIdFromFakeId(Landroid/content/Context;J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3279
    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3280
    .local v5, finalSelection:Ljava/lang/String;
    const-string v3, "MmsSmsV2Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finalSelection> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    const/4 v10, 0x0

    .line 3285
    .local v10, affectedIDs:[J
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3286
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

    .line 3287
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_6

    .line 3288
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 3289
    .local v20, size:I
    if-lez v20, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3290
    move/from16 v0, v20

    new-array v10, v0, [J

    .line 3291
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 3292
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v10, v16

    .line 3293
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 3291
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3257
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #finalSelection:Ljava/lang/String;
    .end local v10           #affectedIDs:[J
    .end local v12           #c:Landroid/database/Cursor;
    .end local v16           #i:I
    .end local v19           #sel:Ljava/lang/String;
    .end local v20           #size:I
    .restart local v22       #threadId:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 3258
    .local v14, e:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsV2Provider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3259
    const/4 v13, 0x0

    .line 3362
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v22           #threadId:Ljava/lang/String;
    :cond_2
    :goto_2
    return v13

    .line 3271
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v19       #sel:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdsFromContactId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 3275
    .end local v19           #sel:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadsSelection(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "locked = 0"

    invoke-static {v3, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .restart local v19       #sel:Ljava/lang/String;
    goto/16 :goto_0

    .line 3296
    .restart local v5       #finalSelection:Ljava/lang/String;
    .restart local v10       #affectedIDs:[J
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v20       #size:I
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3304
    .end local v12           #c:Landroid/database/Cursor;
    .end local v20           #size:I
    :cond_6
    const/4 v13, 0x0

    .line 3305
    .local v13, count:I
    if-eqz p5, :cond_e

    .line 3306
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 3308
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "thread_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3309
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3315
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v3

    add-int/2addr v13, v3

    .line 3316
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

    .line 3317
    .restart local v12       #c:Landroid/database/Cursor;
    if-eqz v12, :cond_d

    .line 3318
    const/16 v21, 0x32

    .line 3319
    .local v21, step:I
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_b

    .line 3320
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3321
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3322
    .local v11, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3324
    :cond_7
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3325
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3326
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_c

    .line 3327
    const-string v19, "_id in ("

    .line 3328
    add-int/lit8 v3, v16, 0x32

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    add-int/lit8 v15, v16, 0x32

    .line 3329
    .local v15, end:I
    :goto_4
    move/from16 v18, v16

    .local v18, j:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v15, :cond_a

    .line 3330
    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 3331
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

    .line 3332
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3329
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 3328
    .end local v15           #end:I
    .end local v18           #j:I
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto :goto_4

    .line 3334
    .restart local v15       #end:I
    .restart local v18       #j:I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3335
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3336
    const-string v3, "sms"

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    .line 3337
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 3326
    add-int/lit8 v16, v16, 0x32

    goto/16 :goto_3

    .line 3340
    .end local v11           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #end:I
    .end local v16           #i:I
    .end local v18           #j:I
    :cond_b
    const-string v3, "sms"

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    .line 3341
    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3351
    .end local v12           #c:Landroid/database/Cursor;
    .end local v21           #step:I
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_d
    :goto_6
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3352
    if-eqz v10, :cond_2

    .line 3354
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 3355
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.deleteSMS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3356
    const-string v3, "affectedIDs"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3346
    .end local v17           #intent:Landroid/content/Intent;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-static {v3, v2, v5, v0, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    const-string v4, "sms"

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int v13, v3, v4

    goto :goto_6
.end method

.method private deleteToTrashcanConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 27
    .parameter "uri"
    .parameter
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "btrash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 3371
    .local p2, thread_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v25, 0x0

    .line 3372
    .local v25, tid:Ljava/lang/Long;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3373
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    .line 3375
    .local v24, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 3382
    .end local v24           #threadId:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3384
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v25, :cond_7

    .line 3386
    const-string v21, ""

    .line 3387
    .local v21, sel:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/providers/telephony/ContactMessageStore;->isFakedContactId(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lcom/android/providers/telephony/ContactMessageStore;->getThreadIdFromFakeId(Landroid/content/Context;J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3398
    :goto_0
    const-string v4, "thread_id > 0"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3400
    const/16 v22, 0x0

    .line 3401
    .local v22, smssql:Ljava/lang/String;
    const/16 v20, 0x0

    .line 3402
    .local v20, mmssql:Ljava/lang/String;
    if-eqz p5, :cond_2

    .line 3404
    const-string v4, "type > 0"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3405
    const-string v4, "msg_box > 0"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3407
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3408
    .local v17, finalSelection:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3409
    .local v6, finalSmssql:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3410
    .local v16, finalMmssql:Ljava/lang/String;
    const-string v4, "MmsSmsV2Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalSelection> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    const-string v4, "MmsSmsV2Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalSmssql> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const-string v4, "MmsSmsV2Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalMmssql> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3416
    .local v26, values:Landroid/content/ContentValues;
    const-string v4, "type"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3417
    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3420
    const/4 v13, 0x0

    .line 3421
    .local v13, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v4, v3, v0, v1}, Lcom/android/providers/telephony/MmsProvider;->deleteToTrashcanConversation(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v13, v4

    .line 3422
    const-string v4, "sms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3423
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 3424
    const/16 v23, 0x32

    .line 3425
    .local v23, step:I
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_a

    .line 3426
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3427
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3428
    .local v11, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3430
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3431
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3432
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_b

    .line 3433
    const-string v22, "_id in ("

    .line 3434
    add-int/lit8 v4, v18, 0x32

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    add-int/lit8 v15, v18, 0x32

    .line 3435
    .local v15, end:I
    :goto_2
    move/from16 v19, v18

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v15, :cond_9

    .line 3436
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 3437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3438
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3435
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 3376
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #finalSmssql:Ljava/lang/String;
    .end local v11           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #count:I
    .end local v15           #end:I
    .end local v16           #finalMmssql:Ljava/lang/String;
    .end local v17           #finalSelection:Ljava/lang/String;
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v20           #mmssql:Ljava/lang/String;
    .end local v21           #sel:Ljava/lang/String;
    .end local v22           #smssql:Ljava/lang/String;
    .end local v23           #step:I
    .end local v26           #values:Landroid/content/ContentValues;
    .restart local v24       #threadId:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 3377
    .local v14, e:Ljava/lang/NumberFormatException;
    const-string v4, "MmsSmsV2Provider"

    const-string v5, "Thread ID must be a Long."

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3378
    const/4 v13, 0x0

    .line 3451
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v24           #threadId:Ljava/lang/String;
    :cond_5
    :goto_4
    return v13

    .line 3390
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v21       #sel:Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdsFromContactId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 3394
    .end local v21           #sel:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadsSelection(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "locked = 0"

    invoke-static {v4, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #sel:Ljava/lang/String;
    goto/16 :goto_0

    .line 3434
    .restart local v6       #finalSmssql:Ljava/lang/String;
    .restart local v11       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #count:I
    .restart local v16       #finalMmssql:Ljava/lang/String;
    .restart local v17       #finalSelection:Ljava/lang/String;
    .restart local v18       #i:I
    .restart local v20       #mmssql:Ljava/lang/String;
    .restart local v22       #smssql:Ljava/lang/String;
    .restart local v23       #step:I
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto/16 :goto_2

    .line 3440
    .restart local v15       #end:I
    .restart local v19       #j:I
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3441
    const-string v4, "type > 0"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3442
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3443
    const-string v4, "sms"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v13, v4

    .line 3444
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 3432
    add-int/lit8 v18, v18, 0x32

    goto/16 :goto_1

    .line 3447
    .end local v11           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #end:I
    .end local v18           #i:I
    .end local v19           #j:I
    :cond_a
    const-string v4, "sms"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v13, v4

    .line 3448
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4
.end method

.method public static extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2
    .parameter "uri"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 1423
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, valueS:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1426
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1429
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1427
    .restart local p2
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private fetchMessagesFromUnifiedFolder(II[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11
    .parameter "mmsFolder"
    .parameter "smsFolder"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "IsSortbyDate2"

    .prologue
    .line 3771
    const-string v7, "(m_type = 128 OR m_type = 132 OR m_type = 130)"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->interpretMmsFolderSelection(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3773
    .local v3, constraint:Ljava/lang/String;
    invoke-static {p4, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3775
    .local v4, finalMmsSelection:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->interpretSmsFolderSelection(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3779
    .local v5, finalSmsSelection:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND thread_id > 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3780
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND thread_id > 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3783
    const-string v1, "Select "

    .line 3784
    .local v1, ProjctionSelect:Ljava/lang/String;
    if-nez p6, :cond_0

    .line 3786
    const/4 v7, 0x1

    move/from16 v0, p7

    if-ne v0, v7, :cond_1

    .line 3787
    const-string p6, "date2 DESC"

    .line 3791
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v7, p3

    if-ge v6, v7, :cond_3

    .line 3792
    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_2

    .line 3793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3791
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3789
    .end local v6           #i:I
    :cond_1
    const-string p6, "normalized_date DESC"

    goto :goto_0

    .line 3795
    .restart local v6       #i:I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3797
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->TraditionalBaseCommand:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object p6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) order by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3801
    .local v2, TraditionalCommand:Ljava/lang/String;
    sget-object v7, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
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
    .line 1518
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1520
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

    .line 1521
    .local v0, address:Ljava/lang/String;
    const-string v5, "insert-address-token"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1522
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSingleAddressId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1523
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 1524
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1526
    :cond_1
    const-string v5, "MmsSmsV2Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Address ID not found for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #id:J
    :cond_2
    return-object v4
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
    .line 1702
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v0

    .line 1703
    .local v0, Ids:[J
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getCommaSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v4

    .line 1705
    .local v4, recipientIds:Ljava/lang/String;
    const-string v5, "MmsSmsV2Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recipientIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string v1, "SELECT contacts.contact_id from contacts, htcthreads WHERE htcthreads.recipient_ids IN (%s) AND  htcthreads._id = contacts.htcthread_id"

    .line 1710
    .local v1, THREAD_QUERY:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1711
    const-string v5, "MmsSmsV2Provider"

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

    .line 1712
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1713
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1714
    .local v2, cursor:Landroid/database/Cursor;
    monitor-exit p0

    return-object v2

    .line 1702
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
    .line 1589
    array-length v2, p1

    .line 1590
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1592
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1593
    if-eqz v1, :cond_0

    .line 1594
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1598
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "IsSortbyDate2"

    .prologue
    .line 2570
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2573
    .local v0, unionQuery:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getContactMessageStore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 863
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 864
    invoke-static {p0}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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

    .line 2717
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2724
    .local v9, extraSelection:Ljava/lang/String;
    invoke-static {p3, v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2725
    .local v3, finalSelection:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2726
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2728
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2729
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2730
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

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

    .line 2718
    :catch_0
    move-exception v8

    .line 2719
    .local v8, exception:Ljava/lang/NumberFormatException;
    const-string v1, "MmsSmsV2Provider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/database/Cursor;
    .locals 10
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupByDate"
    .parameter "groupByGID"
    .parameter "IsSortbyDate2"

    .prologue
    .line 2602
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2610
    .local v1, contactId:J
    invoke-static {v1, v2}, Lcom/android/providers/telephony/ContactMessageStore;->isFakedContactId(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2612
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lcom/android/providers/telephony/ContactMessageStore;->getThreadIdFromFakeId(Landroid/content/Context;J)J

    move-result-wide v5

    .line 2613
    .local v5, tid:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_0

    .line 2614
    const-wide/16 v5, -0x1

    .line 2615
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2622
    .end local v5           #tid:J
    :goto_0
    invoke-static {p3, p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2624
    .local v4, finalSelection:Ljava/lang/String;
    move/from16 v0, p8

    invoke-static {p2, v4, p4, p5, v0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2627
    .local v7, unionQuery:Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 2628
    const/4 v8, 0x1

    move/from16 v0, p8

    if-ne v0, v8, :cond_3

    .line 2629
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY date2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2640
    :cond_1
    :goto_1
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sget-object v9, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .end local v1           #contactId:J
    .end local v4           #finalSelection:Ljava/lang/String;
    .end local v7           #unionQuery:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 2603
    :catch_0
    move-exception v3

    .line 2604
    .local v3, exception:Ljava/lang/NumberFormatException;
    const-string v8, "MmsSmsV2Provider"

    const-string v9, "Thread ID must be a Long."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    const/4 v8, 0x0

    goto :goto_2

    .line 2619
    .end local v3           #exception:Ljava/lang/NumberFormatException;
    .restart local v1       #contactId:J
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v1, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdsFromContactId(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2631
    .restart local v4       #finalSelection:Ljava/lang/String;
    .restart local v7       #unionQuery:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY normalized_date"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2634
    :cond_4
    if-eqz p7, :cond_1

    .line 2635
    const/4 v8, 0x1

    move/from16 v0, p8

    if-ne v0, v8, :cond_5

    .line 2636
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY gid ORDER BY date2 ASC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2638
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY gid ORDER BY normalized_date ASC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 2459
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2460
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2462
    .local v18, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2463
    const-string v2, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2465
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2466
    .local v14, columns:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2468
    .local v3, innerMmsProjection:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 2470
    .local v15, innerSmsProjection:[Ljava/lang/String;
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "thread_id"

    const-string v10, "date = MAX(date)"

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2475
    .local v16, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "date = MAX(date)"

    move-object/from16 v4, v18

    move-object v6, v15

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2480
    .local v19, smsSubQuery:Ljava/lang/String;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2482
    .local v21, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2484
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

    .line 2487
    .local v20, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2489
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

    .line 2491
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "tid"

    const-string v9, "normalized_date = MAX(normalized_date)"

    const/4 v11, 0x0

    move-object v5, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2495
    .local v17, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "address"

    .prologue
    .line 3700
    if-nez p1, :cond_1

    .line 3701
    const-string v3, ""

    .line 3729
    :cond_0
    :goto_0
    return-object v3

    .line 3704
    :cond_1
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v5, :cond_6

    .line 3705
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 3706
    .local v2, localNumber:Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3707
    .local v4, values:[Ljava/lang/String;
    const-string v3, ""

    .line 3708
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 3709
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 3710
    aget-object v5, v4, v1

    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x104011e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3708
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3714
    :cond_3
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/android/providers/telephony/ContactMessageStore;->getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    move-result-object v0

    .line 3715
    .local v0, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    if-eqz v0, :cond_4

    .line 3716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3718
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3723
    .end local v0           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3725
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3729
    .end local v1           #i:I
    .end local v2           #localNumber:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #values:[Ljava/lang/String;
    :cond_6
    invoke-static {p0, p1}, Landroid/provider/Telephony$Mms;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private getDraftList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 44
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    .line 2179
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 2180
    .local v35, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2181
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v39, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v39 .. v39}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2183
    .local v39, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2184
    const-string v3, "sms"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg_box = 3 AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2189
    .local v8, finalMmsSelection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type = 3 AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2192
    .local v15, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 2193
    .local v38, smsColumns:[Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2195
    .local v4, mmsColumns:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2197
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2200
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x39

    if-eq v3, v6, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x60

    if-ne v3, v6, :cond_2

    .line 2203
    :cond_0
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2207
    .local v36, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v39

    move-object/from16 v11, v38

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2226
    .local v40, smsSubQuery:Ljava/lang/String;
    :goto_0
    new-instance v42, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v42 .. v42}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2228
    .local v42, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2230
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v40, v3, v6

    const/4 v6, 0x1

    aput-object v36, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2234
    .local v41, unionQuery:Ljava/lang/String;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2236
    .local v19, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2240
    invoke-static/range {v38 .. v38}, Lcom/android/providers/telephony/MmsSmsV2Provider;->appendNormalizedDateField([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2241
    .local v20, unionSelectColumn:[Ljava/lang/String;
    const/16 v25, 0x0

    .line 2242
    .local v25, sortNormalizedDate:Ljava/lang/String;
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2243
    :cond_1
    new-instance v25, Ljava/lang/String;

    .end local v25           #sortNormalizedDate:Ljava/lang/String;
    const-string v3, "normalized_date DESC"

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2246
    .restart local v25       #sortNormalizedDate:Ljava/lang/String;
    :goto_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2248
    .local v43, unionSelectQuery:Ljava/lang/String;
    new-instance v26, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v26 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2249
    .local v26, outerQueryBuilder_final:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2252
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v27, v38

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2259
    .local v37, outerQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 2213
    .end local v19           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v20           #unionSelectColumn:[Ljava/lang/String;
    .end local v25           #sortNormalizedDate:Ljava/lang/String;
    .end local v26           #outerQueryBuilder_final:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v36           #mmsSubQuery:Ljava/lang/String;
    .end local v37           #outerQuery:Ljava/lang/String;
    .end local v40           #smsSubQuery:Ljava/lang/String;
    .end local v41           #unionQuery:Ljava/lang/String;
    .end local v42           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v43           #unionSelectQuery:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 2215
    .local v18, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v34

    .line 2217
    .local v34, innerSmsProjection:[Ljava/lang/String;
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

    move-result-object v36

    .line 2221
    .restart local v36       #mmsSubQuery:Ljava/lang/String;
    const-string v20, "transport_type"

    sget-object v22, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/16 v23, 0x1

    const-string v24, "sms"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, v39

    move-object/from16 v21, v34

    move-object/from16 v25, v15

    move-object/from16 v26, p3

    invoke-virtual/range {v19 .. v28}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .restart local v40       #smsSubQuery:Ljava/lang/String;
    goto/16 :goto_0

    .line 2245
    .end local v18           #innerMmsProjection:[Ljava/lang/String;
    .end local v34           #innerSmsProjection:[Ljava/lang/String;
    .restart local v19       #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v20       #unionSelectColumn:[Ljava/lang/String;
    .restart local v25       #sortNormalizedDate:Ljava/lang/String;
    .restart local v41       #unionQuery:Ljava/lang/String;
    .restart local v42       #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_3
    move-object/from16 v25, p4

    goto/16 :goto_1
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 2141
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "thread_id"

    aput-object v5, v3, v2

    .line 2142
    .local v3, innerProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2143
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2145
    .local v16, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2146
    const-string v2, "sms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2148
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "msg_box=3"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2153
    .local v14, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "type=3"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v16

    move-object v6, v3

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2158
    .local v17, smsSubQuery:Ljava/lang/String;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2160
    .local v19, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2162
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

    .line 2165
    .local v18, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2167
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

    .line 2169
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2172
    .local v15, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

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
    .line 2523
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2524
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v17, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2526
    .local v17, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2527
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2529
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2531
    .local v3, innerMmsProjection:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 2533
    .local v14, innerSmsProjection:[Ljava/lang/String;
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "thread_id"

    const-string v10, "locked=1"

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2538
    .local v15, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "locked=1"

    move-object/from16 v4, v17

    move-object v6, v14

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2543
    .local v18, smsSubQuery:Ljava/lang/String;
    new-instance v20, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2545
    .local v20, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2547
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

    .line 2550
    .local v19, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2552
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

    .line 2554
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "tid"

    const/4 v9, 0x0

    const-string v11, "1"

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2561
    .local v16, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getFormalConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"
    .parameter "IsSortbyDate2"

    .prologue
    .line 2098
    if-eqz p2, :cond_0

    .line 2099
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "order"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 2100
    .local v9, index:I
    if-lez v9, :cond_0

    .line 2101
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 2104
    .end local v9           #index:I
    :cond_0
    move-object/from16 v0, p5

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2105
    .local v4, constraint:Ljava/lang/String;
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2107
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_4

    .line 2108
    const-string p4, " date2 DESC"

    .line 2112
    :cond_2
    :goto_0
    const-string v2, "contact_threads"

    .line 2113
    .local v2, ViewName:Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_3

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_date2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2115
    :cond_3
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2119
    .local v10, tcursor:Landroid/database/Cursor;
    return-object v10

    .line 2110
    .end local v2           #ViewName:Ljava/lang/String;
    .end local v10           #tcursor:Landroid/database/Cursor;
    :cond_4
    const-string p4, " date DESC"

    goto :goto_0
.end method

.method private getGroupMessageConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 3738
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contact_threads"

    const-string v5, "htc_category"

    const/4 v6, 0x0

    const-string v7, "htc_category DESC"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3742
    .local v8, tcursor:Landroid/database/Cursor;
    return-object v8
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "phoneNumber"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 2664
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2665
    .local v19, escapedPhoneNumber:Ljava/lang/String;
    const-string v3, "pdu._id = matching_addresses.address_id"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2669
    .local v8, finalMmsSelection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(address="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OR PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v3, :cond_0

    const-string v3, ", 1))"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2675
    .local v15, finalSmsSelection:Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2676
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2678
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2679
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdu, (SELECT msg_id AS address_id FROM addr WHERE (address="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OR PHONE_NUMBERS_EQUAL(addr.address, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v3, :cond_1

    const-string v3, ", 1))) "

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "AS matching_addresses"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2691
    const-string v3, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2693
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2694
    .local v4, columns:[Ljava/lang/String;
    const-string v3, "transport_type"

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v6, 0x0

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2697
    .local v20, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x0

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v21

    move-object v11, v4

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2700
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2702
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2704
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

    .line 2707
    .local v23, unionQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 2669
    .end local v2           #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #columns:[Ljava/lang/String;
    .end local v15           #finalSmsSelection:Ljava/lang/String;
    .end local v20           #mmsSubQuery:Ljava/lang/String;
    .end local v21           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v22           #smsSubQuery:Ljava/lang/String;
    .end local v23           #unionQuery:Ljava/lang/String;
    .end local v24           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    const-string v3, ", 0))"

    goto/16 :goto_0

    .line 2680
    .restart local v2       #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v15       #finalSmsSelection:Ljava/lang/String;
    .restart local v21       #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const-string v3, ", 0))) "

    goto :goto_1
.end method

.method private getMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 2355
    const-string v0, ""

    .line 2356
    .local v0, limitCondition:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2357
    const-string v0, ""

    .line 2363
    :goto_0
    const-string v2, ""

    .line 2364
    .local v2, targetThreadId:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 2365
    const-string v2, "> 0 "

    .line 2370
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SELECT transport_type, _id, thread_id, address, body, normalized_date, \tsub, sub_cs, read, m_type, \tCOUNT() - SUM(read) AS unread_count, \tpriority, locked, is_evdo, contact_id, content_type  FROM incoming_msg_contactbase_non_vvm  WHERE thread_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GROUP BY contact_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ORDER BY normalized_date DESC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2380
    .local v1, query:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 2360
    .end local v1           #query:Ljava/lang/String;
    .end local v2           #targetThreadId:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 2368
    .restart local v2       #targetThreadId:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    aget-object v2, p3, v3

    goto :goto_1
.end method

.method private static getProviderLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 489
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 2087
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contact_threads"

    const-string v7, " date DESC"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSimpleConversationsSmsMms([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 2848
    const-string v0, "SELECT _id,message_count, date, snippet,snippet_cs,error,unread_count,recipient_address,priority,type, smstype, locked, mmsbox FROM contact_threads as A LEFT JOIN( SELECT tid, normalized_date,smstype,locked,mmsbox FROM (SELECT thread_id AS tid, date as normalized_date, type as smstype,locked ,-1 as mmsbox FROM sms       union       SELECT thread_id AS tid, date * 1000 as normalized_date, -1 as smstype, locked, msg_box as mmsbox FROM pdu LIMIT 1     )) as B ON A.date = B.normalized_date ORDER BY date DESC"

    .line 2859
    .local v0, query:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getSingleAddressId(Ljava/lang/String;)J
    .locals 14
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    .line 1471
    const-wide/16 v12, -0x1

    .line 1472
    .local v12, tempId:J
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v10

    .line 1474
    .local v10, isEmail:Z
    if-eqz v10, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1475
    .local v11, refinedAddress:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v3, "address = ?"

    .line 1479
    .local v3, selection:Ljava/lang/String;
    :goto_1
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    .line 1480
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1483
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1484
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "canonical_addresses"

    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1488
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1489
    new-instance v8, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1490
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v8, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1493
    const-string v1, "canonical_addresses"

    const-string v2, "address"

    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 1495
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->map:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    if-eqz v9, :cond_0

    .line 1506
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v1, v12

    .line 1510
    .end local v8           #contentValues:Landroid/content/ContentValues;
    :goto_2
    return-wide v1

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #refinedAddress:Ljava/lang/String;
    :cond_1
    move-object v11, p1

    .line 1474
    goto :goto_0

    .line 1475
    .restart local v11       #refinedAddress:Ljava/lang/String;
    :cond_2
    const-string v3, "PHONE_NUMBERS_EQUAL(address, ?)"

    goto :goto_1

    .line 1499
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1500
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1501
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->map:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    if-eqz v9, :cond_4

    .line 1506
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-wide v1, v12

    goto :goto_2

    .line 1505
    :cond_5
    if-eqz v9, :cond_6

    .line 1506
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1510
    :cond_6
    const-wide/16 v1, -0x1

    goto :goto_2

    .line 1505
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 1506
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method private getSmsAndMmsMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/16 v7, 0x2c

    .line 2397
    const-string v4, "SELECT "

    .line 2398
    .local v4, query:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2399
    .local v3, projectionBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 2400
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 2401
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2405
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 2406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    .line 2407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2409
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

    .line 2421
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ( SELECT pdu._id AS _id, addr.address AS address, pdu.read AS read, pdu.thread_id AS thread_id, pdu.date * 1000 AS date, 0 AS msg_type , pdu.sub AS sub ,pdu.sub_cs as sub_cs, -1 as sms_type, pdu.m_type as mms_type FROM addr, pdu WHERE addr.msg_id = pdu._id AND addr.address <> \'insert_address_token\' AND pdu.thread_id IS NOT NULL AND addr.type = 137 UNION ALL   SELECT sms._id AS _id, sms.address AS address, sms.read AS read, sms.thread_id as thread_id, sms.date AS date, 1 AS msg_type , sms.body as sub ,  NULL as sub_cs, sms.type as sms_type, -1 as mms_type FROM sms WHERE sms.address <> \'insert_address_token\' AND sms.thread_id IS NOT NULL ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2423
    if-eqz p2, :cond_2

    .line 2424
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

    .line 2426
    :cond_2
    if-eqz p4, :cond_3

    .line 2427
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

    .line 2429
    :cond_3
    sget-object v6, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 2411
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
    .line 1537
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 1538
    .local v5, size:I
    new-array v4, v5, [J

    .line 1539
    .local v4, result:[J
    const/4 v0, 0x0

    .line 1541
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

    .line 1542
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

    .line 1544
    .end local v3           #number:Ljava/lang/Long;
    :cond_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 1545
    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 1553
    array-length v2, p1

    .line 1554
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1556
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1557
    if-eqz v1, :cond_0

    .line 1558
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1560
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "numbers"

    .prologue
    .line 1571
    array-length v2, p1

    .line 1572
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1574
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1575
    if-eqz v1, :cond_0

    .line 1576
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1578
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1580
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getThreadId(JLjava/lang/String;)J
    .locals 11
    .parameter "contactId"
    .parameter "address"

    .prologue
    .line 604
    const-class v9, Lcom/android/providers/telephony/MmsSmsV2Provider;

    monitor-enter v9

    const-wide/16 v6, 0x0

    .line 611
    .local v6, threadId:J
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT T.thread_id, recipient_address FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v10}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " LEFT JOIN htcthreads T "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "ON htcthread_id = T._id "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "WHERE contact_id = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, rawQuery:Ljava/lang/String;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 618
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 619
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 620
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 621
    .local v5, size:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 622
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 623
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, recipient:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4, p2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->compareAddress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 626
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 631
    .end local v4           #recipient:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v2           #i:I
    .end local v5           #size:I
    :cond_1
    monitor-exit v9

    return-wide v6

    .line 629
    .restart local v2       #i:I
    .restart local v4       #recipient:Ljava/lang/String;
    .restart local v5       #size:I
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i:I
    .end local v3           #rawQuery:Ljava/lang/String;
    .end local v4           #recipient:Ljava/lang/String;
    .end local v5           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 14
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
    .line 1989
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v1

    .line 1990
    .local v1, Ids:[J
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v7

    .line 1993
    .local v7, recipientIds:Ljava/lang/String;
    array-length v10, v1

    new-array v0, v10, [Ljava/lang/String;

    .line 1994
    .local v0, Address:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_0

    .line 1995
    iget-object v10, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->map:Ljava/util/Map;

    aget-wide v11, v1, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v0, v5

    .line 1996
    const-string v10, "MmsSmsV2Provider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ids: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-wide v12, v1, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1999
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2000
    .local v6, recipientAddress:Ljava/lang/String;
    const-string v10, "MmsSmsV2Provider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recipientIds: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    sget-object v10, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2006
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 2020
    .local v3, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT _id FROM threads WHERE _id = ?"

    .line 2021
    .local v2, THREAD_QUERY:Ljava/lang/String;
    invoke-direct {p0, v7, p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->checkRecipientIds(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v8

    .line 2022
    .local v8, threadId:J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_1

    .line 2023
    const-string v10, "MmsSmsV2Provider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query thread: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2034
    :goto_1
    monitor-exit p0

    return-object v3

    .line 2027
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {p0, v7, v10, v6}, Lcom/android/providers/telephony/MmsSmsV2Provider;->insertThread(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v8

    .line 2028
    const-string v10, "MmsSmsV2Provider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Insert new thread: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string v2, "SELECT _id FROM threads WHERE _id = ?"

    .line 2030
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 1989
    .end local v0           #Address:[Ljava/lang/String;
    .end local v1           #Ids:[J
    .end local v2           #THREAD_QUERY:Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #i:I
    .end local v6           #recipientAddress:Ljava/lang/String;
    .end local v7           #recipientIds:Ljava/lang/String;
    .end local v8           #threadId:J
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private getThreadIdArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3202
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3203
    .local v9, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v3

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3208
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 3210
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3211
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3214
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3217
    :cond_1
    return-object v9
.end method

.method private declared-synchronized getThreadIdsFromContactId(J)Ljava/lang/String;
    .locals 10
    .parameter "contactId"

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v1}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 822
    .local v8, cursor:Landroid/database/Cursor;
    const-string v9, ""

    .line 824
    .local v9, ids:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 826
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 828
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 829
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 832
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :cond_2
    monitor-exit p0

    return-object v9

    .line 831
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 820
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ids:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getThreadListFromContactId(J)[Ljava/lang/String;
    .locals 11
    .parameter "contactId"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v1}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 843
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v9, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 846
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 847
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 849
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 856
    .local v10, t:[Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    monitor-exit p0

    return-object v10

    .line 841
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #t:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getThreadsSelection(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 3224
    if-nez p1, :cond_1

    .line 3241
    :cond_0
    :goto_0
    return-object v3

    .line 3225
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3226
    .local v2, size:I
    const/4 v1, 0x0

    .line 3227
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 3228
    if-nez v0, :cond_2

    .line 3229
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    const-string v4, "thread_id in ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3230
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3232
    :cond_2
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3235
    :cond_3
    if-eqz v1, :cond_0

    .line 3236
    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3239
    .local v3, value:Ljava/lang/String;
    goto :goto_0
.end method

.method private getTrashList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 44
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    .line 2267
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 2268
    .local v35, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2269
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v39, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v39 .. v39}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2271
    .local v39, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2272
    const-string v3, "sms"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg_box < 0 AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2277
    .local v8, finalMmsSelection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type < 0 AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2280
    .local v15, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 2281
    .local v38, smsColumns:[Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2283
    .local v4, mmsColumns:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2285
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2288
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x39

    if-eq v3, v6, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x60

    if-ne v3, v6, :cond_2

    .line 2291
    :cond_0
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2295
    .local v36, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v39

    move-object/from16 v11, v38

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2314
    .local v40, smsSubQuery:Ljava/lang/String;
    :goto_0
    new-instance v42, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v42 .. v42}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2316
    .local v42, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2318
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v40, v3, v6

    const/4 v6, 0x1

    aput-object v36, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2322
    .local v41, unionQuery:Ljava/lang/String;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2324
    .local v19, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2328
    invoke-static/range {v38 .. v38}, Lcom/android/providers/telephony/MmsSmsV2Provider;->appendNormalizedDateField([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2329
    .local v20, unionSelectColumn:[Ljava/lang/String;
    const/16 v25, 0x0

    .line 2330
    .local v25, sortNormalizedDate:Ljava/lang/String;
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2331
    :cond_1
    new-instance v25, Ljava/lang/String;

    .end local v25           #sortNormalizedDate:Ljava/lang/String;
    const-string v3, "normalized_date DESC"

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2334
    .restart local v25       #sortNormalizedDate:Ljava/lang/String;
    :goto_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2336
    .local v43, unionSelectQuery:Ljava/lang/String;
    new-instance v26, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v26 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2337
    .local v26, outerQueryBuilder_final:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2340
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v27, v38

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2347
    .local v37, outerQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 2301
    .end local v19           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v20           #unionSelectColumn:[Ljava/lang/String;
    .end local v25           #sortNormalizedDate:Ljava/lang/String;
    .end local v26           #outerQueryBuilder_final:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v36           #mmsSubQuery:Ljava/lang/String;
    .end local v37           #outerQuery:Ljava/lang/String;
    .end local v40           #smsSubQuery:Ljava/lang/String;
    .end local v41           #unionQuery:Ljava/lang/String;
    .end local v42           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v43           #unionSelectQuery:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 2303
    .local v18, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v34

    .line 2305
    .local v34, innerSmsProjection:[Ljava/lang/String;
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

    move-result-object v36

    .line 2309
    .restart local v36       #mmsSubQuery:Ljava/lang/String;
    const-string v20, "transport_type"

    sget-object v22, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    const/16 v23, 0x1

    const-string v24, "sms"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, v39

    move-object/from16 v21, v34

    move-object/from16 v25, v15

    move-object/from16 v26, p3

    invoke-virtual/range {v19 .. v28}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .restart local v40       #smsSubQuery:Ljava/lang/String;
    goto/16 :goto_0

    .line 2333
    .end local v18           #innerMmsProjection:[Ljava/lang/String;
    .end local v34           #innerSmsProjection:[Ljava/lang/String;
    .restart local v19       #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v20       #unionSelectColumn:[Ljava/lang/String;
    .restart local v25       #sortNormalizedDate:Ljava/lang/String;
    .restart local v41       #unionQuery:Ljava/lang/String;
    .restart local v42       #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_3
    move-object/from16 v25, p4

    goto/16 :goto_1
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    .line 2755
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 2757
    .local v27, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2758
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v32, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v32 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2760
    .local v32, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2761
    const-string v3, "sms"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2763
    const-string v3, "( thread_id > 0 AND msg_box=4 AND m_type=128)"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2766
    .local v26, mmsConstraint:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2778
    .local v8, finalMmsSelection:Ljava/lang/String;
    const-string v3, "( thread_id > 0 AND type = 5)"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2783
    .local v31, smsConstraint:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2785
    .local v15, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 2786
    .local v30, smsColumns:[Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/providers/telephony/MmsSmsV2Provider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 2787
    .local v25, mmsColumns:[Ljava/lang/String;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2789
    .local v4, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 2792
    .local v24, innerSmsProjection:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2793
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2794
    const-string v3, "err_type"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2797
    const-string v3, "(SELECT contact_id FROM contacts WHERE contacts.thread_id = pdu.thread_id) AS thread_id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2798
    const/4 v3, 0x4

    const-string v6, "(SELECT contact_id FROM contacts WHERE contacts.thread_id = pdu.thread_id) AS thread_id"

    aput-object v6, v4, v3

    .line 2800
    new-instance v12, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v12, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2801
    .local v12, columnsPresentInSMSTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "(SELECT contact_id FROM contacts WHERE contacts.thread_id = sms.thread_id) AS thread_id"

    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2802
    const/4 v3, 0x4

    const-string v6, "(SELECT contact_id FROM contacts WHERE contacts.thread_id = sms.thread_id) AS thread_id"

    aput-object v6, v24, v3

    .line 2805
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2809
    .local v28, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v32

    move-object/from16 v11, v24

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2813
    .local v33, smsSubQuery:Ljava/lang/String;
    new-instance v35, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v35 .. v35}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2815
    .local v35, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2817
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v33, v3, v6

    const/4 v6, 0x1

    aput-object v28, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2820
    .local v34, unionQuery:Ljava/lang/String;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2822
    .local v16, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2824
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v30

    move-object/from16 v22, p4

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2827
    .local v29, outerQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/MmsSmsV2Provider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 2055
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "sortOrder"
    .parameter "IsSortbyDate2"

    .prologue
    .line 2072
    if-nez p0, :cond_0

    .line 2073
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2074
    const-string p0, "date2 ASC"

    .line 2078
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2076
    .restart local p0
    :cond_1
    const-string p0, "normalized_date ASC"

    goto :goto_0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 2064
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->THREADS_COLUMNS:[Ljava/lang/String;

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static initializeColumnSets()V
    .locals 10

    .prologue
    .line 3657
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v1, v8

    .line 3658
    .local v1, commonColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v5, v8

    .line 3659
    .local v5, mmsOnlyColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v8

    .line 3660
    .local v6, smsOnlyColumnCount:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3662
    .local v7, unionColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3663
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3664
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3665
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3667
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 3668
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3669
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3667
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3671
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 3672
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3673
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3671
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3676
    :cond_2
    const/4 v2, 0x0

    .line 3677
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3678
    .local v0, columnName:Ljava/lang/String;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsV2Provider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v8, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 3680
    .end local v0           #columnName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private insertHtcThread(Ljava/lang/String;JLandroid/content/ContentValues;)J
    .locals 11
    .parameter "recipientIds"
    .parameter "thread_id"
    .parameter "values"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1603
    const-string v6, "MmsSmsV2Provider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertHtcThread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const-wide/16 v4, 0x0

    .line 1605
    .local v4, id:J
    const-string v3, "SELECT COUNT(_id) FROM htcthreads WHERE recipient_ids = ?"

    .line 1607
    .local v3, htcThread_query:Ljava/lang/String;
    sget-object v6, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1608
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v9

    invoke-virtual {v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1609
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    .line 1610
    .local v0, count:I
    if-eqz v1, :cond_1

    .line 1611
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1612
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1614
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1617
    :cond_1
    if-gtz v0, :cond_3

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-lez v6, :cond_3

    .line 1618
    const-string v6, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1619
    const-string v6, "message_count"

    invoke-virtual {p4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1620
    const-string v6, "date"

    invoke-virtual {p4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1621
    const-string v6, "type"

    invoke-virtual {p4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1622
    sget-object v6, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "htcthreads"

    invoke-virtual {v6, v7, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1623
    const-string v6, "MmsSmsV2Provider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v6, :cond_2

    .line 1628
    const-string v6, "__ALBAL__"

    const-string v7, "MmsSmsV2Provider  SetBackUp"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1634
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1636
    :cond_3
    return-wide v4
.end method

.method private declared-synchronized insertNewContacts(JJJ)V
    .locals 9
    .parameter "threadId"
    .parameter "htcthreadId"
    .parameter "contactId"

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v1}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 804
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 805
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 807
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v2}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE thread_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v2}, Lcom/android/providers/telephony/ContactMessageStore;->getContactsTableStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 814
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :cond_1
    monitor-exit p0

    return-void

    .line 800
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private insertThread(Ljava/lang/String;ILjava/lang/String;)J
    .locals 11
    .parameter "recipientIds"
    .parameter "numberOfRecipients"
    .parameter "recipientAddress"

    .prologue
    .line 1644
    new-instance v10, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1646
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1647
    .local v6, date:J
    const-string v1, "date"

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1648
    const-string v1, "recipient_ids"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v1, "recipient_address"

    invoke-virtual {v10, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 1651
    const-string v1, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1653
    :cond_0
    const-string v1, "message_count"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1655
    sget-object v1, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "threads"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1658
    .local v2, thread_id:J
    invoke-direct {p0, p1, v2, v3, v10}, Lcom/android/providers/telephony/MmsSmsV2Provider;->insertHtcThread(Ljava/lang/String;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .line 1662
    .local v8, htcthread_id:J
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v1, :cond_1

    .line 1664
    const-string v1, "__ALBAL__"

    const-string v4, "MmsSmsV2Provider  SetBackUp"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1671
    :cond_1
    invoke-static {v2, v3, v8, v9, p3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->refreshcontactsTable(JJLjava/lang/String;)V

    .line 1678
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1681
    new-instance v0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 1687
    .local v0, updateNameThread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1688
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1691
    return-wide v2
.end method

.method private interpretMmsFolderSelection(I)Ljava/lang/String;
    .locals 2
    .parameter "mmsFolder"

    .prologue
    .line 3748
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3749
    const-string v0, "msg_box < 0"

    .line 3751
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private interpretSmsFolderSelection(I)Ljava/lang/String;
    .locals 2
    .parameter "smsFolder"

    .prologue
    .line 3756
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3757
    const-string v0, "type < 0"

    .line 3764
    :goto_0
    return-object v0

    .line 3758
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3759
    const-string v0, "(type IN (4, 5, 6))"

    goto :goto_0

    .line 3764
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isEnableLock()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method private isExist(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1722
    .local p2, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1724
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1727
    :cond_0
    const/4 v1, 0x1

    .line 1729
    :goto_1
    return v1

    .line 1722
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1729
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2736
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method private listInboxByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"
    .parameter "IsSortbyDate2"

    .prologue
    const/4 v1, 0x1

    .line 3827
    invoke-static {p2, p5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->fetchMessagesFromUnifiedFolder(II[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private listOutboxByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"
    .parameter "IsSortbyDate2"

    .prologue
    const/4 v1, 0x4

    .line 3843
    invoke-static {p2, p5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->fetchMessagesFromUnifiedFolder(II[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private listSentByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"
    .parameter "IsSortbyDate2"

    .prologue
    const/4 v1, 0x2

    .line 3835
    invoke-static {p2, p5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->fetchMessagesFromUnifiedFolder(II[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static makeProjectionWithDate2([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 2880
    array-length v1, p0

    .line 2881
    .local v1, projectionSize:I
    new-array v2, v1, [Ljava/lang/String;

    .line 2882
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2884
    aget-object v3, p0, v0

    const-string v4, "date2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2885
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

    .line 2882
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2887
    :cond_0
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    goto :goto_1

    .line 2889
    :cond_1
    return-object v2
.end method

.method private makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 2584
    array-length v1, p1

    .line 2585
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 2587
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "thread_id AS tid"

    aput-object v4, v2, v3

    .line 2588
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

    .line 2589
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2590
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 2589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2592
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    const/4 v4, 0x0

    .line 2870
    array-length v0, p0

    .line 2871
    .local v0, projectionSize:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 2873
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

    .line 2874
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2875
    return-object v1
.end method

.method public static refreshcontactsTable(JJLjava/lang/String;)V
    .locals 7
    .parameter "threadId"
    .parameter "htcthreadId"
    .parameter "recipientAddress"

    .prologue
    .line 564
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "MmsSmsV2Provider"

    const-string v1, "Notify ContactMessageStore new thread have been created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/ContactMessageStore;->insertContactsTable(JJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v6

    .line 569
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    goto :goto_0
.end method

.method public static refreshcontactsTable(JLjava/lang/String;)V
    .locals 2
    .parameter "threadId"
    .parameter "recipientAddress"

    .prologue
    .line 556
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->refreshcontactsTable(JJLjava/lang/String;)V

    .line 558
    return-void
.end method

.method private setUpdateMMSshortcutBroadcast()V
    .locals 3

    .prologue
    .line 3192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.mms.updateShortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3194
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3196
    return-void
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .locals 26
    .parameter "threadIdString"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "uri"

    .prologue
    .line 3576
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3582
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3584
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 3585
    .local v14, contactId:Ljava/lang/Long;
    const/16 v17, 0x0

    .line 3586
    .local v17, finalSelection:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/providers/telephony/ContactMessageStore;->isFakedContactId(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lcom/android/providers/telephony/ContactMessageStore;->getThreadIdFromFakeId(Landroid/content/Context;J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3593
    :goto_0
    const-string v4, "filter_index_on_sim"

    const/4 v5, -0x1

    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v20

    .line 3594
    .local v20, iIndexOnSim:I
    move-object/from16 v6, v17

    .line 3595
    .local v6, smsFinalSelection:Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_0

    .line 3596
    const-string v4, "(index_on_sim = -1 OR Length(index_on_sim) = 0 OR index_on_sim isnull)"

    invoke-static {v6, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3600
    :cond_0
    const/4 v11, 0x0

    .line 3601
    .local v11, affectedIDs:[J
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 3602
    .local v12, affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v4, "sms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "thread_id"

    aput-object v8, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3603
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 3604
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 3605
    .local v22, size:I
    if-lez v22, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3606
    move/from16 v0, v22

    new-array v11, v0, [J

    .line 3607
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 3608
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v11, v18

    .line 3609
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 3610
    .local v24, tid:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3611
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3612
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 3607
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 3577
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #smsFinalSelection:Ljava/lang/String;
    .end local v11           #affectedIDs:[J
    .end local v12           #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13           #c:Landroid/database/Cursor;
    .end local v14           #contactId:Ljava/lang/Long;
    .end local v17           #finalSelection:Ljava/lang/String;
    .end local v18           #i:I
    .end local v20           #iIndexOnSim:I
    .end local v22           #size:I
    .end local v24           #tid:J
    :catch_0
    move-exception v16

    .line 3578
    .local v16, exception:Ljava/lang/NumberFormatException;
    const-string v4, "MmsSmsV2Provider"

    const-string v5, "Thread ID must be a Long."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    const/4 v15, 0x0

    .line 3648
    .end local v16           #exception:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    return v15

    .line 3589
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14       #contactId:Ljava/lang/Long;
    .restart local v17       #finalSelection:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id in("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdsFromContactId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3615
    .restart local v6       #smsFinalSelection:Ljava/lang/String;
    .restart local v11       #affectedIDs:[J
    .restart local v12       #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v20       #iIndexOnSim:I
    .restart local v22       #size:I
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3619
    .end local v22           #size:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-static {v4, v3, v0, v1, v2}, Lcom/android/providers/telephony/MmsProvider;->updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    const-string v5, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int v15, v4, v5

    .line 3623
    .local v15, count:I
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 3624
    const-string v23, ""

    .line 3625
    .local v23, threadIds:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 3626
    .local v24, tid:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 3627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 3628
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    .line 3630
    .end local v24           #tid:Ljava/lang/Long;
    :cond_7
    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3635
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v23           #threadIds:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastMarkAsReadIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3636
    const-string v4, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3637
    if-eqz v11, :cond_2

    .line 3639
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 3640
    .local v21, intent:Landroid/content/Intent;
    const-string v4, "com.android.mms.markAsReadSMS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3641
    const-string v4, "affectedIDs"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 3642
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updateMessagesInUnifiedFolder(IILjava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 8
    .parameter "mmsFolder"
    .parameter "smsFolder"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "values"

    .prologue
    .line 3806
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3808
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->interpretMmsFolderSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3810
    .local v1, mmsFinalSelection:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->interpretSmsFolderSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3813
    .local v2, smsFinalSelection:Ljava/lang/String;
    const-string v5, "sms"

    invoke-virtual {v0, v5, p5, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3814
    .local v4, updatedRowsSms:I
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1, p4, p5}, Lcom/android/providers/telephony/MmsProvider;->updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 3819
    .local v3, updatedRowsMms:I
    if-nez v3, :cond_0

    if-lez v4, :cond_0

    .line 3820
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3822
    :cond_0
    add-int v5, v4, v3

    return v5
.end method


# virtual methods
.method public _delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 38
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3008
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v31

    .line 3009
    .local v31, processID:I
    const v4, 0xcb23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binder:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Delete uri:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", selection:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", selectionArgs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3013
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->checkContactTableCreated()V

    .line 3015
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 3016
    .local v25, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v23

    .line 3017
    .local v23, context:Landroid/content/Context;
    const/16 v17, 0x0

    .line 3019
    .local v17, affectedRows:I
    const-string v4, "category"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v22

    .line 3020
    .local v22, category:I
    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_0

    const-string v7, "htc_category= 0"

    .line 3021
    .local v7, categoryExpr:Ljava/lang/String;
    :goto_0
    const/16 v19, 0x0

    .line 3025
    .local v19, bg:Ljava/lang/String;
    const/16 v37, 0x0

    .line 3027
    .local v37, trash:Ljava/lang/String;
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3167
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3020
    .end local v7           #categoryExpr:Ljava/lang/String;
    .end local v19           #bg:Ljava/lang/String;
    .end local v37           #trash:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htc_category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3030
    .restart local v7       #categoryExpr:Ljava/lang/String;
    .restart local v19       #bg:Ljava/lang/String;
    .restart local v37       #trash:Ljava/lang/String;
    :sswitch_0
    const-string v4, "bg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3031
    const-string v4, "trash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3035
    if-eqz v37, :cond_1

    const-string v4, "true"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3036
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3037
    .local v6, t_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->deleteToTrashcanConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v17

    .line 3058
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 3059
    .local v33, t:Ljava/lang/Long;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_2

    .line 3042
    .end local v6           #t_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v33           #t:Ljava/lang/Long;
    :cond_1
    if-eqz v19, :cond_2

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3043
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    .line 3044
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3046
    .restart local v6       #t_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->deleteConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 3050
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto :goto_1

    .line 3047
    :catch_0
    move-exception v26

    .line 3048
    .local v26, e:Landroid/database/sqlite/SQLiteAbortException;
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3050
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto :goto_1

    .end local v26           #e:Landroid/database/sqlite/SQLiteAbortException;
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    throw v4

    .line 3053
    .end local v6           #t_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadIdArray(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3054
    .restart local v6       #t_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->deleteConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v17

    goto :goto_1

    .line 3065
    .end local v6           #t_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v34

    .line 3072
    .local v34, threadId:J
    const-string v4, "bg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3073
    const-string v4, "trash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3076
    if-eqz v37, :cond_5

    const-string v4, "true"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3077
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/telephony/MmsSmsV2Provider;->deleteToTrashcanConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v17

    .line 3096
    :goto_3
    invoke-static/range {v34 .. v35}, Lcom/android/providers/telephony/ContactMessageStore;->isFakedContactId(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Lcom/android/providers/telephony/ContactMessageStore;->getThreadIdFromFakeId(Landroid/content/Context;J)J

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 3170
    .end local v34           #threadId:J
    :cond_3
    :goto_4
    if-lez v17, :cond_4

    .line 3171
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3173
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_4

    .line 3178
    const-string v4, "__ALBAL__"

    const-string v5, "MmsSmsV2Provider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 3185
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->setUpdateMMSshortcutBroadcast()V

    move/from16 v24, v17

    .line 3187
    :goto_5
    return v24

    .line 3066
    :catch_1
    move-exception v26

    .line 3067
    .local v26, e:Ljava/lang/NumberFormatException;
    const-string v4, "MmsSmsV2Provider"

    const-string v5, "Thread ID must be a long."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3081
    .end local v26           #e:Ljava/lang/NumberFormatException;
    .restart local v34       #threadId:J
    :cond_5
    if-eqz v19, :cond_6

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3082
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    .line 3084
    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/telephony/MmsSmsV2Provider;->deleteConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v17

    .line 3088
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto :goto_3

    .line 3085
    :catch_2
    move-exception v26

    .line 3086
    .local v26, e:Landroid/database/sqlite/SQLiteAbortException;
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3088
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto :goto_3

    .end local v26           #e:Landroid/database/sqlite/SQLiteAbortException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    throw v4

    .line 3092
    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/telephony/MmsSmsV2Provider;->deleteConversation(Landroid/net/Uri;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v17

    goto/16 :goto_3

    .line 3099
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadListFromContactId(J)[Ljava/lang/String;

    move-result-object v36

    .line 3100
    .local v36, threads:[Ljava/lang/String;
    move-object/from16 v18, v36

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v33, v18, v28

    .line 3101
    .local v33, t:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 3100
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 3108
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v28           #i$:I
    .end local v30           #len$:I
    .end local v33           #t:Ljava/lang/String;
    .end local v34           #threadId:J
    .end local v36           #threads:[Ljava/lang/String;
    :sswitch_2
    const/16 v16, 0x0

    .line 3109
    .local v16, affectedIDs:[J
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND _id not in (SELECT _id FROM pdu)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3111
    .local v11, excludeMmsSelection:Ljava/lang/String;
    const-string v9, "sms"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v10, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, v25

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 3112
    .local v21, c:Landroid/database/Cursor;
    if-eqz v21, :cond_9

    .line 3113
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v32

    .line 3114
    .local v32, size:I
    if-lez v32, :cond_8

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3115
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 3116
    const/16 v27, 0x0

    .local v27, i:I
    :goto_7
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 3117
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v16, v27

    .line 3118
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 3116
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 3121
    .end local v27           #i:I
    :cond_8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 3126
    .end local v11           #excludeMmsSelection:Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    .end local v32           #size:I
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-static {v0, v1, v4, v2, v5}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v4

    const-string v5, "sms"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int v17, v4, v5

    .line 3128
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3134
    add-int/lit8 v17, v17, 0x1

    .line 3138
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3139
    if-eqz v16, :cond_3

    .line 3141
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 3142
    .local v29, intent:Landroid/content/Intent;
    const-string v4, "com.android.mms.deleteSMS"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3143
    const-string v4, "affectedIDs"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 3144
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3152
    .end local v16           #affectedIDs:[J
    .end local v29           #intent:Landroid/content/Intent;
    :sswitch_3
    :try_start_5
    const-string v4, "threads"

    const-string v5, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v17

    goto/16 :goto_4

    .line 3156
    :catch_3
    move-exception v26

    .line 3157
    .local v26, e:Ljava/lang/Exception;
    const-string v4, "MmsSmsV2Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete exception "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3162
    .end local v26           #e:Ljava/lang/Exception;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    .line 3163
    .local v20, blockNumberId:Ljava/lang/String;
    const-string v4, "blocklist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 3164
    .local v24, count:I
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->BLOCKLIST_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_5

    .line 3027
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0xb -> :sswitch_3
        0x1f -> :sswitch_0
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public _query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 92
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 910
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v91

    .line 911
    .local v91, uriMatch:I
    const/16 v73, 0x0

    .line 919
    .local v73, processID:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->checkContactTableCreated()V

    .line 921
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v32

    .line 922
    .local v32, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v60, 0x0

    .line 923
    .local v60, cursor:Landroid/database/Cursor;
    const-string v5, "category"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v55

    .line 924
    .local v55, category:I
    const/4 v5, -0x1

    move/from16 v0, v55

    if-ne v0, v5, :cond_0

    const-string v16, "htc_category= 0"

    .line 925
    .local v16, categoryExpr:Ljava/lang/String;
    :goto_0
    const-string v5, "SortbyDate2"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v10

    .line 926
    .local v10, SortbyDate2:I
    sparse-switch v91, :sswitch_data_0

    .line 1414
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized URI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 924
    .end local v10           #SortbyDate2:I
    .end local v16           #categoryExpr:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "htc_category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .restart local v10       #SortbyDate2:I
    .restart local v16       #categoryExpr:Ljava/lang/String;
    :sswitch_0
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 928
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v60

    .line 1417
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v60

    invoke-interface {v0, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v5, v60

    .line 1418
    :goto_2
    return-object v5

    .line 939
    :sswitch_1
    const-string v5, "simple"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 940
    .local v83, simple:Ljava/lang/String;
    if-eqz v83, :cond_3

    const-string v5, "true"

    move-object/from16 v0, v83

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 941
    const-string v5, "thread_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 942
    .local v90, threadType:Ljava/lang/String;
    invoke-static/range {v90 .. v90}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v17, v10

    .line 952
    invoke-direct/range {v11 .. v17}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getFormalConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v60

    .line 956
    goto :goto_1

    .line 957
    .end local v90           #threadType:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 960
    goto :goto_1

    .line 962
    .end local v83           #simple:Ljava/lang/String;
    :sswitch_2
    const-string v5, "groupByDate"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4

    const/16 v23, 0x1

    .line 963
    .local v23, groupByDate:Z
    :goto_3
    const-string v5, "groupByGID"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_5

    const/16 v24, 0x1

    .line 964
    .local v24, groupByGID:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, p0

    move-object/from16 v19, p2

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v25, v10

    invoke-direct/range {v17 .. v25}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/database/Cursor;

    move-result-object v60

    .line 968
    goto/16 :goto_1

    .line 962
    .end local v23           #groupByDate:Z
    .end local v24           #groupByGID:Z
    :cond_4
    const/16 v23, 0x0

    goto :goto_3

    .line 963
    .restart local v23       #groupByDate:Z
    :cond_5
    const/16 v24, 0x0

    goto :goto_4

    .line 970
    .end local v23           #groupByDate:Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, p0

    move-object/from16 v19, p2

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v17 .. v22}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 974
    goto/16 :goto_1

    .line 976
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v17 .. v22}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 979
    goto/16 :goto_1

    .line 981
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v17 .. v22}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 984
    goto/16 :goto_1

    .line 986
    :sswitch_6
    const-string v5, "recipient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v78

    .line 988
    .local v78, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v60

    .line 990
    if-eqz v60, :cond_1

    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 991
    const-wide/16 v26, 0x0

    .line 992
    .local v26, threadId:J
    const-wide/16 v30, 0x0

    .line 994
    .local v30, contactId:J
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->moveToFirst()Z

    .line 995
    const/4 v5, 0x0

    move-object/from16 v0, v60

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 997
    invoke-static/range {v26 .. v27}, Lcom/android/providers/telephony/ContactMessageStore;->getHtcThreadIdByThreadId(J)J

    move-result-wide v28

    .line 998
    .local v28, htcthreadId:J
    const-string v5, "MmsSmsV2Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htcthreadId> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v0, v78

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v7, 0x20800c2

    const/4 v8, 0x0

    invoke-static {v6, v5, v7, v8}, Landroid/provider/Telephony$Sms;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Landroid/provider/Telephony$namephoto;

    move-result-object v66

    .line 1003
    .local v66, mdata:Landroid/provider/Telephony$namephoto;
    if-eqz v66, :cond_6

    .line 1004
    move-object/from16 v0, v66

    iget-wide v0, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    move-wide/from16 v30, v0

    .line 1009
    .end local v66           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v5, v30, v5

    if-gtz v5, :cond_7

    .line 1011
    invoke-static/range {v28 .. v29}, Lcom/android/providers/telephony/ContactMessageStore;->getContactIdByHtcThreadId(J)J

    move-result-wide v30

    :cond_7
    move-object/from16 v25, p0

    .line 1018
    invoke-direct/range {v25 .. v31}, Lcom/android/providers/telephony/MmsSmsV2Provider;->insertNewContacts(JJJ)V

    .line 1021
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v56

    .line 1022
    .local v56, columns:[Ljava/lang/String;
    new-instance v88, Landroid/database/MatrixCursor;

    move-object/from16 v0, v88

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1023
    .local v88, t:Landroid/database/MatrixCursor;
    move-object/from16 v0, v56

    array-length v5, v0

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v80, v0

    .line 1024
    .local v80, row:[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v80, v5

    .line 1025
    move-object/from16 v0, v88

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1026
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->close()V

    .line 1027
    move-object/from16 v60, v88

    .line 1028
    goto/16 :goto_1

    .line 1032
    .end local v26           #threadId:J
    .end local v28           #htcthreadId:J
    .end local v30           #contactId:J
    .end local v56           #columns:[Ljava/lang/String;
    .end local v78           #recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v80           #row:[Ljava/lang/Object;
    .end local v88           #t:Landroid/database/MatrixCursor;
    :sswitch_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 1033
    .local v65, extraSelection:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v35, v65

    .line 1035
    .local v35, finalSelection:Ljava/lang/String;
    :goto_5
    const-string v33, "canonical_addresses"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v34, v5

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v36, p4

    move-object/from16 v39, p5

    invoke-virtual/range {v32 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1038
    goto/16 :goto_1

    .line 1033
    .end local v35           #finalSelection:Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_5

    .line 1041
    .end local v65           #extraSelection:Ljava/lang/String;
    :sswitch_8
    const-string v37, "canonical_addresses"

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v38, v5

    const/4 v5, 0x1

    const-string v6, "address"

    aput-object v6, v38, v5

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v36, v32

    move-object/from16 v39, p3

    move-object/from16 v40, p4

    move-object/from16 v43, p5

    invoke-virtual/range {v36 .. v43}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1044
    goto/16 :goto_1

    .line 1046
    :sswitch_9
    if-nez p5, :cond_9

    if-nez p3, :cond_9

    if-nez p4, :cond_9

    if-eqz p2, :cond_a

    .line 1050
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1061
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pattern"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1062
    .local v81, searchString:Ljava/lang/String;
    const-string v84, "_id,thread_id,address,body,date"

    .line 1063
    .local v84, smsProjection:Ljava/lang/String;
    const-string v67, "pdu._id,thread_id,addr.address,part.text as body,pdu.date"

    .line 1065
    .local v67, mmsProjection:Ljava/lang/String;
    const-string v5, "SELECT %s FROM sms WHERE (body LIKE ?) "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v84, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v86

    .line 1072
    .local v86, smsQuery:Ljava/lang/String;
    const-string v5, "SELECT %s FROM pdu,part,addr WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=%d) AND (part.ct=\'text/plain\') AND (body like ?))"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v67, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x97

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    .line 1081
    .local v69, mmsQuery:Ljava/lang/String;
    const-string v5, "%s UNION %s GROUP BY %s ORDER BY %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v86, v6, v7

    const/4 v7, 0x1

    aput-object v69, v6, v7

    const/4 v7, 0x2

    const-string v8, "thread_id"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "thread_id ASC, date DESC"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v76

    .line 1088
    .local v76, rawQuery:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    const/4 v6, 0x1

    aput-object v81, v5, v6

    move-object/from16 v0, v32

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1089
    goto/16 :goto_1

    .line 1091
    .end local v67           #mmsProjection:Ljava/lang/String;
    .end local v69           #mmsQuery:Ljava/lang/String;
    .end local v76           #rawQuery:Ljava/lang/String;
    .end local v81           #searchString:Ljava/lang/String;
    .end local v84           #smsProjection:Ljava/lang/String;
    .end local v86           #smsQuery:Ljava/lang/String;
    :sswitch_a
    const-string v5, "protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 1092
    .local v75, protoName:Ljava/lang/String;
    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 1093
    .local v71, msgId:Ljava/lang/String;
    invoke-static/range {v75 .. v75}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v74, -0x1

    .line 1096
    .local v74, proto:I
    :goto_6
    const/4 v5, -0x1

    move/from16 v0, v74

    if-eq v0, v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proto_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v74

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 1098
    .restart local v65       #extraSelection:Ljava/lang/String;
    :goto_7
    invoke-static/range {v71 .. v71}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND msg_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 1102
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v35, v65

    .line 1104
    .restart local v35       #finalSelection:Ljava/lang/String;
    :goto_8
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v39, "due_time"

    .line 1107
    .local v39, finalOrder:Ljava/lang/String;
    :goto_9
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 1108
    const-string v33, "pending_msgs"

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, p2

    move-object/from16 v36, p4

    invoke-virtual/range {v32 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    goto/16 :goto_1

    .line 1093
    .end local v35           #finalSelection:Ljava/lang/String;
    .end local v39           #finalOrder:Ljava/lang/String;
    .end local v65           #extraSelection:Ljava/lang/String;
    .end local v74           #proto:I
    :cond_c
    const-string v5, "sms"

    move-object/from16 v0, v75

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v74, 0x0

    goto :goto_6

    :cond_d
    const/16 v74, 0x1

    goto :goto_6

    .line 1096
    .restart local v74       #proto:I
    :cond_e
    const-string v65, " 0=0 "

    goto :goto_7

    .line 1102
    .restart local v65       #extraSelection:Ljava/lang/String;
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v65

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_8

    .restart local v35       #finalSelection:Ljava/lang/String;
    :cond_10
    move-object/from16 v39, p5

    .line 1104
    goto :goto_9

    .line 1112
    .restart local v39       #finalOrder:Ljava/lang/String;
    :cond_11
    const-string v33, "pending_msgs"

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v36, p4

    invoke-virtual/range {v32 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1116
    goto/16 :goto_1

    .end local v35           #finalSelection:Ljava/lang/String;
    .end local v39           #finalOrder:Ljava/lang/String;
    .end local v65           #extraSelection:Ljava/lang/String;
    .end local v71           #msgId:Ljava/lang/String;
    .end local v74           #proto:I
    .end local v75           #protoName:Ljava/lang/String;
    :sswitch_b
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1119
    invoke-direct/range {v11 .. v16}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1121
    goto/16 :goto_1

    .line 1125
    :sswitch_c
    const-string v5, "Jerry"

    const-string v6, "URI_DRAFT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->listDraftByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1127
    goto/16 :goto_1

    .line 1132
    :sswitch_d
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v26

    .line 1137
    .restart local v26       #threadId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1139
    goto/16 :goto_1

    .line 1133
    .end local v26           #threadId:J
    :catch_0
    move-exception v64

    .line 1134
    .local v64, e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Thread ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1142
    .end local v64           #e:Ljava/lang/NumberFormatException;
    :sswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1144
    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1148
    invoke-direct/range {v11 .. v16}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getDraftList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1149
    goto/16 :goto_1

    .line 1154
    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1156
    goto/16 :goto_1

    .line 1162
    :sswitch_11
    const/4 v5, 0x0

    aget-object v89, p4, v5

    .line 1163
    .local v89, target:Ljava/lang/String;
    const-string v5, ""

    move-object/from16 v0, v89

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1164
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1189
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v89

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v82

    .line 1190
    .local v82, searchString1:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v89

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 1191
    .local v63, dataSMS:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v89

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 1193
    .local v62, dataMMS:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id as _id,sms.date as date,address as recipient_address,sms.body as body,\'sms\' as msgtype,threads.name as suggest_text_1,sms.body as suggest_text_2, threads._id as suggest_intent_data_id, sms._id as suggest_intent_extra_data, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as suggest_intent_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v85

    .line 1196
    .local v85, smsProjection1:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id as _id,pdu.date as date,addr.address as recipient_address,part.text as body,\'mms\' as msgtype,threads.name as suggest_text_1,part.text as suggest_text_2, threads._id as suggest_intent_data_id, pdu._id as suggest_intent_extra_data, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as suggest_intent_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .line 1200
    .local v68, mmsProjection1:Ljava/lang/String;
    const-string v5, "SELECT %s FROM sms,threads WHERE (address NOTNULL AND (sms.body LIKE ? OR sms.address LIKE ? OR threads.name LIKE ?) AND (thread_id=threads._id)) "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v85, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v87

    .line 1207
    .local v87, smsQuery1:Ljava/lang/String;
    const-string v5, "SELECT %s FROM pdu,part,addr,threads WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND ((addr.type=%d AND pdu.msg_box = 1) OR (addr.type=%d AND pdu.msg_box = 2)) AND (part.ct !=\'application/smil\') AND (part.text like ? OR addr.address LIKE ? OR threads.name LIKE ? OR pdu.sub LIKE ?) AND (thread_id=threads._id))"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v68, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x89

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x97

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v70

    .line 1218
    .local v70, mmsQuery1:Ljava/lang/String;
    const-string v5, "%s UNION %s GROUP BY %s ORDER BY %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v87, v6, v7

    const/4 v7, 0x1

    aput-object v70, v6, v7

    const/4 v7, 0x2

    const-string v8, "part.mid"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "thread_id ASC, date DESC"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v77

    .line 1226
    .local v77, rawQuery1:Ljava/lang/String;
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v82, v5, v6

    const/4 v6, 0x1

    aput-object v82, v5, v6

    const/4 v6, 0x2

    aput-object v82, v5, v6

    const/4 v6, 0x3

    aput-object v82, v5, v6

    const/4 v6, 0x4

    aput-object v82, v5, v6

    const/4 v6, 0x5

    aput-object v82, v5, v6

    const/4 v6, 0x6

    aput-object v82, v5, v6

    move-object/from16 v0, v32

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1229
    goto/16 :goto_1

    .line 1233
    .end local v62           #dataMMS:Ljava/lang/String;
    .end local v63           #dataSMS:Ljava/lang/String;
    .end local v68           #mmsProjection1:Ljava/lang/String;
    .end local v70           #mmsQuery1:Ljava/lang/String;
    .end local v77           #rawQuery1:Ljava/lang/String;
    .end local v82           #searchString1:Ljava/lang/String;
    .end local v85           #smsProjection1:Ljava/lang/String;
    .end local v87           #smsQuery1:Ljava/lang/String;
    .end local v89           #target:Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getSmsAndMmsMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1235
    goto/16 :goto_1

    .line 1241
    :sswitch_13
    const-string v5, "recipient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v79

    .line 1242
    .local v79, recipients_:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getAvailableThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v60

    .line 1243
    goto/16 :goto_1

    .line 1249
    .end local v79           #recipients_:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v26

    .line 1254
    .restart local v26       #threadId:J
    const-wide/16 v43, 0x0

    move-object/from16 v40, p0

    move-wide/from16 v41, v26

    move-object/from16 v45, p3

    move-object/from16 v46, p4

    invoke-direct/range {v40 .. v46}, Lcom/android/providers/telephony/MmsSmsV2Provider;->buildContactIdQuery(JJLjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1255
    goto/16 :goto_1

    .line 1250
    .end local v26           #threadId:J
    :catch_1
    move-exception v64

    .line 1251
    .restart local v64       #e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Thread ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1261
    .end local v64           #e:Ljava/lang/NumberFormatException;
    :sswitch_15
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v43

    .line 1266
    .local v43, _id:J
    const-wide/16 v41, 0x0

    move-object/from16 v40, p0

    move-object/from16 v45, p3

    move-object/from16 v46, p4

    invoke-direct/range {v40 .. v46}, Lcom/android/providers/telephony/MmsSmsV2Provider;->buildContactIdQuery(JJLjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1267
    goto/16 :goto_1

    .line 1262
    .end local v43           #_id:J
    :catch_2
    move-exception v64

    .line 1263
    .restart local v64       #e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "HtcThread ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1273
    .end local v64           #e:Ljava/lang/NumberFormatException;
    :sswitch_16
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v30

    .line 1279
    .restart local v30       #contactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT threads.recipient_address from threads INNER JOIN contacts ON threads._id =  contacts.thread_id   AND contacts.contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1282
    goto/16 :goto_1

    .line 1274
    .end local v30           #contactId:J
    :catch_3
    move-exception v64

    .line 1275
    .restart local v64       #e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Thread ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1286
    .end local v64           #e:Ljava/lang/NumberFormatException;
    :sswitch_17
    const-string v46, "threads"

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v45, v32

    move-object/from16 v47, p2

    move-object/from16 v48, p3

    move-object/from16 v49, p4

    move-object/from16 v52, p5

    invoke-virtual/range {v45 .. v52}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1287
    goto/16 :goto_1

    .line 1289
    :sswitch_18
    const-string v46, "addr"

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v45, v32

    move-object/from16 v47, p2

    move-object/from16 v48, p3

    move-object/from16 v49, p4

    move-object/from16 v52, p5

    invoke-virtual/range {v45 .. v52}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1290
    goto/16 :goto_1

    .line 1295
    :sswitch_19
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v30

    .line 1301
    .restart local v30       #contactId:J
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT thread_id FROM contacts WHERE contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v60

    goto/16 :goto_1

    .line 1296
    .end local v30           #contactId:J
    :catch_4
    move-exception v64

    .line 1297
    .restart local v64       #e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Contact ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1302
    .end local v64           #e:Ljava/lang/NumberFormatException;
    .restart local v30       #contactId:J
    :catch_5
    move-exception v64

    .line 1303
    .local v64, e:Ljava/lang/Exception;
    new-instance v60, Landroid/database/MatrixCursor;

    .end local v60           #cursor:Landroid/database/Cursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "thread_id"

    aput-object v7, v5, v6

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1305
    .restart local v60       #cursor:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 1309
    .end local v30           #contactId:J
    .end local v64           #e:Ljava/lang/Exception;
    :sswitch_1a
    const/16 v80, 0x0

    .line 1310
    .restart local v80       #row:[Ljava/lang/Object;
    new-instance v60, Landroid/database/MatrixCursor;

    .end local v60           #cursor:Landroid/database/Cursor;
    sget-object v5, Lcom/android/providers/telephony/ContactMessageStore;->DELETING_STATUS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1311
    .restart local v60       #cursor:Landroid/database/Cursor;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v5, :cond_14

    .line 1312
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v80, v0

    .end local v80           #row:[Ljava/lang/Object;
    const/4 v6, 0x0

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->isDeleting()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    :goto_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v80, v6

    .restart local v80       #row:[Ljava/lang/Object;
    :goto_b
    move-object/from16 v5, v60

    .line 1315
    check-cast v5, Landroid/database/MatrixCursor;

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1312
    .end local v80           #row:[Ljava/lang/Object;
    :cond_13
    const/4 v5, 0x0

    goto :goto_a

    .line 1314
    .restart local v80       #row:[Ljava/lang/Object;
    :cond_14
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v80, v0

    .end local v80           #row:[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v80, v5

    .restart local v80       #row:[Ljava/lang/Object;
    goto :goto_b

    .line 1321
    .end local v80           #row:[Ljava/lang/Object;
    :sswitch_1b
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-wide v30

    .line 1326
    .restart local v30       #contactId:J
    new-instance v60, Landroid/database/MatrixCursor;

    .end local v60           #cursor:Landroid/database/Cursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "unread_count"

    aput-object v7, v5, v6

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1327
    .restart local v60       #cursor:Landroid/database/Cursor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT SUM(unread_count) FROM threads WHERE read == 0 AND _id IN ( SELECT thread_id FROM contacts WHERE contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v54

    .line 1328
    .local v54, c:Landroid/database/Cursor;
    if-eqz v54, :cond_1

    .line 1329
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1330
    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 1331
    .local v58, count:J
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v80, v0

    const/4 v5, 0x0

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v80, v5

    .restart local v80       #row:[Ljava/lang/Object;
    move-object/from16 v5, v60

    .line 1332
    check-cast v5, Landroid/database/MatrixCursor;

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1334
    .end local v58           #count:J
    .end local v80           #row:[Ljava/lang/Object;
    :cond_15
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1322
    .end local v30           #contactId:J
    .end local v54           #c:Landroid/database/Cursor;
    :catch_6
    move-exception v64

    .line 1323
    .local v64, e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Contact ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1340
    .end local v64           #e:Ljava/lang/NumberFormatException;
    :sswitch_1c
    const-string v5, "SELECT SUM(col1), SUM(col2) FROM (SELECT 0 AS col1, SUM(p_unread_count) AS col2 FROM htcthreads UNION ALL SELECT SUM(unread_count) AS col1, 0 AS col2 FROM threads)"

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1341
    goto/16 :goto_1

    .line 1345
    :sswitch_1d
    new-instance v60, Landroid/database/MatrixCursor;

    .end local v60           #cursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "display_name"

    aput-object v7, v5, v6

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1346
    .restart local v60       #cursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v53

    .line 1347
    .local v53, address:Ljava/lang/String;
    if-eqz v53, :cond_16

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_16

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    if-eqz v5, :cond_16

    .line 1348
    invoke-static/range {v53 .. v53}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1349
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mStore:Lcom/android/providers/telephony/ContactMessageStore;

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Lcom/android/providers/telephony/ContactMessageStore;->getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/ContactMessageStore$ContactData;

    move-result-object v61

    .line 1350
    .local v61, data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    if-eqz v61, :cond_1

    .line 1351
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v80, v0

    const/4 v5, 0x0

    move-object/from16 v0, v61

    iget-wide v6, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v80, v5

    const/4 v5, 0x1

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->contactName:Ljava/lang/String;

    aput-object v6, v80, v5

    .restart local v80       #row:[Ljava/lang/Object;
    move-object/from16 v5, v60

    .line 1352
    check-cast v5, Landroid/database/MatrixCursor;

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1356
    .end local v61           #data:Lcom/android/providers/telephony/ContactMessageStore$ContactData;
    .end local v80           #row:[Ljava/lang/Object;
    :cond_16
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "address is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1361
    .end local v53           #address:Ljava/lang/String;
    :sswitch_1e
    const-string v5, "MmsSmsV2Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI_RAW_QUERY -- selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , selectionArgs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1363
    goto/16 :goto_1

    .line 1367
    :sswitch_1f
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Get TrashLish"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    if-nez v55, :cond_17

    .line 1369
    const-string v16, "(htc_category = 0 OR htc_category = 2)"

    :cond_17
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1372
    invoke-direct/range {v11 .. v16}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getTrashList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1373
    goto/16 :goto_1

    .line 1377
    :sswitch_20
    const-string v5, "MmsSmsV2Provider"

    const-string v6, "Get Group Message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getGroupMessageConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1379
    goto/16 :goto_1

    :sswitch_21
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v17, v10

    .line 1382
    invoke-direct/range {v11 .. v17}, Lcom/android/providers/telephony/MmsSmsV2Provider;->listInboxByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v60

    .line 1384
    goto/16 :goto_1

    :sswitch_22
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v17, v10

    .line 1387
    invoke-direct/range {v11 .. v17}, Lcom/android/providers/telephony/MmsSmsV2Provider;->listSentByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v60

    .line 1389
    goto/16 :goto_1

    :sswitch_23
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v17, v10

    .line 1392
    invoke-direct/range {v11 .. v17}, Lcom/android/providers/telephony/MmsSmsV2Provider;->listOutboxByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v60

    .line 1394
    goto/16 :goto_1

    .line 1398
    :sswitch_24
    const-string v5, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 1399
    .local v72, number:Ljava/lang/String;
    if-eqz v72, :cond_18

    .line 1400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(number, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1401
    .local v57, compNumbers:Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v45

    const-string v46, "blocklist"

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v47, p2

    move-object/from16 v49, p4

    invoke-virtual/range {v45 .. v52}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1409
    .end local v57           #compNumbers:Ljava/lang/String;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "blocklist"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-interface {v0, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v5, v60

    .line 1411
    goto/16 :goto_2

    .line 1405
    :cond_18
    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v45

    const-string v46, "blocklist"

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v47, p2

    move-object/from16 v48, p3

    move-object/from16 v49, p4

    invoke-virtual/range {v45 .. v52}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    goto :goto_c

    .line 926
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_a
        0x7 -> :sswitch_0
        0x8 -> :sswitch_b
        0x9 -> :sswitch_4
        0xc -> :sswitch_c
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_e
        0x10 -> :sswitch_d
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_15
        0x1d -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x21 -> :sswitch_1e
        0x22 -> :sswitch_1f
        0x23 -> :sswitch_20
        0x24 -> :sswitch_24
        0x26 -> :sswitch_21
        0x27 -> :sswitch_22
        0x28 -> :sswitch_23
        0x3e8 -> :sswitch_12
    .end sparse-switch
.end method

.method public _update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3481
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 3482
    .local v15, processID:I
    const v2, 0xcb23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Update uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selectionArgs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3486
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->checkContactTableCreated()V

    .line 3489
    const-string v2, "category"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v11

    .line 3490
    .local v11, category:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    const/4 v12, 0x0

    .line 3491
    .local v12, categoryExpr:Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 3492
    .local v13, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 3494
    .local v10, affectedRows:I
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3546
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3490
    .end local v10           #affectedRows:I
    .end local v12           #categoryExpr:Ljava/lang/String;
    .end local v13           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc_category="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 3500
    .restart local v10       #affectedRows:I
    .restart local v12       #categoryExpr:Ljava/lang/String;
    .restart local v13       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_0
    const-string v2, "update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3501
    .local v16, update:Ljava/lang/String;
    if-eqz v16, :cond_3

    const-string v2, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3504
    const-string v2, "threads"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v2, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3507
    const/4 v10, 0x1

    .line 3550
    .end local v16           #update:Ljava/lang/String;
    :goto_1
    if-lez v10, :cond_1

    .line 3551
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3555
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3561
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v2, :cond_2

    .line 3563
    const-string v2, "__ALBAL__"

    const-string v4, "MmsSmsV2Provider  SetBackUp"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 3569
    :cond_2
    return v10

    .line 3511
    .restart local v16       #update:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, threadIdString:Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    .line 3512
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v10

    .line 3516
    goto :goto_1

    .line 3520
    .end local v3           #threadIdString:Ljava/lang/String;
    .end local v16           #update:Ljava/lang/String;
    :sswitch_1
    :try_start_0
    const-string v2, "pending_msgs"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v2, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_1

    .line 3522
    :catch_0
    move-exception v14

    .line 3523
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "MmsSmsV2Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3528
    .end local v14           #e:Ljava/lang/Exception;
    :sswitch_2
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->updateMessagesInUnifiedFolder(IILjava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    .line 3532
    goto/16 :goto_1

    .line 3534
    :sswitch_3
    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->updateMessagesInUnifiedFolder(IILjava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    .line 3538
    goto/16 :goto_1

    .line 3540
    :sswitch_4
    const/4 v5, 0x4

    const/4 v6, 0x4

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/android/providers/telephony/MmsSmsV2Provider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/telephony/MmsSmsV2Provider;->updateMessagesInUnifiedFolder(IILjava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    .line 3544
    goto/16 :goto_1

    .line 3494
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method protected checkContactTableCreated()V
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v0

    .line 542
    .local v0, store:Lcom/android/providers/telephony/ContactMessageStore;
    invoke-virtual {v0}, Lcom/android/providers/telephony/ContactMessageStore;->isContactTableCreated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/android/providers/telephony/ContactMessageStore;->createContactTable()V

    .line 545
    :cond_0
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2997
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 2999
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->_delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3001
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
    .line 2992
    const-string v0, "vnd.android-dir/mms-sms-v2"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 3456
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3457
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 3458
    .local v3, match:I
    packed-switch v3, :pswitch_data_0

    .line 3464
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3460
    :pswitch_0
    const-string v4, "blocklist"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3461
    .local v1, entryId:J
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/MmsSmsV2Provider;->BLOCKLIST_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3462
    sget-object v4, Lcom/android/providers/telephony/MmsSmsV2Provider;->BLOCKLIST_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 3458
    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 873
    const-string v0, "Jerry1"

    const-string v1, "v2 onCreate() >>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 875
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsV2Provider;->mUseStrictPhoneNumberComparation:Z

    .line 884
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContactMessageStore(Landroid/content/Context;)V

    .line 886
    const-string v0, "Jerry1"

    const-string v1, "v2 onCreate() <<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 892
    const/4 v0, 0x1

    .line 893
    .local v0, needLock:Z
    sget-object v2, Lcom/android/providers/telephony/MmsSmsV2Provider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 894
    .local v1, uriMatch:I
    const/16 v2, 0x1a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    .line 895
    :cond_0
    const/4 v0, 0x0

    .line 897
    :cond_1
    if-eqz v0, :cond_2

    .line 898
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 900
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->_query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 902
    if-eqz v0, :cond_3

    .line 903
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    :cond_3
    return-object v2

    .line 902
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 903
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    :cond_4
    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3470
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 3472
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsV2Provider;->_update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3474
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method
