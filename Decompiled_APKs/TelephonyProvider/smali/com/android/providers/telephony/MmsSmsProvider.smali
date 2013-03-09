.class public Lcom/android/providers/telephony/MmsSmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "mms-sms"

.field private static final CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String; = null

.field private static final CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String; = null

.field static final CATEGORY_BLOCK:I = 0x2

.field static final CATEGORY_GENERAL:I = 0x0

.field static final CATEGORY_GROUP:I = 0x3

.field static final CATEGORY_SECURE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final GET_SMS_AND_MMS_FROM_STATE:Ljava/lang/String; = " ( SELECT pdu._id AS _id, addr.address AS address, pdu.read AS read, pdu.thread_id AS thread_id, pdu.date * 1000 AS date, 0 AS msg_type , pdu.sub AS sub ,pdu.sub_cs as sub_cs, -1 as sms_type, pdu.m_type as mms_type, pdu.date2 * 1000 AS date2 FROM addr, pdu WHERE addr.msg_id = pdu._id AND addr.address <> \'insert_address_token\' AND pdu.thread_id IS NOT NULL AND pdu.htc_category = 0  UNION ALL   SELECT sms._id AS _id, sms.address AS address, sms.read AS read, sms.thread_id as thread_id, sms.date AS date, 1 AS msg_type , sms.body as sub ,  NULL as sub_cs, sms.type as sms_type, -1 as mms_type, sms.date2 AS date2 FROM sms WHERE sms.address <> \'insert_address_token\' AND sms.thread_id IS NOT NULL AND sms.htc_category = 0 ) "

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MmsSmsProvider"

.field static final MESSAGE_BOX_TRASH:I = 0xa

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

.field static final MMS_DELETED_CONSTRAINT:Ljava/lang/String; = "msg_box < 0"

.field static final MMS_FOLDER_CONSTRAINT:Ljava/lang/String; = "(m_type = 128 OR m_type = 132 OR m_type = 130)"

.field private static final MMS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final MMS_QUERY:Ljava/lang/String; = "SELECT pdu._id,thread_id,addr.address,part.text AS body,pdu.date,date_sent,index_text,words._id FROM pdu,part,addr,words WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=151) AND (part.ct=\'text/plain\') AND (index_text MATCH ?) AND (part._id = words.source_id) AND (words.table_to_use=2))"

.field private static final MMS_SMS_COLUMNS:[Ljava/lang/String; = null

.field private static final MMS_SMS_COLUMNS_SECURE:[Ljava/lang/String; = null

.field static final MMS_UNDELETED_CONSTRAINT:Ljava/lang/String; = "msg_box > 0"

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

.field static final SMS_DELETED_CONSTRAINT:Ljava/lang/String; = "type < 0"

.field private static final SMS_MMS_QUERY:Ljava/lang/String; = "SELECT sms._id AS _id,thread_id,address,body,date,date_sent,index_text,words._id FROM sms,words WHERE (index_text MATCH ? AND sms._id=words.source_id AND words.table_to_use=1) UNION SELECT pdu._id,thread_id,addr.address,part.text AS body,pdu.date,date_sent,index_text,words._id FROM pdu,part,addr,words WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=151) AND (part.ct=\'text/plain\') AND (index_text MATCH ?) AND (part._id = words.source_id) AND (words.table_to_use=2)) GROUP BY thread_id ORDER BY thread_id ASC, date DESC"

.field private static final SMS_ONLY_COLUMNS:[Ljava/lang/String; = null

.field private static final SMS_QUERY:Ljava/lang/String; = "SELECT sms._id AS _id,thread_id,address,body,date,date_sent,index_text,words._id FROM sms,words WHERE (index_text MATCH ? AND sms._id=words.source_id AND words.table_to_use=1)"

.field static final SMS_UNDELETED_CONSTRAINT:Ljava/lang/String; = "type > 0"

.field private static final SUGGESTIONS:I = 0x13

.field private static final SUGGESTIONS_FORMAT:I = 0x15

.field private static final TABLE_CANONICAL_ADDRESSES:Ljava/lang/String; = "canonical_addresses"

.field public static final TABLE_PENDING_MSG:Ljava/lang/String; = "pending_msgs"

.field private static final TAG:Ljava/lang/String; = "MmsSmsProvider"

.field private static final THREADS_COLUMNS:[Ljava/lang/String; = null

.field private static final UNION_COLUMNS:[Ljava/lang/String; = null

.field private static final URI_AVAILABLE_THREAD_ID:I = 0x14

.field private static final URI_CANONICAL_ADDRESS:I = 0x5

.field private static final URI_CANONICAL_ADDRESSES:I = 0xd

.field private static final URI_COMPLETE_CONVERSATIONS:I = 0x7

.field private static final URI_CONVERSATIONS:I = 0x0

.field private static final URI_CONVERSATIONS_MESSAGES:I = 0x1

.field private static final URI_CONVERSATIONS_RECIPIENTS:I = 0x2

.field private static final URI_CONVERSATIONS_SUBJECT:I = 0x9

.field private static final URI_DRAFT:I = 0xc

.field private static final URI_DRAFT_LIST:I = 0x11

.field private static final URI_FIRST_LOCKED_MESSAGE_ALL:I = 0xf

.field private static final URI_FIRST_LOCKED_MESSAGE_BY_THREAD_ID:I = 0x10

.field private static final URI_LATEST_MT_MSG_PER_THREAD:I = 0x12

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MESSAGES_BY_PHONE:I = 0x3

.field private static final URI_MESSAGE_ID_TO_THREAD:I = 0x16

.field private static final URI_NOTIFICATIONS:I = 0xa

.field private static final URI_OBSOLETE_THREADS:I = 0xb

.field private static final URI_PENDING_MSG:I = 0x6

.field private static final URI_SEARCH:I = 0xe

.field private static final URI_SEARCH_SUGGEST:I = 0x3e9

.field private static final URI_SMS_AND_MMS_MSG:I = 0x3e8

.field private static final URI_THREAD_ID:I = 0x4

.field private static final URI_UNDELIVERED_MSG:I = 0x8

.field private static final VND_ANDROID_DIR_MMS_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms"

.field private static mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field public static mThreadsLockObj:Ljava/lang/Object;

.field public static sSenseVersion:F

.field private static search_category:I


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

    .line 114
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 172
    sput v3, Lcom/android/providers/telephony/MmsSmsProvider;->search_category:I

    .line 195
    const/4 v0, 0x6

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

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    .line 199
    const/4 v0, 0x7

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

    const-string v2, "htc_category"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS_SECURE:[Ljava/lang/String;

    .line 205
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

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 216
    const/16 v0, 0xe

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

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_evdo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_cdma_format"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 221
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v5

    const-string v1, "message_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 228
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    .line 231
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    .line 251
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 253
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 327
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "complete-conversations"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#/recipients"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#/subject"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/obsolete"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/byphone/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "threadID"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "available-threadID"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "canonical-address/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "canonical-addresses"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "search"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "searchSuggest"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "pending"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "undelivered"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "notifications"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "draft"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "locked"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "locked/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "draftlist"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "missed_msg"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "suggestion/search_suggest_query"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 406
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allmessages"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "suggestion/suggest_format"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messageIdToThread"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->initializeColumnSets()V

    .line 1201
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->mThreadsLockObj:Ljava/lang/Object;

    .line 2598
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/telephony/MmsSmsProvider;->sSenseVersion:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->map:Ljava/util/Map;

    .line 1202
    return-void
.end method

.method static synthetic access$000(JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->insertNameLookup(JLjava/lang/String;)V

    return-void
.end method

.method private static appendNormalizedDateField([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "projection"

    .prologue
    .line 2585
    array-length v1, p0

    .line 2586
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2588
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2589
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    .line 2588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2591
    :cond_0
    const-string v3, "normalized_date"

    aput-object v3, v2, v1

    .line 2593
    return-object v2
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 2128
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2130
    .local v17, mmsProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2131
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2133
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2134
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2135
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2136
    const-string v2, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2138
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2139
    .local v20, smsColumns:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2140
    .local v16, mmsColumns:[Ljava/lang/String;
    const/16 v2, 0x3e8

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2141
    .local v3, innerMmsProjection:[Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 2143
    .local v15, innerSmsProjection:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2144
    .local v4, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "pdu._id"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2145
    const-string v2, "err_type"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2147
    const-string v2, "msg_box != 3"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2149
    .local v18, mmsSelection:Ljava/lang/String;
    const-string v2, "transport_type"

    const/4 v5, 0x0

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2154
    .local v19, mmsSubQuery:Ljava/lang/String;
    const-string v6, "transport_type"

    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v9, 0x0

    const-string v10, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, v21

    move-object v7, v15

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2158
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2160
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2162
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v2, v6

    const/4 v6, 0x1

    aput-object v19, v2, v6

    invoke-static/range {p3 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2166
    .local v23, unionQuery:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2168
    .local v5, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2170
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v20

    move-object/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkProjection([Ljava/lang/String;)V
    .locals 4
    .parameter "projection"

    .prologue
    .line 1543
    array-length v1, p0

    .line 1544
    .local v1, projectionSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1545
    aget-object v2, p0, v0

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 1544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_1
    return-void
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 1381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    .end local p1
    :goto_0
    return-object p1

    .line 1383
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1384
    goto :goto_0

    .line 1386
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
    .line 2039
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 2040
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2041
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2042
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 2040
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2044
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 2047
    :cond_1
    return-object v1
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2304
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 2306
    .local v16, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2313
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

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2316
    .local v4, finalSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2317
    .local v9, affectedIDs:[J
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2318
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

    .line 2319
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 2320
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2321
    .local v15, size:I
    if-lez v15, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2322
    new-array v9, v15, [J

    .line 2323
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 2324
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v9, v13

    .line 2325
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2323
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2307
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #finalSelection:Ljava/lang/String;
    .end local v9           #affectedIDs:[J
    .end local v10           #c:Landroid/database/Cursor;
    .end local v13           #i:I
    .end local v15           #size:I
    :catch_0
    move-exception v12

    .line 2308
    .local v12, e:Ljava/lang/NumberFormatException;
    const-string v2, "MmsSmsProvider"

    const-string v3, "Thread ID must be a Long."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2309
    const/4 v11, 0x0

    .line 2348
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    return v11

    .line 2328
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #finalSelection:Ljava/lang/String;
    .restart local v9       #affectedIDs:[J
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #size:I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2333
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #size:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

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

    .line 2337
    .local v11, count:I
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2338
    if-eqz v9, :cond_0

    .line 2340
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 2341
    .local v14, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.deleteSMS"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2342
    const-string v2, "affectedIDs"

    invoke-virtual {v14, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2
    .parameter "uri"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 941
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, valueS:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 944
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 947
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 945
    .restart local p2
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static fetchMessagesFromUnifiedFolder(II[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 35
    .parameter "mmsFolder"
    .parameter "smsFolder"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1478
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1479
    .local v27, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1480
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v31, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v31 .. v31}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1482
    .local v31, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1483
    const-string v3, "sms"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1485
    const-string v3, "(m_type = 128 OR m_type = 132 OR m_type = 130)"

    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->interpretMmsFolderSelection(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1487
    .local v24, constraint:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1489
    .local v8, finalMmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->interpretSmsFolderSelection(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1493
    .local v15, finalSmsSelection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND (thread_id != 0 OR thread_id ISNULL)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND (thread_id != 0 OR thread_id ISNULL)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1496
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1497
    .local v30, smsColumns:[Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1499
    .local v26, mmsColumns:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1501
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1505
    const/16 v3, 0x3e8

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1507
    .local v4, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    .line 1510
    .local v25, innerSmsProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsProvider;->checkProjection([Ljava/lang/String;)V

    .line 1511
    invoke-static/range {v25 .. v25}, Lcom/android/providers/telephony/MmsSmsProvider;->checkProjection([Ljava/lang/String;)V

    .line 1513
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1517
    .local v28, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v31

    move-object/from16 v11, v25

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1522
    .local v32, smsSubQuery:Ljava/lang/String;
    new-instance v34, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v34 .. v34}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1524
    .local v34, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1526
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v32, v6, v3

    const/4 v3, 0x1

    aput-object v28, v6, v3

    if-nez p5, :cond_0

    const-string v3, "normalized_date DESC"

    :goto_0
    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v3, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1531
    .local v33, unionQuery:Ljava/lang/String;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1533
    .local v16, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1535
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v30

    move-object/from16 v22, p5

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1538
    .local v29, outerQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .end local v16           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v29           #outerQuery:Ljava/lang/String;
    .end local v33           #unionQuery:Ljava/lang/String;
    :cond_0
    move-object/from16 v3, p5

    .line 1526
    goto :goto_0
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
    .line 1005
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1007
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

    .line 1008
    .local v0, address:Ljava/lang/String;
    const-string v5, "insert-address-token"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1009
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1010
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 1011
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1013
    :cond_1
    const-string v5, "MmsSmsProvider"

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

    .line 1017
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
    .line 1284
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v0

    .line 1285
    .local v0, Ids:[J
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getCommaSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v4

    .line 1288
    .local v4, recipientIds:Ljava/lang/String;
    const-string v1, "SELECT _id FROM threads WHERE recipient_ids IN (%s)"

    .line 1290
    .local v1, THREAD_QUERY:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1291
    const-string v5, "MmsSmsProvider"

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

    .line 1292
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1293
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1294
    .local v2, cursor:Landroid/database/Cursor;
    monitor-exit p0

    return-object v2

    .line 1284
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
    .line 1083
    array-length v2, p1

    .line 1084
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1087
    if-eqz v1, :cond_0

    .line 1088
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1092
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
    .line 1893
    invoke-static {p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    .local v0, unionQuery:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
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

    .line 2015
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2022
    .local v9, extraSelection:Ljava/lang/String;
    invoke-static {p3, v9}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2023
    .local v3, finalSelection:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2024
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2026
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2027
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2028
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

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

    .line 2016
    :catch_0
    move-exception v8

    .line 2017
    .local v8, exception:Ljava/lang/NumberFormatException;
    const-string v1, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1925
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1933
    .local v2, finalSelection:Ljava/lang/String;
    invoke-static {p2, v2, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1936
    .local v3, unionQuery:Ljava/lang/String;
    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1937
    .end local v2           #finalSelection:Ljava/lang/String;
    .end local v3           #unionQuery:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1926
    :catch_0
    move-exception v1

    .line 1927
    .local v1, exception:Ljava/lang/NumberFormatException;
    const-string v4, "MmsSmsProvider"

    const-string v5, "Thread ID must be a Long."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1782
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1783
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1785
    .local v18, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1786
    const-string v2, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1788
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1789
    .local v14, columns:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x3e8

    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1791
    .local v3, innerMmsProjection:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 1793
    .local v15, innerSmsProjection:[Ljava/lang/String;
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "thread_id"

    const-string v10, "date = MAX(date)"

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1798
    .local v16, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "date = MAX(date)"

    move-object/from16 v4, v18

    move-object v6, v15

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1803
    .local v19, smsSubQuery:Ljava/lang/String;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1805
    .local v21, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1807
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

    .line 1810
    .local v20, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1812
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

    .line 1814
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "tid"

    const-string v9, "normalized_date = MAX(normalized_date)"

    const/4 v11, 0x0

    move-object v5, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1818
    .local v17, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getDraftList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 43
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    .line 1602
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 1603
    .local v34, mmsProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1604
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v38, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v38 .. v38}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1606
    .local v38, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1607
    const-string v2, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_box = 3 AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1614
    .local v7, finalMmsSelection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = 3 AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1618
    .local v14, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 1619
    .local v37, smsColumns:[Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1621
    .local v3, mmsColumns:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1623
    .local v4, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "pdu._id"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1626
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x39

    if-eq v2, v5, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x60

    if-ne v2, v5, :cond_1

    .line 1629
    :cond_0
    const-string v2, "transport_type"

    const/4 v5, 0x1

    const-string v6, "mms"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1633
    .local v35, mmsSubQuery:Ljava/lang/String;
    const-string v9, "transport_type"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v12, 0x1

    const-string v13, "sms"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, v38

    move-object/from16 v10, v37

    move-object/from16 v15, p3

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1652
    .local v39, smsSubQuery:Ljava/lang/String;
    :goto_0
    new-instance v41, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v41 .. v41}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1654
    .local v41, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1656
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v39, v2, v5

    const/4 v5, 0x1

    aput-object v35, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1660
    .local v40, unionQuery:Ljava/lang/String;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1662
    .local v18, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1666
    invoke-static/range {v37 .. v37}, Lcom/android/providers/telephony/MmsSmsProvider;->appendNormalizedDateField([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1667
    .local v19, unionSelectColumn:[Ljava/lang/String;
    new-instance v24, Ljava/lang/String;

    const-string v2, "normalized_date DESC"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v24, sortNormalizedDate:Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1670
    .local v42, unionSelectQuery:Ljava/lang/String;
    new-instance v25, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v25 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1671
    .local v25, outerQueryBuilder_final:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1674
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v37

    invoke-virtual/range {v25 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1682
    .local v36, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1639
    .end local v18           #outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v19           #unionSelectColumn:[Ljava/lang/String;
    .end local v24           #sortNormalizedDate:Ljava/lang/String;
    .end local v25           #outerQueryBuilder_final:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v35           #mmsSubQuery:Ljava/lang/String;
    .end local v36           #outerQuery:Ljava/lang/String;
    .end local v39           #smsSubQuery:Ljava/lang/String;
    .end local v40           #unionQuery:Ljava/lang/String;
    .end local v41           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v42           #unionSelectQuery:Ljava/lang/String;
    :cond_1
    const/16 v2, 0x3e8

    invoke-static {v3, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 1641
    .local v17, innerMmsProjection:[Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v37

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v33

    .line 1643
    .local v33, innerSmsProjection:[Ljava/lang/String;
    const-string v16, "transport_type"

    const/16 v19, 0x1

    const-string v20, "mms"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v1

    move-object/from16 v18, v4

    move-object/from16 v21, v7

    move-object/from16 v22, p3

    invoke-virtual/range {v15 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1647
    .restart local v35       #mmsSubQuery:Ljava/lang/String;
    const-string v19, "transport_type"

    sget-object v21, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/16 v22, 0x1

    const-string v23, "sms"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v38

    move-object/from16 v20, v33

    move-object/from16 v24, v14

    move-object/from16 v25, p3

    invoke-virtual/range {v18 .. v27}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .restart local v39       #smsSubQuery:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1553
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "thread_id"

    aput-object v5, v3, v2

    .line 1554
    .local v3, innerProjection:[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1555
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1557
    .local v16, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1558
    const-string v2, "sms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1560
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "msg_box=3"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1565
    .local v14, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "type=3"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v16

    move-object v6, v3

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1570
    .local v17, smsSubQuery:Ljava/lang/String;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1572
    .local v19, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1574
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

    .line 1577
    .local v18, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1579
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

    .line 1581
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1584
    .local v15, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

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
    .line 1846
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1847
    .local v1, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v17, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1849
    .local v17, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1850
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1852
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x3e8

    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1854
    .local v3, innerMmsProjection:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 1856
    .local v14, innerSmsProjection:[Ljava/lang/String;
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "mms"

    const-string v7, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "thread_id"

    const-string v10, "locked=1"

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1861
    .local v15, mmsSubQuery:Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "sms"

    const-string v2, "(type != 3 AND type > 0)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "locked=1"

    move-object/from16 v4, v17

    move-object v6, v14

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1866
    .local v18, smsSubQuery:Ljava/lang/String;
    new-instance v20, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1868
    .local v20, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1870
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

    .line 1873
    .local v19, unionQuery:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1875
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

    .line 1877
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "tid"

    const/4 v9, 0x0

    const-string v11, "1"

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1884
    .local v16, outerQuery:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getFormalConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    .line 1432
    const-string v1, "(msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1433
    .local v10, tablePduExpr:Ljava/lang/String;
    const-string v1, "(type != 3 AND type > 0)"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1440
    .local v11, tableSmsExpr:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1441
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "order"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1442
    .local v9, index:I
    if-lez v9, :cond_0

    .line 1443
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1445
    .end local v9           #index:I
    :cond_0
    move-object/from16 v0, p5

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1452
    .local v4, constraint:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "threads_list"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, " date DESC"

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "phoneNumber"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1961
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1962
    .local v19, escapedPhoneNumber:Ljava/lang/String;
    const-string v3, "pdu._id = matching_addresses.address_id"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1966
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

    iget-boolean v3, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v3, :cond_0

    const-string v3, ", 1))"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1972
    .local v15, finalSmsSelection:Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1973
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1975
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1976
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1977
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

    iget-boolean v3, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

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

    .line 1989
    const-string v3, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1991
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1992
    .local v4, columns:[Ljava/lang/String;
    const-string v3, "transport_type"

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v6, 0x0

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1995
    .local v20, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x0

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v21

    move-object v11, v4

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1998
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2000
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2002
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

    .line 2005
    .local v23, unionQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 1966
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

    .line 1977
    .restart local v2       #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v15       #finalSmsSelection:Ljava/lang/String;
    .restart local v21       #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const-string v3, ", 0))) "

    goto :goto_1
.end method

.method private getMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1692
    const-string v0, "SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type,     COUNT() - SUM(read) AS unread_count, priority, locked, is_evdo  FROM incoming_msg WHERE thread_id > 0 GROUP BY thread_id ORDER BY normalized_date DESC"

    .line 1697
    .local v0, query:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

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

    .line 1422
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

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
    .locals 17
    .parameter "address"

    .prologue
    .line 955
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    .line 956
    .local v11, isEmail:Z
    const-wide/16 v13, -0x1

    .line 958
    .local v13, retVal:J
    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 959
    .local v12, refinedAddress:Ljava/lang/String;
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v4, "address = ?"

    .line 963
    .local v4, selection:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v5, v2

    .line 964
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 967
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 968
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "canonical_addresses"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 972
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 973
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 974
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v9, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 977
    const-string v2, "canonical_addresses"

    const-string v3, "address"

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/MmsSmsProvider;->map:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    if-eqz v10, :cond_0

    .line 994
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v15, v13

    .line 998
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v13           #retVal:J
    .local v15, retVal:J
    :goto_2
    return-wide v15

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #refinedAddress:Ljava/lang/String;
    .end local v15           #retVal:J
    .restart local v13       #retVal:J
    :cond_1
    move-object/from16 v12, p1

    .line 958
    goto :goto_0

    .line 959
    .restart local v12       #refinedAddress:Ljava/lang/String;
    :cond_2
    const-string v4, "PHONE_NUMBERS_EQUAL(address, ?)"

    goto :goto_1

    .line 988
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 989
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/MmsSmsProvider;->map:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    :cond_4
    if-eqz v10, :cond_5

    .line 994
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v15, v13

    .line 998
    .end local v13           #retVal:J
    .restart local v15       #retVal:J
    goto :goto_2

    .line 993
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #retVal:J
    .restart local v13       #retVal:J
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 994
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private getSmsAndMmsMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/16 v7, 0x2c

    .line 1719
    const-string v4, "SELECT "

    .line 1720
    .local v4, query:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1721
    .local v3, projectionBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 1722
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 1723
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1727
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1728
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1729
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1731
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

    .line 1743
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ( SELECT pdu._id AS _id, addr.address AS address, pdu.read AS read, pdu.thread_id AS thread_id, pdu.date * 1000 AS date, 0 AS msg_type , pdu.sub AS sub ,pdu.sub_cs as sub_cs, -1 as sms_type, pdu.m_type as mms_type, pdu.date2 * 1000 AS date2 FROM addr, pdu WHERE addr.msg_id = pdu._id AND addr.address <> \'insert_address_token\' AND pdu.thread_id IS NOT NULL AND pdu.htc_category = 0  UNION ALL   SELECT sms._id AS _id, sms.address AS address, sms.read AS read, sms.thread_id as thread_id, sms.date AS date, 1 AS msg_type , sms.body as sub ,  NULL as sub_cs, sms.type as sms_type, -1 as mms_type, sms.date2 AS date2 FROM sms WHERE sms.address <> \'insert_address_token\' AND sms.thread_id IS NOT NULL AND sms.htc_category = 0 ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1745
    if-eqz p2, :cond_2

    .line 1746
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

    .line 1748
    :cond_2
    if-eqz p4, :cond_3

    .line 1749
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

    .line 1751
    :cond_3
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 1733
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
    .line 1024
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 1025
    .local v5, size:I
    new-array v4, v5, [J

    .line 1026
    .local v4, result:[J
    const/4 v0, 0x0

    .line 1028
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

    .line 1029
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

    .line 1032
    .end local v3           #number:Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 1033
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 1036
    :cond_1
    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 1044
    array-length v2, p1

    .line 1045
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1048
    if-eqz v1, :cond_0

    .line 1049
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1051
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "numbers"

    .prologue
    .line 1063
    array-length v2, p1

    .line 1064
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1067
    if-eqz v1, :cond_0

    .line 1068
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1070
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 17
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
    .line 1307
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    .line 1308
    .local v5, addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v11, ""

    .line 1310
    .local v11, recipientIds:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1314
    .local v2, Ids:[J
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1316
    const/4 v13, 0x1

    new-array v2, v13, [J

    .line 1318
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1319
    .local v4, addressId:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 1321
    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v2, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1307
    .end local v2           #Ids:[J
    .end local v4           #addressId:Ljava/lang/Long;
    .end local v5           #addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #recipientIds:Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1329
    .restart local v2       #Ids:[J
    .restart local v5       #addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v11       #recipientIds:Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v2

    .line 1330
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v11

    .line 1336
    :cond_1
    array-length v13, v2

    new-array v1, v13, [Ljava/lang/String;

    .line 1337
    .local v1, Address:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v13, v2

    if-ge v8, v13, :cond_2

    .line 1338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/MmsSmsProvider;->map:Ljava/util/Map;

    aget-wide v14, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v1, v8

    .line 1339
    const-string v13, "MmsSmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ids: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v15, v2, v8

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1342
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1343
    .local v10, recipientAddress:Ljava/lang/String;
    const-string v13, "MmsSmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "recipientIds: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v13, "MmsSmsProvider"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1348
    const-string v13, "MmsSmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getThreadId: recipientIds (selectionArgs) ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_3
    const-string v3, "SELECT _id FROM threads WHERE recipient_ids = ?"

    .line 1354
    .local v3, THREAD_QUERY:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    .line 1355
    .local v12, selectionArgs:[Ljava/lang/String;
    sget-object v13, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1356
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1358
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_4

    .line 1359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1366
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v10}, Lcom/android/providers/telephony/MmsSmsProvider;->insertThread(Ljava/lang/String;ILjava/lang/String;)V

    .line 1369
    sget-object v13, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1370
    invoke-virtual {v7, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1373
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 1374
    const-string v13, "MmsSmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getThreadId: why is cursorCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    :cond_5
    monitor-exit p0

    return-object v6
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    .line 2052
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 2054
    .local v27, mmsProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2055
    .local v2, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v32, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v32 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2057
    .local v32, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2058
    const-string v3, "sms"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2060
    const-string v3, "( thread_id > 0 AND msg_box=4 AND m_type=128)"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2063
    .local v26, mmsConstraint:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2070
    .local v8, finalMmsSelection:Ljava/lang/String;
    const-string v3, "( thread_id > 0 AND (type = 4 OR type = 5))"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2075
    .local v31, smsConstraint:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2077
    .local v15, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 2078
    .local v30, smsColumns:[Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 2079
    .local v25, mmsColumns:[Ljava/lang/String;
    const/16 v3, 0x3e8

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2081
    .local v4, innerMmsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 2084
    .local v24, innerSmsProjection:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2085
    .local v5, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "pdu._id"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2086
    const-string v3, "err_type"

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2087
    const-string v3, "transport_type"

    const/4 v6, 0x1

    const-string v7, "mms"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2091
    .local v28, mmsSubQuery:Ljava/lang/String;
    const-string v10, "transport_type"

    sget-object v12, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v13, 0x1

    const-string v14, "sms"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v32

    move-object/from16 v11, v24

    move-object/from16 v16, p3

    invoke-virtual/range {v9 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2095
    .local v33, smsSubQuery:Ljava/lang/String;
    new-instance v35, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v35 .. v35}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2097
    .local v35, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2099
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

    .line 2102
    .local v34, unionQuery:Ljava/lang/String;
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2104
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

    .line 2106
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v30

    move-object/from16 v22, p4

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2109
    .local v29, outerQuery:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 1397
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 1414
    if-nez p0, :cond_0

    const-string p0, "normalized_date ASC"

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 1406
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static initializeColumnSets()V
    .locals 10

    .prologue
    .line 2556
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v1, v8

    .line 2557
    .local v1, commonColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v5, v8

    .line 2558
    .local v5, mmsOnlyColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v8

    .line 2559
    .local v6, smsOnlyColumnCount:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2561
    .local v7, unionColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2562
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2563
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2564
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2566
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 2567
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2568
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2566
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2570
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 2571
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2572
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2570
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2575
    :cond_2
    const/4 v2, 0x0

    .line 2576
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

    .line 2577
    .local v0, columnName:Ljava/lang/String;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v8, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 2579
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

    .line 1097
    const-string v6, "MmsSmsProvider"

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

    .line 1098
    const-wide/16 v4, 0x0

    .line 1099
    .local v4, id:J
    const-string v3, "SELECT COUNT(_id) FROM htcthreads WHERE recipient_ids = ?"

    .line 1101
    .local v3, htcThread_query:Ljava/lang/String;
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1102
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v9

    invoke-virtual {v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1103
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    .line 1104
    .local v0, count:I
    if-eqz v1, :cond_1

    .line 1105
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1106
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1108
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1111
    :cond_1
    if-gtz v0, :cond_3

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-lez v6, :cond_3

    .line 1112
    const-string v6, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1113
    const-string v6, "message_count"

    invoke-virtual {p4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1114
    const-string v6, "date"

    invoke-virtual {p4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1115
    const-string v6, "type"

    invoke-virtual {p4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1116
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "htcthreads"

    invoke-virtual {v6, v7, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1117
    const-string v6, "MmsSmsProvider"

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

    .line 1120
    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v6, :cond_2

    .line 1124
    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1128
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1130
    :cond_3
    return-wide v4
.end method

.method private static insertNameLookup(JLjava/lang/String;)V
    .locals 3
    .parameter "threadId"
    .parameter "displayAddress"

    .prologue
    .line 1247
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 1250
    :cond_0
    const-string v0, "MmsSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertNameLookup> threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM name_lookup WHERE thread_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    :cond_1
    return-void
.end method

.method private insertThread(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .parameter "recipientIds"
    .parameter "numberOfRecipients"
    .parameter "recipientAddress"

    .prologue
    .line 1144
    new-instance v10, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1146
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1147
    .local v6, date:J
    const-string v1, "date"

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    const-string v1, "recipient_ids"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v1, "recipient_address"

    invoke-virtual {v10, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 1153
    const-string v1, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    :cond_0
    const-string v1, "message_count"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "threads"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1158
    .local v2, thread_id:J
    const-string v1, "MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertThread: created new thread_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for recipientIds "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0, p1, v2, v3, v10}, Lcom/android/providers/telephony/MmsSmsProvider;->insertHtcThread(Ljava/lang/String;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .line 1167
    .local v8, htcthread_id:J
    new-instance v0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 1173
    .local v0, updateNameThread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1178
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1188
    :cond_1
    invoke-static {v2, v3, v8, v9, p3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->refreshcontactsTable(JJLjava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1196
    return-void
.end method

.method private static interpretMmsFolderSelection(I)Ljava/lang/String;
    .locals 2
    .parameter "mmsFolder"

    .prologue
    .line 2536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static interpretSmsFolderSelection(I)Ljava/lang/String;
    .locals 2
    .parameter "smsFolder"

    .prologue
    .line 2540
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 2541
    const-string v0, "(type IN (4, 5, 6))"

    .line 2546
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isSupportBroadcastDeleteIntent()Z
    .locals 3

    .prologue
    .line 2600
    sget v1, Lcom/android/providers/telephony/MmsSmsProvider;->sSenseVersion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2602
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/providers/telephony/MmsSmsProvider;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget v1, Lcom/android/providers/telephony/MmsSmsProvider;->sSenseVersion:F

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2610
    const/4 v1, 0x1

    .line 2612
    :goto_1
    return v1

    .line 2604
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 2605
    .restart local v0       #e:Ljava/lang/Exception;
    const/high16 v1, 0x3f80

    sput v1, Lcom/android/providers/telephony/MmsSmsProvider;->sSenseVersion:F

    goto :goto_0

    .line 2612
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSupportBroadcastMarkAsReadIntent()Z
    .locals 1

    .prologue
    .line 2616
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v0

    return v0
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2034
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method protected static listDraftByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "categoryExpr"

    .prologue
    const/4 v0, 0x3

    .line 1590
    invoke-static {p1, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider;->fetchMessagesFromUnifiedFolder(II[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 1907
    array-length v1, p0

    .line 1908
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 1910
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "thread_id AS tid"

    aput-object v4, v2, v3

    .line 1911
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS normalized_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1912
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1913
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p0, v0

    aput-object v4, v2, v3

    .line 1912
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1915
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    const/4 v4, 0x0

    .line 2118
    array-length v0, p0

    .line 2119
    .local v0, projectionSize:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 2121
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

    .line 2122
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2123
    return-object v1
.end method

.method private setUpdateMMSshortcutBroadcast()V
    .locals 3

    .prologue
    .line 2294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2295
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.mms.updateShortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2298
    return-void
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "threadIdString"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2450
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2457
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

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2460
    .local v5, finalSelection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2461
    .local v10, affectedIDs:[J
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 2462
    .local v11, affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v3, "sms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "thread_id"

    aput-object v7, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2463
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 2464
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 2465
    .local v18, size:I
    if-lez v18, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2466
    move/from16 v0, v18

    new-array v10, v0, [J

    .line 2467
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 2468
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v10, v15

    .line 2469
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2470
    .local v20, tid:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2471
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2472
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2467
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2451
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

    .line 2452
    .local v14, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const/4 v13, 0x0

    .line 2509
    .end local v14           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    return v13

    .line 2475
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #finalSelection:Ljava/lang/String;
    .restart local v10       #affectedIDs:[J
    .restart local v11       #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v18       #size:I
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2479
    .end local v18           #size:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

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

    .line 2484
    .local v13, count:I
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2485
    const-string v19, ""

    .line 2486
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

    .line 2487
    .local v20, tid:Ljava/lang/Long;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2488
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

    .line 2489
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

    .line 2491
    .end local v20           #tid:Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2496
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #threadIds:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastMarkAsReadIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2497
    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2498
    if-eqz v10, :cond_1

    .line 2500
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2501
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.markAsReadSMS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2502
    const-string v3, "affectedIDs"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2503
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public _delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 2193
    .local v17, processID:I
    const v3, 0xcb23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Delete uri:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", selection:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", selectionArgs:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2196
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2197
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 2198
    .local v13, context:Landroid/content/Context;
    const/4 v11, 0x0

    .line 2200
    .local v11, affectedRows:I
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2269
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2204
    :sswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v19

    .line 2209
    .local v19, threadId:J
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2210
    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2272
    .end local v19           #threadId:J
    :cond_0
    :goto_0
    if-lez v11, :cond_1

    .line 2273
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2275
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v3, :cond_1

    .line 2282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2287
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->setUpdateMMSshortcutBroadcast()V

    .line 2289
    return v11

    .line 2205
    :catch_0
    move-exception v14

    .line 2206
    .local v14, e:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2214
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :sswitch_1
    const/4 v10, 0x0

    .line 2215
    .local v10, affectedIDs:[J
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _id not in (SELECT _id FROM pdu)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2217
    .local v5, excludeMmsSelection:Ljava/lang/String;
    const-string v3, "sms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2218
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 2219
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 2220
    .local v18, size:I
    if-lez v18, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2221
    move/from16 v0, v18

    new-array v10, v0, [J

    .line 2222
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 2223
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v10, v15

    .line 2224
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2222
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2227
    .end local v15           #i:I
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2232
    .end local v5           #excludeMmsSelection:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v18           #size:I
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v13, v2, v0, v1, v3}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    const-string v4, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int v11, v3, v4

    .line 2235
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2241
    add-int/lit8 v11, v11, 0x1

    .line 2245
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2246
    if-eqz v10, :cond_0

    .line 2248
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2249
    .local v16, intent:Landroid/content/Intent;
    const-string v3, "com.android.mms.deleteSMS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    const-string v3, "affectedIDs"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2259
    .end local v10           #affectedIDs:[J
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_1
    const-string v3, "threads"

    const-string v4, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    goto/16 :goto_0

    .line 2263
    :catch_1
    move-exception v14

    .line 2264
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2200
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
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
    .line 456
    const-string v5, "category"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v25

    .line 457
    .local v25, category:I
    const/4 v5, -0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_0

    const-string v10, "htc_category= 0"

    .line 458
    .local v10, categoryExpr:Ljava/lang/String;
    :goto_0
    if-lez v25, :cond_1

    .end local v25           #category:I
    :goto_1
    sput v25, Lcom/android/providers/telephony/MmsSmsProvider;->search_category:I

    .line 461
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 462
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v26, 0x0

    .line 464
    .local v26, cursor:Landroid/database/Cursor;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 932
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

    .line 457
    .end local v10           #categoryExpr:Ljava/lang/String;
    .end local v11           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v26           #cursor:Landroid/database/Cursor;
    .restart local v25       #category:I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "htc_category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 458
    .restart local v10       #categoryExpr:Ljava/lang/String;
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 466
    .end local v25           #category:I
    .restart local v11       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26       #cursor:Landroid/database/Cursor;
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 935
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-interface {v0, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 936
    return-object v26

    .line 470
    :sswitch_1
    const-string v5, "simple"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 471
    .local v54, simple:Ljava/lang/String;
    if-eqz v54, :cond_3

    const-string v5, "true"

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 472
    const-string v5, "thread_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 473
    .local v63, threadType:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 478
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getFormalConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 480
    goto :goto_2

    .line 483
    .end local v63           #threadType:Ljava/lang/String;
    :cond_3
    const-string v5, "FromThreadTable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 484
    .local v33, fromThread:Ljava/lang/String;
    if-eqz v33, :cond_4

    const-string v5, "true"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 485
    const-string v12, "threads"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    goto/16 :goto_2

    .line 492
    :cond_4
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    goto/16 :goto_2

    .line 507
    .end local v33           #fromThread:Ljava/lang/String;
    .end local v54           #simple:Ljava/lang/String;
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v17}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 512
    goto/16 :goto_2

    .line 514
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v17}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 517
    goto/16 :goto_2

    .line 519
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v17}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 522
    goto/16 :goto_2

    .line 524
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v17}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 527
    goto/16 :goto_2

    .line 529
    :sswitch_6
    const-string v5, "recipient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v49

    .line 531
    .local v49, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v26

    .line 532
    goto/16 :goto_2

    .line 534
    .end local v49           #recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
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

    move-result-object v31

    .line 535
    .local v31, extraSelection:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v14, v31

    .line 542
    .local v14, finalSelection:Ljava/lang/String;
    :goto_3
    const-string v12, "canonical_addresses"

    sget-object v13, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, p4

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 548
    goto/16 :goto_2

    .line 535
    .end local v14           #finalSelection:Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 556
    .end local v31           #extraSelection:Ljava/lang/String;
    :sswitch_8
    const-string v16, "canonical_addresses"

    sget-object v17, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v11

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v22, p5

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 562
    goto/16 :goto_2

    .line 564
    :sswitch_9
    const-string v5, "pattern"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 568
    .local v51, searchString:Ljava/lang/String;
    const-string v5, "SELECT snippet(words, \'\', \' \', \'\', 1, 1) as snippet FROM words WHERE index_text MATCH \'%s*\' ORDER BY snippet LIMIT 50;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v51, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    .line 569
    .local v46, query:Ljava/lang/String;
    if-nez p5, :cond_6

    if-nez p3, :cond_6

    if-nez p4, :cond_6

    if-eqz p2, :cond_7

    .line 573
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 578
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v11, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 579
    goto/16 :goto_2

    .line 585
    .end local v46           #query:Ljava/lang/String;
    .end local v51           #searchString:Ljava/lang/String;
    :sswitch_a
    :try_start_0
    const-string v5, "row_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 586
    .local v34, id:J
    const-string v5, "table_to_use"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 588
    :pswitch_0
    const-string v16, "sms"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    const-string v6, "thread_id"

    aput-object v6, v17, v5

    const-string v18, "_id=?"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v19, v5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v11

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 596
    goto/16 :goto_2

    .line 598
    :pswitch_1
    const-string v38, "SELECT thread_id FROM pdu,part WHERE ((part.mid=pdu._id) AND (part._id=?))"

    .line 601
    .local v38, mmsQuery:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v38

    invoke-virtual {v11, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v26

    goto/16 :goto_2

    .line 610
    .end local v34           #id:J
    .end local v38           #mmsQuery:Ljava/lang/String;
    :sswitch_b
    if-nez p5, :cond_8

    if-nez p3, :cond_8

    if-nez p4, :cond_8

    if-eqz p2, :cond_9

    .line 614
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 619
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pattern"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 622
    .restart local v51       #searchString:Ljava/lang/String;
    :try_start_1
    const-string v5, "SELECT sms._id AS _id,thread_id,address,body,date,date_sent,index_text,words._id FROM sms,words WHERE (index_text MATCH ? AND sms._id=words.source_id AND words.table_to_use=1) UNION SELECT pdu._id,thread_id,addr.address,part.text AS body,pdu.date,date_sent,index_text,words._id FROM pdu,part,addr,words WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=151) AND (part.ct=\'text/plain\') AND (index_text MATCH ?) AND (part._id = words.source_id) AND (words.table_to_use=2)) GROUP BY thread_id ORDER BY thread_id ASC, date DESC"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v51, v6, v7

    const/4 v7, 0x1

    aput-object v51, v6, v7

    invoke-virtual {v11, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    goto/16 :goto_2

    .line 623
    :catch_0
    move-exception v30

    .line 624
    .local v30, ex:Ljava/lang/Exception;
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 666
    .end local v30           #ex:Ljava/lang/Exception;
    .end local v51           #searchString:Ljava/lang/String;
    :sswitch_c
    const-string v5, "protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 667
    .local v45, protoName:Ljava/lang/String;
    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 668
    .local v40, msgId:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v44, -0x1

    .line 671
    .local v44, proto:I
    :goto_4
    const/4 v5, -0x1

    move/from16 v0, v44

    if-eq v0, v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proto_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 673
    .restart local v31       #extraSelection:Ljava/lang/String;
    :goto_5
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND msg_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 677
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v14, v31

    .line 679
    .restart local v14       #finalSelection:Ljava/lang/String;
    :goto_6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v18, "due_time"

    .line 683
    .local v18, finalOrder:Ljava/lang/String;
    :goto_7
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 684
    const-string v12, "pending_msgs"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    move-object/from16 v15, p4

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    goto/16 :goto_2

    .line 668
    .end local v14           #finalSelection:Ljava/lang/String;
    .end local v18           #finalOrder:Ljava/lang/String;
    .end local v31           #extraSelection:Ljava/lang/String;
    .end local v44           #proto:I
    :cond_b
    const-string v5, "sms"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v44, 0x0

    goto :goto_4

    :cond_c
    const/16 v44, 0x1

    goto :goto_4

    .line 671
    .restart local v44       #proto:I
    :cond_d
    const-string v31, " 0=0 "

    goto :goto_5

    .line 677
    .restart local v31       #extraSelection:Ljava/lang/String;
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .restart local v14       #finalSelection:Ljava/lang/String;
    :cond_f
    move-object/from16 v18, p5

    .line 679
    goto :goto_7

    .line 688
    .restart local v18       #finalOrder:Ljava/lang/String;
    :cond_10
    const-string v12, "pending_msgs"

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, p4

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 693
    goto/16 :goto_2

    .end local v14           #finalSelection:Ljava/lang/String;
    .end local v18           #finalOrder:Ljava/lang/String;
    .end local v31           #extraSelection:Ljava/lang/String;
    .end local v40           #msgId:Ljava/lang/String;
    .end local v44           #proto:I
    .end local v45           #protoName:Ljava/lang/String;
    :sswitch_d
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 701
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 704
    goto/16 :goto_2

    .line 709
    :sswitch_e
    const-string v5, "Jerry"

    const-string v6, "URI_DRAFT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v10}, Lcom/android/providers/telephony/MmsSmsProvider;->listDraftByCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 713
    goto/16 :goto_2

    .line 718
    :sswitch_f
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v60

    .line 723
    .local v60, threadId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 725
    goto/16 :goto_2

    .line 719
    .end local v60           #threadId:J
    :catch_1
    move-exception v29

    .line 720
    .local v29, e:Ljava/lang/NumberFormatException;
    const-string v5, "MmsSmsProvider"

    const-string v6, "Thread ID must be a long."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 728
    .end local v29           #e:Ljava/lang/NumberFormatException;
    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 730
    goto/16 :goto_2

    :sswitch_11
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 735
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getDraftList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 736
    goto/16 :goto_2

    .line 741
    :sswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getMissedMessagePerThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 743
    goto/16 :goto_2

    .line 749
    :sswitch_13
    const/16 v24, 0x0

    .line 750
    .local v24, bBrowseMode:Z
    const/4 v5, 0x0

    aget-object v57, p4, v5

    .line 751
    .local v57, target:Ljava/lang/String;
    const-string v5, ""

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 753
    const-string v57, "%"

    .line 754
    const/16 v24, 0x1

    .line 782
    :cond_11
    const-string v5, "\'"

    const-string v6, "\'"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v58

    .line 783
    .local v58, target1:Ljava/lang/String;
    const-string v5, "\'"

    const-string v6, ""

    move-object/from16 v0, v57

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v59

    .line 785
    .local v59, target2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 786
    .local v52, searchString1:Ljava/lang/String;
    move-object/from16 v41, v58

    .line 792
    .local v41, normalized:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 793
    .local v53, searchString_lookup:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 794
    .local v28, dataSMS:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 796
    .local v27, dataMMS:Ljava/lang/String;
    if-eqz v24, :cond_12

    .line 797
    move-object/from16 v52, v57

    .line 798
    const-string v28, "content://*/sms"

    .line 799
    const-string v27, "content://*/sms"

    .line 803
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id as _id,sms.date as date,threads.recipient_address as recipient_address,sms.body as body,\'sms\' as msgtype,threads.name as suggest_text_1,sms.body as suggest_text_2, threads._id as suggest_intent_data_id, sms._id as suggest_intent_extra_data, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as suggest_intent_data, sms.type as msgbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 812
    .local v55, smsProjection1:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id as _id,pdu.date as date,threads.recipient_address as recipient_address,part.text as body,\'mms\' as msgtype,threads.name as suggest_text_1,part.text as suggest_text_2, threads._id as suggest_intent_data_id, pdu._id as suggest_intent_extra_data, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as suggest_intent_data, pdu.msg_box as msgbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 818
    .local v37, mmsProjection1:Ljava/lang/String;
    const-string v5, "SELECT %s FROM sms,threads WHERE (address NOTNULL AND (sms.body LIKE ? OR sms.address LIKE ? OR threads.name LIKE ? OR (thread_id in (select thread_id from name_lookup where normalized_name like ?))) AND (thread_id=threads._id)) AND ( htc_category = %d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v55, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/android/providers/telephony/MmsSmsProvider;->search_category:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    .line 826
    .local v56, smsQuery1:Ljava/lang/String;
    const-string v5, "SELECT %s FROM pdu,part,addr,threads WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND ( pdu.htc_category = %d) AND (part.ct !=\'application/smil\') AND (part.text like ? OR addr.address LIKE ? OR threads.name LIKE ? OR pdu.sub LIKE ? OR (threads._id in (select thread_id from name_lookup where normalized_name like ?))) AND (thread_id=threads._id))"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v37, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/android/providers/telephony/MmsSmsProvider;->search_category:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 843
    .local v39, mmsQuery1:Ljava/lang/String;
    const-string v5, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 845
    .local v36, limit:Ljava/lang/String;
    const-string v32, "%s UNION %s GROUP BY %s ORDER BY %s"

    .line 847
    .local v32, format:Ljava/lang/String;
    const-string v43, "thread_id ASC, date DESC"

    .line 849
    .local v43, orderby1:Ljava/lang/String;
    if-nez v36, :cond_13

    .line 850
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v56, v5, v6

    const/4 v6, 0x1

    aput-object v39, v5, v6

    const/4 v6, 0x2

    const-string v7, "part.mid"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v43, v5, v6

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 867
    .local v48, rawQuery1:Ljava/lang/String;
    :goto_8
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v52, v5, v6

    const/4 v6, 0x1

    aput-object v52, v5, v6

    const/4 v6, 0x2

    aput-object v52, v5, v6

    const/4 v6, 0x3

    aput-object v53, v5, v6

    const/4 v6, 0x4

    aput-object v52, v5, v6

    const/4 v6, 0x5

    aput-object v52, v5, v6

    const/4 v6, 0x6

    aput-object v52, v5, v6

    const/4 v6, 0x7

    aput-object v52, v5, v6

    const/16 v6, 0x8

    aput-object v53, v5, v6

    move-object/from16 v0, v48

    invoke-virtual {v11, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 870
    goto/16 :goto_2

    .line 856
    .end local v48           #rawQuery1:Ljava/lang/String;
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIMIT %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 857
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v56, v5, v6

    const/4 v6, 0x1

    aput-object v39, v5, v6

    const/4 v6, 0x2

    const-string v7, "part.mid"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v43, v5, v6

    const/4 v6, 0x4

    aput-object v36, v5, v6

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .restart local v48       #rawQuery1:Ljava/lang/String;
    goto :goto_8

    .line 875
    .end local v24           #bBrowseMode:Z
    .end local v27           #dataMMS:Ljava/lang/String;
    .end local v28           #dataSMS:Ljava/lang/String;
    .end local v32           #format:Ljava/lang/String;
    .end local v36           #limit:Ljava/lang/String;
    .end local v37           #mmsProjection1:Ljava/lang/String;
    .end local v39           #mmsQuery1:Ljava/lang/String;
    .end local v41           #normalized:Ljava/lang/String;
    .end local v43           #orderby1:Ljava/lang/String;
    .end local v48           #rawQuery1:Ljava/lang/String;
    .end local v52           #searchString1:Ljava/lang/String;
    .end local v53           #searchString_lookup:Ljava/lang/String;
    .end local v55           #smsProjection1:Ljava/lang/String;
    .end local v56           #smsQuery1:Ljava/lang/String;
    .end local v57           #target:Ljava/lang/String;
    .end local v58           #target1:Ljava/lang/String;
    .end local v59           #target2:Ljava/lang/String;
    :sswitch_14
    const/4 v5, 0x0

    aget-object v57, p4, v5

    .line 876
    .restart local v57       #target:Ljava/lang/String;
    if-eqz v57, :cond_14

    const-string v5, ""

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 877
    :cond_14
    const-string v57, "%"

    .line 879
    :cond_15
    invoke-static/range {v57 .. v57}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 880
    .restart local v51       #searchString:Ljava/lang/String;
    const-string v62, "name as display_name, _id as _id, threads.recipient_address as data1, 22 AS data2, null as data3, recipient_address as data1, -1 as contact_id"

    .line 884
    .local v62, threadProjection:Ljava/lang/String;
    const-string v5, "SELECT %s FROM threads WHERE ((recipient_address NOTNULL AND ( recipient_address LIKE ?)) OR name LIKE ?) "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v62, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/android/providers/telephony/MmsSmsProvider;->search_category:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 888
    .local v23, Query:Ljava/lang/String;
    const-string v5, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 893
    .restart local v36       #limit:Ljava/lang/String;
    const-string v32, "SELECT * FROM (%s ORDER BY %s) GROUP BY display_name"

    .line 895
    .restart local v32       #format:Ljava/lang/String;
    const-string v42, "display_name ASC"

    .line 897
    .local v42, orderby:Ljava/lang/String;
    if-nez v36, :cond_16

    .line 898
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    const/4 v6, 0x1

    aput-object v42, v5, v6

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 912
    .local v47, rawQuery:Ljava/lang/String;
    :goto_9
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v51, v5, v6

    const/4 v6, 0x1

    aput-object v51, v5, v6

    move-object/from16 v0, v47

    invoke-virtual {v11, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 915
    goto/16 :goto_2

    .line 902
    .end local v47           #rawQuery:Ljava/lang/String;
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIMIT %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 903
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    const/4 v6, 0x1

    aput-object v42, v5, v6

    const/4 v6, 0x2

    aput-object v36, v5, v6

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .restart local v47       #rawQuery:Ljava/lang/String;
    goto :goto_9

    .line 919
    .end local v23           #Query:Ljava/lang/String;
    .end local v32           #format:Ljava/lang/String;
    .end local v36           #limit:Ljava/lang/String;
    .end local v42           #orderby:Ljava/lang/String;
    .end local v47           #rawQuery:Ljava/lang/String;
    .end local v51           #searchString:Ljava/lang/String;
    .end local v57           #target:Ljava/lang/String;
    .end local v62           #threadProjection:Ljava/lang/String;
    :sswitch_15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getSmsAndMmsMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 921
    goto/16 :goto_2

    .line 927
    :sswitch_16
    const-string v5, "recipient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v50

    .line 928
    .local v50, recipients_:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getAvailableThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v26

    .line 929
    goto/16 :goto_2

    .line 604
    .end local v50           #recipients_:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v5

    goto/16 :goto_2

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_c
        0x7 -> :sswitch_0
        0x8 -> :sswitch_d
        0x9 -> :sswitch_4
        0xc -> :sswitch_e
        0xd -> :sswitch_8
        0xe -> :sswitch_b
        0xf -> :sswitch_10
        0x10 -> :sswitch_f
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_16
        0x15 -> :sswitch_14
        0x16 -> :sswitch_a
        0x3e8 -> :sswitch_15
        0x3e9 -> :sswitch_9
    .end sparse-switch

    .line 586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public _update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2369
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2370
    .local v7, processID:I
    const v12, 0xcb23

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Binder:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Update uri:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", selection:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", selectionArgs:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2373
    sget-object v12, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2374
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 2376
    .local v3, affectedRows:I
    sget-object v12, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 2420
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string v13, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2382
    :sswitch_0
    const-string v12, "update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2383
    .local v11, update:Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2386
    const-string v12, "threads"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2389
    const/4 v3, 0x1

    .line 2393
    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2394
    .local v6, name:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 2395
    .local v9, thread_id:J
    if-eqz v6, :cond_0

    .line 2396
    invoke-static {v9, v10, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->insertNameLookup(JLjava/lang/String;)V

    .line 2424
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #thread_id:J
    .end local v11           #update:Ljava/lang/String;
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 2425
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2429
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2435
    :cond_1
    iget-object v12, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v12, :cond_2

    .line 2439
    iget-object v12, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v12}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2443
    :cond_2
    return v3

    .line 2400
    .restart local v11       #update:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2401
    .local v8, threadIdString:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2404
    goto :goto_0

    .line 2408
    .end local v8           #threadIdString:Ljava/lang/String;
    .end local v11           #update:Ljava/lang/String;
    :sswitch_1
    :try_start_0
    const-string v12, "pending_msgs"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 2410
    :catch_0
    move-exception v5

    .line 2411
    .local v5, e:Ljava/lang/Exception;
    const-string v12, "MmsSmsProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2416
    .end local v5           #e:Ljava/lang/Exception;
    :sswitch_2
    const-string v12, "category"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/providers/telephony/MmsSmsProvider;->search_category:I

    goto :goto_0

    .line 2376
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2181
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 2183
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->_delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2185
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
    .line 2176
    const-string v0, "vnd.android-dir/mms-sms"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 423
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/util/TelephUtils;->checkDbLoadable(Landroid/content/Context;)V

    .line 433
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
    .line 438
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 440
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/telephony/MmsSmsProvider;->_query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 442
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
    .line 2358
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 2360
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->_update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2362
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method
