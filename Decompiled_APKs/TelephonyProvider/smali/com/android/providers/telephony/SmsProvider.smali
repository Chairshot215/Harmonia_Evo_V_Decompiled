.class public Lcom/android/providers/telephony/SmsProvider;
.super Landroid/content/ContentProvider;
.source "SmsProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ICC_URI:Landroid/net/Uri; = null

.field private static final LOCAL_LOGV:Z = true

.field private static final NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final ONE:Ljava/lang/Integer; = null

.field private static final RUIM_URI:Landroid/net/Uri; = null

.field private static final SIM_COLUMNS:[Ljava/lang/String; = null

.field private static final SIM_URI:Landroid/net/Uri; = null

.field private static final SIM_URI_BASEWIN:Landroid/net/Uri; = null

.field private static final SMS_ALL:I = 0x0

.field private static final SMS_ALL_ID:I = 0x1

.field private static final SMS_ALL_RUIM:I = 0x1e

.field private static final SMS_ALL_SIM:I = 0x16

.field private static final SMS_ALL_SIM_BASEWIN:I = 0x1c

.field private static final SMS_ATTACHMENT:I = 0x10

.field private static final SMS_ATTACHMENT_ID:I = 0x11

.field private static final SMS_CONVERSATIONS:I = 0xa

.field private static final SMS_CONVERSATIONS_ID:I = 0xb

.field private static final SMS_DRAFT:I = 0x6

.field private static final SMS_DRAFT_ID:I = 0x7

.field private static final SMS_FAILED:I = 0x18

.field private static final SMS_FAILED_ID:I = 0x19

.field private static final SMS_INBOX:I = 0x2

.field private static final SMS_INBOX_ID:I = 0x3

.field private static final SMS_LOAD_ALL_SIM2DB:I = 0x21

.field private static final SMS_LOAD_ALL_UIM2DB:I = 0x23

.field private static final SMS_NEW_THREAD_ID:I = 0x12

.field private static final SMS_OUTBOX:I = 0x8

.field private static final SMS_OUTBOX_ID:I = 0x9

.field private static final SMS_QUERY_THREAD_ID:I = 0x13

.field private static final SMS_QUEUED:I = 0x1a

.field private static final SMS_RAW_MESSAGE:I = 0xf

.field private static final SMS_REFRESH_THREADS:I = 0x24

.field private static final SMS_REMOVE_ALL_SIM_DB:I = 0x20

.field private static final SMS_REMOVE_ALL_UIM_DB:I = 0x22

.field private static final SMS_RUIM:I = 0x1f

.field private static final SMS_SENT:I = 0x4

.field private static final SMS_SENT_ID:I = 0x5

.field private static final SMS_SIM:I = 0x17

.field private static final SMS_SIM_BASEWIN:I = 0x1d

.field private static final SMS_STATUS_ID:I = 0x14

.field private static final SMS_STATUS_PENDING:I = 0x15

.field private static final SMS_UNDELIVERED:I = 0x1b

.field private static final TABLE_RAW:Ljava/lang/String; = "raw"

.field static final TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final TABLE_SR_PENDING:Ljava/lang/String; = "sr_pending"

.field private static final TABLE_WORDS:Ljava/lang/String; = "words"

.field private static final TAG:Ljava/lang/String; = "SmsProvider"

.field private static final VND_ANDROID_DIR_SMS:Ljava/lang/String; = "vnd.android.cursor.dir/sms"

.field private static final VND_ANDROID_SMS:Ljava/lang/String; = "vnd.android.cursor.item/sms"

.field private static final VND_ANDROID_SMSCHAT:Ljava/lang/String; = "vnd.android.cursor.item/sms-chat"

.field private static final sConversationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDProjection:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field RestoreThreadIDCollect:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 91
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    .line 92
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    .line 97
    const-string v0, "content://sms/gsmsim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->SIM_URI_BASEWIN:Landroid/net/Uri;

    .line 98
    const-string v0, "content://sms/cdmaruim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->RUIM_URI:Landroid/net/Uri;

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    .line 116
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "service_center_address"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "message_class"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "index_on_sim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_status_report"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_cdma_format"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dcs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pid"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "message_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->SIM_COLUMNS:[Ljava/lang/String;

    .line 1813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    .line 1815
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    .line 1857
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1861
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1862
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1863
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1864
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1865
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1866
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1867
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "draft"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1868
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "draft/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1869
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1870
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1871
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "undelivered"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1872
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "failed"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1873
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "failed/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1874
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "queued"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1875
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1876
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "conversations/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1877
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "raw"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1878
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "attachments"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1879
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "attachments/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1880
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "threadID"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1881
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "threadID/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1882
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "status/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1883
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sr_pending"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1884
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1885
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1887
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "gsmsim"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1888
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "gsmsim/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1889
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "cdmaruim"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1890
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "cdmaruim/#"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1893
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "removesmsimdb"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1894
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "loadallsimsms2db"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1895
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "removesmsuimdb"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1896
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "loadalluimsms2db"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1898
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "refreshthreads"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1900
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "body AS snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "sms.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_count"

    const-string v2, "groups.msg_count AS msg_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "delta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    return-void
.end method

.method private RestoreRefreshTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 1071
    const-string v0, ""

    .line 1072
    .local v0, RestoreThreadIDS:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1073
    iget-object v3, p0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1074
    .local v2, tid:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1078
    .end local v2           #tid:Ljava/lang/Long;
    :cond_1
    iget-object v3, p0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1079
    invoke-static {p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1082
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "type"

    .prologue
    .line 720
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 722
    if-eqz p2, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 725
    :cond_0
    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V
    .locals 3
    .parameter "qb"
    .parameter "type"
    .parameter "expr"

    .prologue
    .line 706
    const-string v1, "sms"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 708
    if-eqz p2, :cond_2

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, where:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 716
    .end local v0           #where:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 713
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 3
    .parameter "qb"
    .parameter "Expr"

    .prologue
    .line 728
    const-string v1, "sms"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 729
    const-string v0, ""

    .line 730
    .local v0, append:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((type=4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR (type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR (type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 736
    return-void
.end method

.method private convertSimToSms(ILandroid/telephony/SmsMessage;)Ljava/util/ArrayList;
    .locals 11
    .parameter "id"
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SmsMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0xad

    const/16 v9, 0x61

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v0, result:Ljava/util/ArrayList;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isOutGoingSms()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isOutGoingSms()Z

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getAbsoluteValidityPeriod()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 468
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getAbsoluteValidityPeriod()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :goto_2
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isOutGoingSms()Z

    move-result v1

    if-ne v1, v2, :cond_5

    .line 481
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :goto_3
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    .line 486
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v9, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v10, :cond_9

    .line 496
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 497
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :goto_6
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getdataCodingScheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v9, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v10, :cond_e

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v8, :cond_e

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 520
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_7
    return-object v0

    .line 461
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 464
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage$MessageClass;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 470
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 483
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 488
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_7
    move v1, v3

    .line 497
    goto :goto_5

    .line 499
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 500
    :cond_9
    invoke-static {}, Lcom/android/providers/telephony/util/SimUtils;->isDualphone()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-ne v1, v2, :cond_c

    .line 502
    :cond_a
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v1

    if-ne v1, v2, :cond_b

    move v1, v2

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_b
    move v1, v3

    goto :goto_8

    .line 504
    :cond_c
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v1

    if-ne v1, v8, :cond_d

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 507
    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 522
    :cond_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method private deleteMessageFromIcc(II)I
    .locals 9
    .parameter "simIndex"
    .parameter "phoneType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1535
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 1538
    .local v2, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/providers/telephony/util/SimUtils;->deleteMessageFromIccExt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1543
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1545
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p2, v7, :cond_1

    .line 1546
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1550
    :cond_0
    :goto_0
    return v3

    .line 1547
    :cond_1
    if-ne p2, v8, :cond_0

    .line 1548
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->RUIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1539
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1540
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS ICC ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1543
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1545
    .restart local v0       #cr:Landroid/content/ContentResolver;
    if-ne p2, v7, :cond_3

    .line 1546
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1550
    :cond_2
    :goto_1
    throw v3

    .line 1547
    :cond_3
    if-ne p2, v8, :cond_2

    .line 1548
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->RUIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private static deleteMessageFromIcc(IILandroid/content/ContentResolver;)I
    .locals 8
    .parameter "simIndex"
    .parameter "phoneType"
    .parameter "cr"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1554
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 1557
    .local v1, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/providers/telephony/util/SimUtils;->deleteMessageFromIccExt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1563
    if-ne p1, v6, :cond_1

    .line 1564
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1566
    :cond_0
    :goto_0
    return v2

    .line 1565
    :cond_1
    if-ne p1, v7, :cond_0

    .line 1566
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->RUIM_URI:Landroid/net/Uri;

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, exception:Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad SMS ICC ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1563
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    if-ne p1, v6, :cond_3

    .line 1564
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1566
    :cond_2
    :goto_1
    throw v2

    .line 1565
    :cond_3
    if-ne p1, v7, :cond_2

    .line 1566
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->RUIM_URI:Landroid/net/Uri;

    invoke-virtual {p2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private deleteMessageFromIcc(Ljava/lang/String;)I
    .locals 7
    .parameter "messageIndexString"

    .prologue
    const/4 v6, 0x0

    .line 1517
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 1520
    .local v2, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1527
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1529
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1530
    return v3

    .line 1520
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1523
    :catch_0
    move-exception v1

    .line 1524
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS ICC ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1527
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1529
    .restart local v0       #cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1530
    throw v3
.end method

.method private deleteMessageFromSim(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "format"
    .parameter "messageIndexString"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1479
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 1482
    .local v2, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    const-string v5, "cdma"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1483
    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1499
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1502
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_0

    .line 1504
    const-string v4, "__ALBAL__"

    const-string v5, "SmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1510
    :cond_0
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1511
    :goto_1
    return v3

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    move v3, v4

    .line 1483
    goto :goto_0

    .line 1486
    :cond_2
    :try_start_1
    const-string v5, "gsm"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1487
    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 1499
    :goto_2
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1502
    .restart local v0       #cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_3

    .line 1504
    const-string v4, "__ALBAL__"

    const-string v5, "SmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1510
    :cond_3
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_4
    move v3, v4

    .line 1487
    goto :goto_2

    .line 1491
    :cond_5
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_7

    .line 1499
    :goto_3
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1502
    .restart local v0       #cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_6

    .line 1504
    const-string v4, "__ALBAL__"

    const-string v5, "SmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1510
    :cond_6
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_7
    move v3, v4

    .line 1491
    goto :goto_3

    .line 1494
    :catch_0
    move-exception v1

    .line 1495
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1496
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS SIM ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1499
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1502
    .restart local v0       #cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_8

    .line 1504
    const-string v4, "__ALBAL__"

    const-string v5, "SmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v4, p0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1510
    :cond_8
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1511
    throw v3
.end method

.method private deleteOneSimSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 13
    .parameter "db"
    .parameter "message_id"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 1087
    const/4 v10, -0x1

    .line 1088
    .local v10, simsms:I
    const/4 v9, -0x1

    .line 1092
    .local v9, simindex:I
    const-string v1, "sms"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "is_cdma_format"

    aput-object v0, v2, v12

    const-string v0, "index_on_sim"

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1095
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1096
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1098
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1100
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_1
    if-eqz v10, :cond_2

    if-ne v10, v11, :cond_3

    .line 1106
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 1108
    invoke-direct {p0, v9, v10}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(II)I

    move-result v0

    .line 1110
    :goto_0
    return v0

    :cond_3
    move v0, v11

    goto :goto_0
.end method

.method public static deleteSimSms(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 12
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 1114
    const/4 v10, -0x1

    .line 1115
    .local v10, simsms:I
    const/4 v9, -0x1

    .line 1120
    .local v9, simindex:I
    const-string v1, "sms"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "is_cdma_format"

    aput-object v0, v2, v3

    const-string v0, "index_on_sim"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1124
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1126
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1128
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1131
    if-eqz v10, :cond_1

    if-ne v10, v11, :cond_0

    .line 1132
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1134
    invoke-static {v9, v10, p3}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(IILandroid/content/ContentResolver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1138
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1141
    :cond_3
    return v11
.end method

.method private getAllMessagesFromIcc(I)Landroid/database/Cursor;
    .locals 8
    .parameter "phoneType"

    .prologue
    .line 622
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 624
    .local v6, smsManager:Landroid/telephony/SmsManager;
    invoke-static {p1}, Lcom/android/providers/telephony/util/SimUtils;->getAllMessagesFromIccExt(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 628
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v5, 0x0

    .line 631
    .local v5, row:Ljava/util/ArrayList;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->SIM_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 632
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 633
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 634
    .local v3, message:Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    .line 637
    invoke-direct {p0, v2, v3}, Lcom/android/providers/telephony/SmsProvider;->convertSimToSms(ILandroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v5

    .line 638
    if-eqz v5, :cond_0

    .line 639
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 632
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v3           #message:Landroid/telephony/SmsMessage;
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method private getAllMessagesFromSim()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 561
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 562
    .local v6, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v4

    .line 563
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v5, 0x0

    .line 565
    .local v5, row:Ljava/util/ArrayList;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->SIM_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 567
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 568
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 569
    .local v3, message:Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    .line 570
    invoke-direct {p0, v2, v3}, Lcom/android/providers/telephony/SmsProvider;->convertSimToSms(ILandroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v5

    .line 571
    if-eqz v5, :cond_0

    .line 572
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 567
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v3           #message:Landroid/telephony/SmsMessage;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/SmsProvider;->withSimNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method private getContactIdStatement(J)Ljava/lang/String;
    .locals 6
    .parameter "contactId"

    .prologue
    .line 439
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contactId> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, where:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/android/providers/telephony/ContactMessageStore;->getHtcThreadIdsFromContactId(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 444
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->getConcatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, appendStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .end local v0           #appendStr:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .parameter "messageIndexString"
    .parameter "phoneType"

    .prologue
    .line 588
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 589
    .local v3, messageIndex:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 594
    .local v6, smsManager:Landroid/telephony/SmsManager;
    invoke-static {p2}, Lcom/android/providers/telephony/util/SimUtils;->getAllMessagesFromIccExt(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 595
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v5, 0x0

    .line 598
    .local v5, row:Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 599
    .local v2, message:Landroid/telephony/SmsMessage;
    if-nez v2, :cond_0

    .line 600
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message not retrieved. ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v2           #message:Landroid/telephony/SmsMessage;
    .end local v3           #messageIndex:I
    .end local v4           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .end local v5           #row:Ljava/util/ArrayList;
    .end local v6           #smsManager:Landroid/telephony/SmsManager;
    :catch_0
    move-exception v1

    .line 616
    .local v1, exception:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad SMS ICC ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 608
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    .restart local v2       #message:Landroid/telephony/SmsMessage;
    .restart local v3       #messageIndex:I
    .restart local v4       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .restart local v5       #row:Ljava/util/ArrayList;
    .restart local v6       #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    :try_start_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->SIM_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 609
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v7, 0x0

    invoke-direct {p0, v7, v2}, Lcom/android/providers/telephony/SmsProvider;->convertSimToSms(ILandroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v5

    .line 610
    if-eqz v5, :cond_1

    .line 611
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 614
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private getSingleMessageFromSim(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "messageIndexString"

    .prologue
    .line 533
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 534
    .local v3, messageIndex:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 535
    .local v6, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v4

    .line 536
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v5, 0x0

    .line 538
    .local v5, singleRow:Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 539
    .local v2, message:Landroid/telephony/SmsMessage;
    if-nez v2, :cond_0

    .line 540
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message not retrieved. ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v2           #message:Landroid/telephony/SmsMessage;
    .end local v3           #messageIndex:I
    .end local v4           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .end local v5           #singleRow:Ljava/util/ArrayList;
    .end local v6           #smsManager:Landroid/telephony/SmsManager;
    :catch_0
    move-exception v1

    .line 551
    .local v1, exception:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 552
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad SMS SIM ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 544
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    .restart local v2       #message:Landroid/telephony/SmsMessage;
    .restart local v3       #messageIndex:I
    .restart local v4       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .restart local v5       #singleRow:Ljava/util/ArrayList;
    .restart local v6       #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    :try_start_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->SIM_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 545
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v7, 0x0

    invoke-direct {p0, v7, v2}, Lcom/android/providers/telephony/SmsProvider;->convertSimToSms(ILandroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v5

    .line 546
    if-eqz v5, :cond_1

    .line 547
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 549
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/SmsProvider;->withSimNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private loadAllMessagesFromIcc(I)I
    .locals 19
    .parameter "phoneType"

    .prologue
    .line 666
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v18

    .line 668
    .local v18, smsManager:Landroid/telephony/SmsManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/util/SimUtils;->getAllMessagesFromIccExt(I)Ljava/util/ArrayList;

    move-result-object v17

    .line 670
    .local v17, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v13, :cond_3

    .line 671
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/SmsMessage;

    .line 672
    .local v16, message:Landroid/telephony/SmsMessage;
    if-eqz v16, :cond_1

    .line 674
    const-wide/16 v8, -0x1

    .line 676
    .local v8, threadId:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/android/providers/telephony/util/SimUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v8

    .line 678
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 682
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v11

    move/from16 v10, p1

    move/from16 v12, p1

    invoke-static/range {v1 .. v12}, Lcom/android/providers/telephony/util/SimUtils;->inboxaddSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJIII)V

    .line 670
    .end local v8           #threadId:J
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 688
    .restart local v8       #threadId:J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v11

    move/from16 v10, p1

    move/from16 v12, p1

    invoke-static/range {v3 .. v12}, Lcom/android/providers/telephony/util/SimUtils;->sentaddSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIII)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 693
    :catch_0
    move-exception v14

    .line 694
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 699
    .end local v8           #threadId:J
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .end local v16           #message:Landroid/telephony/SmsMessage;
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1795
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1796
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1798
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1801
    const-string v1, "content://mms-sms/conversations/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1802
    return-void
.end method

.method private withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"
    .parameter "phoneType"

    .prologue
    .line 652
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->SIM_URI_BASEWIN:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 659
    .end local p1
    :goto_0
    return-object p1

    .line 655
    .restart local p1
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->RUIM_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 659
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private withSimNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->SIM_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 582
    return-object p1
.end method


# virtual methods
.method public _delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 41
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1157
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v29

    .line 1158
    .local v29, processID:I
    const v4, 0xcb23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Delete uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selectionArgs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1161
    const/16 v18, 0x0

    .line 1162
    .local v18, count:I
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v26

    .line 1163
    .local v26, match:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1165
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", match="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "where= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v11, 0x0

    .line 1173
    .local v11, affectedIDs:[J
    const-string v4, "v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1174
    .local v39, v2:Ljava/lang/String;
    if-eqz v39, :cond_0

    const-string v4, "true"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1175
    const-string v4, "contactId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1176
    .local v23, idStr:Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 1178
    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1179
    .local v16, contactId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/SmsProvider;->getContactIdStatement(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1180
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "where> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    .end local v16           #contactId:J
    .end local v23           #idStr:Ljava/lang/String;
    :cond_0
    sparse-switch v26, :sswitch_data_0

    .line 1434
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1181
    .restart local v23       #idStr:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 1182
    .local v19, e:Ljava/lang/NumberFormatException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad CONTACT ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1194
    .end local v19           #e:Ljava/lang/NumberFormatException;
    .end local v23           #idStr:Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1195
    const-string v4, "sms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1196
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 1197
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v34

    .line 1198
    .local v34, size:I
    if-lez v34, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1199
    move/from16 v0, v34

    new-array v11, v0, [J

    .line 1200
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 1201
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v11, v22

    .line 1202
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 1200
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1205
    .end local v22           #i:I
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1210
    .end local v15           #c:Landroid/database/Cursor;
    .end local v34           #size:I
    :cond_2
    const-string v4, "bg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1214
    .local v13, bg:Ljava/lang/String;
    const-string v4, "trash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1215
    .local v37, trash:Ljava/lang/String;
    const-string v36, ""

    .line 1218
    .local v36, threadIds:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT DISTINCT thread_id FROM sms WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1219
    .local v30, query:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 1220
    .restart local v15       #c:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 1222
    const/4 v12, 0x1

    .line 1223
    .local v12, bFirst:Z
    :goto_1
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1224
    if-nez v12, :cond_3

    .line 1225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1228
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v36

    goto :goto_1

    .line 1227
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 1231
    :cond_4
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1235
    .end local v12           #bFirst:Z
    :cond_5
    if-eqz v13, :cond_6

    const-string v4, "true"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    if-eqz v37, :cond_d

    const-string v4, "true"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1238
    :cond_7
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v40, values:Landroid/content/ContentValues;
    if-eqz v37, :cond_c

    const-string v4, "true"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1241
    const-string v4, "type"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    :goto_3
    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1250
    :try_start_4
    const-string v4, "sms"

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v18

    .line 1254
    const/4 v4, 0x0

    :try_start_5
    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1266
    .end local v15           #c:Landroid/database/Cursor;
    .end local v30           #query:Ljava/lang/String;
    .end local v40           #values:Landroid/content/ContentValues;
    :goto_4
    if-eqz v18, :cond_8

    .line 1268
    if-eqz v13, :cond_e

    const-string v4, "true"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1270
    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1437
    .end local v13           #bg:Ljava/lang/String;
    .end local v36           #threadIds:Ljava/lang/String;
    .end local v37           #trash:Ljava/lang/String;
    :cond_8
    :goto_5
    if-lez v18, :cond_b

    .line 1440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_9

    .line 1442
    const-string v4, "__ALBAL__"

    const-string v5, "SmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1449
    :cond_9
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1450
    if-eqz v11, :cond_a

    .line 1452
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 1453
    .local v25, intent:Landroid/content/Intent;
    const-string v4, "com.android.mms.deleteSMS"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    const-string v4, "affectedIDs"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1464
    .end local v25           #intent:Landroid/content/Intent;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v24

    .line 1467
    .local v24, ins:Lcom/android/providers/telephony/ContactMessageStore;
    if-eqz v24, :cond_b

    .line 1468
    invoke-virtual/range {v24 .. v24}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    .end local v24           #ins:Lcom/android/providers/telephony/ContactMessageStore;
    :cond_b
    move/from16 v4, v18

    .line 1471
    :goto_6
    return v4

    .line 1231
    .restart local v12       #bFirst:Z
    .restart local v13       #bg:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v30       #query:Ljava/lang/String;
    .restart local v36       #threadIds:Ljava/lang/String;
    .restart local v37       #trash:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1262
    .end local v12           #bFirst:Z
    .end local v15           #c:Landroid/database/Cursor;
    .end local v30           #query:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 1263
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1245
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v30       #query:Ljava/lang/String;
    .restart local v40       #values:Landroid/content/ContentValues;
    :cond_c
    :try_start_7
    const-string v4, "thread_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 1251
    :catch_2
    move-exception v19

    .line 1252
    .local v19, e:Landroid/database/sqlite/SQLiteAbortException;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1254
    const/4 v4, 0x0

    :try_start_9
    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto/16 :goto_4

    .end local v19           #e:Landroid/database/sqlite/SQLiteAbortException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    throw v4

    .line 1258
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_d
    const-string v4, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v18

    goto/16 :goto_4

    .line 1275
    .end local v15           #c:Landroid/database/Cursor;
    .end local v30           #query:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1282
    .end local v13           #bg:Ljava/lang/String;
    .end local v36           #threadIds:Ljava/lang/String;
    .end local v37           #trash:Ljava/lang/String;
    :sswitch_1
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1284
    .local v28, message_id:I
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1285
    const/4 v4, 0x1

    new-array v11, v4, [J

    .line 1286
    const/4 v4, 0x0

    move/from16 v0, v28

    int-to-long v5, v0

    aput-wide v5, v11, v4

    .line 1290
    :cond_f
    const-string v4, "bg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1294
    .restart local v13       #bg:Ljava/lang/String;
    const-string v4, "trash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1297
    .restart local v37       #trash:Ljava/lang/String;
    if-eqz v13, :cond_10

    const-string v4, "true"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1298
    const/4 v14, 0x1

    .line 1304
    .local v14, bgDelete:Z
    :goto_7
    if-eqz v37, :cond_11

    const-string v4, "true"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1305
    const/16 v38, 0x1

    .line 1308
    .local v38, trashDelete:Z
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v38

    invoke-static {v3, v0, v14, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;IZZ)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result v18

    goto/16 :goto_5

    .line 1300
    .end local v14           #bgDelete:Z
    .end local v38           #trashDelete:Z
    :cond_10
    const/4 v14, 0x0

    .restart local v14       #bgDelete:Z
    goto :goto_7

    .line 1307
    :cond_11
    const/16 v38, 0x0

    .restart local v38       #trashDelete:Z
    goto :goto_8

    .line 1309
    .end local v13           #bg:Ljava/lang/String;
    .end local v14           #bgDelete:Z
    .end local v28           #message_id:I
    .end local v37           #trash:Ljava/lang/String;
    .end local v38           #trashDelete:Z
    :catch_3
    move-exception v19

    .line 1310
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad message id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1320
    .end local v19           #e:Ljava/lang/Exception;
    :sswitch_2
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-result v35

    .line 1329
    .local v35, threadID:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1331
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1332
    const-string v4, "sms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1333
    .restart local v15       #c:Landroid/database/Cursor;
    if-eqz v15, :cond_13

    .line 1334
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v34

    .line 1335
    .restart local v34       #size:I
    if-lez v34, :cond_12

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1336
    move/from16 v0, v34

    new-array v11, v0, [J

    .line 1337
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    .line 1338
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v11, v22

    .line 1339
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 1337
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 1321
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #i:I
    .end local v34           #size:I
    .end local v35           #threadID:I
    :catch_4
    move-exception v20

    .line 1322
    .local v20, ex:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 1323
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad conversation thread id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1342
    .end local v20           #ex:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v34       #size:I
    .restart local v35       #threadID:I
    :cond_12
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1346
    .end local v15           #c:Landroid/database/Cursor;
    .end local v34           #size:I
    :cond_13
    const-string v4, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1347
    move/from16 v0, v35

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_5

    .line 1353
    .end local v35           #threadID:I
    :sswitch_3
    :try_start_c
    const-string v4, "raw"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-result v18

    goto/16 :goto_5

    .line 1355
    :catch_5
    move-exception v19

    .line 1356
    .restart local v19       #e:Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1364
    .end local v19           #e:Ljava/lang/Exception;
    :sswitch_4
    :try_start_d
    const-string v4, "sr_pending"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result v18

    goto/16 :goto_5

    .line 1366
    :catch_6
    move-exception v19

    .line 1367
    .restart local v19       #e:Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1373
    .end local v19           #e:Ljava/lang/Exception;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1376
    .local v27, messageIndexString:Ljava/lang/String;
    const-string v21, "none"

    .line 1377
    .local v21, format:Ljava/lang/String;
    const-string v4, "true"

    const-string v5, "isCdmaFormat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1378
    const-string v21, "cdma"

    .line 1383
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_6

    .line 1379
    :cond_15
    const-string v4, "false"

    const-string v5, "isCdmaFormat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1380
    const-string v21, "gsm"

    goto :goto_a

    .line 1391
    .end local v21           #format:Ljava/lang/String;
    .end local v27           #messageIndexString:Ljava/lang/String;
    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index_on_sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND is_cdma_format= 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1393
    .local v32, selectionSIM:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(II)I

    move-result v4

    if-lez v4, :cond_16

    .line 1395
    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteSimSmsOnDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1396
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 1398
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1404
    .end local v32           #selectionSIM:Ljava/lang/String;
    :sswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index_on_sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND is_cdma_format= 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1407
    .local v33, selectionUIM:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(II)I

    move-result v4

    if-lez v4, :cond_17

    .line 1409
    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteSimSmsOnDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1410
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 1412
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1418
    .end local v33           #selectionUIM:Ljava/lang/String;
    :sswitch_8
    const-string v31, "index_on_sim > 0 AND is_cdma_format = 0"

    .line 1420
    .local v31, selection:Ljava/lang/String;
    const-string v4, "sms"

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_6

    .line 1427
    .end local v31           #selection:Ljava/lang/String;
    :sswitch_9
    const-string v31, "index_on_sim > 0 AND is_cdma_format = 1"

    .line 1428
    .restart local v31       #selection:Ljava/lang/String;
    const-string v4, "sms"

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_6

    .line 1190
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xf -> :sswitch_3
        0x15 -> :sswitch_4
        0x17 -> :sswitch_5
        0x1d -> :sswitch_6
        0x1f -> :sswitch_7
        0x20 -> :sswitch_8
        0x22 -> :sswitch_9
    .end sparse-switch
.end method

.method public _insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 34
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    .line 774
    .local v24, processID:I
    const v3, 0xcb23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Insert uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 779
    const/16 v28, 0x0

    .line 780
    .local v28, threadId:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 781
    .local v11, address:Ljava/lang/String;
    const/16 v29, 0x0

    .line 783
    .local v29, type:I
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 785
    .local v23, match:I
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", match="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    if-eqz p2, :cond_1

    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 792
    :try_start_0
    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 793
    .local v19, iRead:I
    if-ltz v19, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_1

    .line 794
    :cond_0
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v19           #iRead:I
    :cond_1
    :goto_0
    const-string v27, "sms"

    .line 805
    .local v27, table:Ljava/lang/String;
    sparse-switch v23, :sswitch_data_0

    .line 868
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/16 v31, 0x0

    .line 1067
    :cond_2
    :goto_1
    return-object v31

    .line 797
    .end local v27           #table:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 798
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 807
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v27       #table:Ljava/lang/String;
    :sswitch_0
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 808
    .local v30, typeObj:Ljava/lang/Integer;
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " type= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    if-eqz v30, :cond_11

    .line 810
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 872
    .end local v30           #typeObj:Ljava/lang/Integer;
    :goto_2
    const-string v3, "sms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 873
    const/4 v9, 0x0

    .line 874
    .local v9, addDate:Z
    const/4 v10, 0x0

    .line 877
    .local v10, addType:Z
    if-nez p2, :cond_12

    .line 878
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 879
    .local v33, values:Landroid/content/ContentValues;
    const/4 v9, 0x1

    .line 880
    const/4 v10, 0x1

    .line 893
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    .line 894
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 898
    :cond_4
    const-string v3, "date2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 899
    const-string v3, "date"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 900
    .local v15, date:J
    const-string v3, "date2"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 903
    .end local v15           #date:J
    :cond_5
    if-eqz v10, :cond_6

    if-eqz v29, :cond_6

    .line 904
    const-string v3, "type"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    :cond_6
    const-string v3, "thread_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 909
    const-string v3, "address"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 912
    const-string v3, "v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 913
    .local v32, v2:Ljava/lang/String;
    if-eqz v32, :cond_7

    const-string v3, "true"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 914
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v11}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getThreadId(JLjava/lang/String;)J

    move-result-wide v20

    .line 916
    .local v20, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v20, v3

    if-gtz v3, :cond_14

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-wide v5, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    .line 917
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-wide v5, Lcom/android/providers/telephony/ContactMessageStore;->CONTACT_ID_LOW_BOUND:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 918
    const-string v3, "thread_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 934
    .end local v20           #id:J
    :cond_7
    :goto_4
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread id> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v3, 0x3

    move/from16 v0, v29

    if-eq v0, v3, :cond_9

    .line 941
    if-eqz v28, :cond_8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    :cond_8
    if-eqz v11, :cond_9

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v11}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 943
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get thread id> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v3, "thread_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 959
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_15

    .line 961
    const-string v3, "person"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 964
    const/4 v13, 0x0

    .line 967
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "person"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 972
    if-eqz v13, :cond_b

    .line 973
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 974
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 975
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 976
    .local v20, id:Ljava/lang/Long;
    const-string v3, "person"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 980
    .end local v20           #id:Ljava/lang/Long;
    :cond_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1003
    .end local v9           #addDate:Z
    .end local v10           #addType:Z
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v32           #v2:Ljava/lang/String;
    :cond_b
    :goto_5
    const/4 v12, 0x0

    .line 1004
    .local v12, bRestoreProcess:Z
    const-string v3, "RestoreProcess"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "RestoreProcess"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1006
    const-string v3, "RestoreProcess"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1007
    const/4 v12, 0x1

    .line 1009
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    .line 1010
    .local v17, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "body"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v25

    .line 1015
    .local v25, rowID:J
    const-string v3, "sms"

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_d

    .line 1019
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1020
    .local v14, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1021
    const-string v3, "index_text"

    const-string v4, "body"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v3, "source_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    const-string v3, "table_to_use"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    const-string v3, "words"

    const-string v4, "index_text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1026
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_d
    const-wide/16 v3, 0x0

    cmp-long v3, v25, v3

    if-lez v3, :cond_19

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v3, :cond_e

    .line 1031
    const-string v3, "__ALBAL__"

    const-string v4, "SmsProvider  SetBackUp"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1038
    :cond_e
    if-eqz v28, :cond_f

    if-eqz v11, :cond_f

    .line 1039
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v11}, Lcom/android/providers/telephony/MmsSmsV2Provider;->refreshcontactsTable(JLjava/lang/String;)V

    .line 1044
    :cond_f
    if-eqz v28, :cond_10

    .line 1045
    if-eqz v12, :cond_18

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_10
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1055
    .local v31, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v22

    .line 1058
    .local v22, ins:Lcom/android/providers/telephony/ContactMessageStore;
    if-eqz v22, :cond_2

    .line 1059
    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    goto/16 :goto_1

    .line 813
    .end local v12           #bRestoreProcess:Z
    .end local v17           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v22           #ins:Lcom/android/providers/telephony/ContactMessageStore;
    .end local v25           #rowID:J
    .end local v31           #uri:Landroid/net/Uri;
    .end local v33           #values:Landroid/content/ContentValues;
    .restart local v30       #typeObj:Ljava/lang/Integer;
    :cond_11
    const/16 v29, 0x1

    .line 815
    goto/16 :goto_2

    .line 818
    .end local v30           #typeObj:Ljava/lang/Integer;
    :sswitch_1
    const/16 v29, 0x1

    .line 819
    goto/16 :goto_2

    .line 822
    :sswitch_2
    const/16 v29, 0x5

    .line 823
    goto/16 :goto_2

    .line 826
    :sswitch_3
    const/16 v29, 0x6

    .line 827
    goto/16 :goto_2

    .line 830
    :sswitch_4
    const/16 v29, 0x2

    .line 831
    goto/16 :goto_2

    .line 834
    :sswitch_5
    const/16 v29, 0x3

    .line 835
    goto/16 :goto_2

    .line 838
    :sswitch_6
    const/16 v29, 0x4

    .line 839
    goto/16 :goto_2

    .line 842
    :sswitch_7
    const-string v27, "raw"

    .line 843
    goto/16 :goto_2

    .line 846
    :sswitch_8
    const-string v27, "sr_pending"

    .line 847
    goto/16 :goto_2

    .line 850
    :sswitch_9
    const-string v27, "attachments"

    .line 851
    goto/16 :goto_2

    .line 854
    :sswitch_a
    const-string v27, "canonical_addresses"

    .line 855
    goto/16 :goto_2

    .line 859
    :sswitch_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/SmsProvider;->loadAllMessagesFromIcc(I)I

    .line 860
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 863
    :sswitch_c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/SmsProvider;->loadAllMessagesFromIcc(I)I

    .line 864
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 882
    .restart local v9       #addDate:Z
    .restart local v10       #addType:Z
    :cond_12
    new-instance v33, Landroid/content/ContentValues;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 884
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 885
    const/4 v9, 0x1

    .line 888
    :cond_13
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 889
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 921
    .local v20, id:J
    .restart local v32       #v2:Ljava/lang/String;
    :cond_14
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 923
    const-wide/16 v3, 0x0

    cmp-long v3, v20, v3

    if-lez v3, :cond_7

    .line 924
    const-string v3, "thread_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 984
    .end local v20           #id:J
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v18

    .line 986
    .restart local v18       #e:Ljava/lang/Exception;
    if-eqz v13, :cond_b

    .line 987
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 994
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v18           #e:Ljava/lang/Exception;
    :cond_15
    const-string v3, "read"

    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 997
    .end local v9           #addDate:Z
    .end local v10           #addType:Z
    .end local v32           #v2:Ljava/lang/String;
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_16
    if-nez p2, :cond_17

    .line 998
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v33       #values:Landroid/content/ContentValues;
    goto/16 :goto_5

    .line 1000
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_17
    move-object/from16 v33, p2

    .restart local v33       #values:Landroid/content/ContentValues;
    goto/16 :goto_5

    .line 1050
    .restart local v12       #bRestoreProcess:Z
    .restart local v17       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v25       #rowID:J
    :cond_18
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1063
    :cond_19
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsProvider.insert: failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 805
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_9
        0x12 -> :sswitch_a
        0x15 -> :sswitch_8
        0x18 -> :sswitch_2
        0x1a -> :sswitch_3
        0x21 -> :sswitch_b
        0x23 -> :sswitch_c
    .end sparse-switch
.end method

.method public _query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 29
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 178
    const/16 v23, 0x0

    .line 185
    .local v23, processID:I
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 187
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "category"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v14

    .line 191
    .local v14, category:I
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 193
    const/4 v5, -0x1

    if-ne v14, v5, :cond_6

    const/4 v15, 0x0

    .line 201
    .local v15, categoryExpr:Ljava/lang/String;
    :goto_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_0

    .line 203
    const-string v5, "GroupCategory"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v11

    .line 204
    .local v11, Messagecategory:I
    const/4 v5, 0x1

    if-ne v11, v5, :cond_0

    .line 206
    const/4 v15, 0x0

    .line 207
    const-string v15, " htc_category= 0 OR htc_category= 3"

    .line 211
    .end local v11           #Messagecategory:I
    :cond_0
    const-string v5, "SecureInclude"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v12

    .line 212
    .local v12, SecureInclude:I
    const/4 v5, 0x1

    if-ne v12, v5, :cond_1

    .line 214
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR htc_category = 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 221
    :cond_1
    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 224
    .local v21, match:I
    const-string v5, "Backup"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 228
    .local v13, bBackupstr:Ljava/lang/String;
    const/4 v5, 0x6

    move/from16 v0, v21

    if-eq v0, v5, :cond_2

    .line 229
    if-nez v15, :cond_a

    .line 230
    const-string v15, " "

    .line 232
    const-string v5, "true"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (thread_id > 0 OR type = 3) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 250
    :cond_2
    :goto_1
    const-string v5, "trashcan"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v26

    .line 251
    .local v26, trashcan:I
    const/4 v5, -0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_c

    const-string v27, "type > 0"

    .line 252
    .local v27, trashcanExpr:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 253
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 254
    :cond_3
    move-object/from16 v15, v27

    .line 262
    :cond_4
    :goto_3
    const-string v5, "v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 263
    .local v28, v2:Ljava/lang/String;
    if-eqz v28, :cond_5

    const-string v5, "true"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    const-string v5, "contactId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 265
    .local v20, idStr:Ljava/lang/String;
    if-eqz v20, :cond_5

    .line 267
    :try_start_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 268
    .local v16, contactId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/SmsProvider;->getContactIdStatement(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 270
    const-string v5, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "where> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v16           #contactId:J
    .end local v20           #idStr:Ljava/lang/String;
    :cond_5
    packed-switch v21, :pswitch_data_0

    .line 415
    :pswitch_0
    const-string v5, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v24, 0x0

    .line 434
    :goto_4
    return-object v24

    .line 193
    .end local v12           #SecureInclude:I
    .end local v13           #bBackupstr:Ljava/lang/String;
    .end local v15           #categoryExpr:Ljava/lang/String;
    .end local v21           #match:I
    .end local v26           #trashcan:I
    .end local v27           #trashcanExpr:Ljava/lang/String;
    .end local v28           #v2:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " htc_category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 197
    :cond_7
    const/4 v5, -0x1

    if-ne v14, v5, :cond_8

    const-string v15, " htc_category= 0"

    .restart local v15       #categoryExpr:Ljava/lang/String;
    :goto_5
    goto/16 :goto_0

    .end local v15           #categoryExpr:Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " htc_category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 235
    .restart local v12       #SecureInclude:I
    .restart local v13       #bBackupstr:Ljava/lang/String;
    .restart local v15       #categoryExpr:Ljava/lang/String;
    .restart local v21       #match:I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thread_id > 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 240
    :cond_a
    const-string v5, "true"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND ( thread_id > 0 OR type = 3) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 243
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND thread_id > 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 251
    .restart local v26       #trashcan:I
    :cond_c
    const-string v27, ""

    goto/16 :goto_2

    .line 256
    .restart local v27       #trashcanExpr:Ljava/lang/String;
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 271
    .restart local v20       #idStr:Ljava/lang/String;
    .restart local v28       #v2:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 272
    .local v18, e:Ljava/lang/NumberFormatException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 273
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad CONTACT ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    .end local v18           #e:Ljava/lang/NumberFormatException;
    .end local v20           #idStr:Ljava/lang/String;
    :pswitch_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    .line 419
    :cond_e
    :goto_6
    const/4 v10, 0x0

    .line 421
    .local v10, orderBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 422
    move-object/from16 v10, p5

    .line 427
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 428
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 432
    .local v24, ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-interface {v0, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 286
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #orderBy:Ljava/lang/String;
    .end local v24           #ret:Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    goto :goto_6

    .line 290
    :pswitch_3
    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 295
    :pswitch_4
    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 300
    :pswitch_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 305
    :pswitch_6
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 310
    :pswitch_7
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 315
    :pswitch_8
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v15}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 320
    :pswitch_9
    const-string v5, "sms"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 329
    :pswitch_a
    const-string v5, "sms"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(_id = "

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

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 337
    :pswitch_b
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 339
    .local v25, threadID:I
    const-string v5, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query conversations: threadID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    const-string v5, "sms"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 342
    .end local v25           #threadID:I
    :catch_1
    move-exception v19

    .line 343
    .local v19, ex:Ljava/lang/Exception;
    const-string v6, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad conversation thread id: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 354
    .end local v19           #ex:Ljava/lang/Exception;
    :pswitch_c
    const-string v5, "sms, (SELECT thread_id AS group_thread_id, MAX(date) AS group_date, COUNT(*) AS msg_count FROM sms GROUP BY thread_id) AS groups"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 355
    const-string v5, "sms.thread_id = groups.group_thread_id AND sms.date = groups.group_date"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 356
    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_6

    .line 360
    :pswitch_d
    const-string v5, "raw"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 364
    :pswitch_e
    const-string v5, "sr_pending"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 368
    :pswitch_f
    const-string v5, "attachments"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 372
    :pswitch_10
    const-string v5, "attachments"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(sms_id = "

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

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 378
    :pswitch_11
    const-string v5, "canonical_addresses"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 379
    if-nez p2, :cond_e

    .line 380
    sget-object p2, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    goto/16 :goto_6

    .line 385
    :pswitch_12
    const-string v5, "sms"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(_id = "

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

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 390
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromSim()Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_4

    .line 393
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 395
    .local v22, messageIndexString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromSim(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_4

    .line 399
    .end local v22           #messageIndexString:Ljava/lang/String;
    :pswitch_15
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(I)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_4

    .line 402
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_4

    .line 406
    :pswitch_17
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(I)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_4

    .line 409
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_4

    .line 423
    .restart local v10       #orderBy:Ljava/lang/String;
    :cond_10
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 424
    const-string v10, "date DESC"

    goto/16 :goto_7

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_13
        :pswitch_14
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_2
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public _update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 39
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 1590
    .local v28, processID:I
    const v5, 0xcb23

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Update uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", selection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", selectionArgs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1601
    const-string v5, "v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1602
    .local v38, v2:Ljava/lang/String;
    if-eqz v38, :cond_0

    const-string v5, "true"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1603
    const-string v5, "contactId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1604
    .local v25, idStr:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 1606
    :try_start_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1607
    .local v16, contactId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/SmsProvider;->getContactIdStatement(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1609
    const-string v5, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "where> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    .end local v16           #contactId:J
    .end local v25           #idStr:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    const-string v5, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1622
    :try_start_1
    const-string v5, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1623
    .local v24, iRead:I
    if-ltz v24, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v24

    if-le v0, v5, :cond_2

    .line 1624
    :cond_1
    const-string v5, "read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1633
    .end local v24           #iRead:I
    :cond_2
    :goto_0
    const/16 v18, 0x0

    .line 1634
    .local v18, count:I
    const-string v30, "sms"

    .line 1635
    .local v30, table:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1636
    .local v21, extraWhere:Ljava/lang/String;
    const/16 v36, 0x0

    .line 1637
    .local v36, updateCSTimestamp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1638
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 1639
    .local v12, affectedIDs:[J
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1641
    .local v13, affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1700
    :pswitch_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1610
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #affectedIDs:[J
    .end local v13           #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v18           #count:I
    .end local v21           #extraWhere:Ljava/lang/String;
    .end local v30           #table:Ljava/lang/String;
    .end local v36           #updateCSTimestamp:Ljava/lang/String;
    .restart local v25       #idStr:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 1611
    .local v19, e:Ljava/lang/NumberFormatException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1612
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad CONTACT ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1627
    .end local v19           #e:Ljava/lang/NumberFormatException;
    .end local v25           #idStr:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 1628
    .local v19, e:Ljava/lang/Exception;
    const-string v5, "read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1643
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #affectedIDs:[J
    .restart local v13       #affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18       #count:I
    .restart local v21       #extraWhere:Ljava/lang/String;
    .restart local v30       #table:Ljava/lang/String;
    .restart local v36       #updateCSTimestamp:Ljava/lang/String;
    :pswitch_1
    const-string v30, "raw"

    .line 1704
    :goto_1
    :pswitch_2
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1708
    :try_start_2
    const-string v5, "sms"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "thread_id"

    aput-object v8, v6, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1709
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_6

    .line 1710
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v29

    .line 1711
    .local v29, size:I
    if-lez v29, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1712
    move/from16 v0, v29

    new-array v12, v0, [J

    .line 1713
    const/16 v22, 0x0

    .local v22, i:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 1714
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v12, v22

    .line 1715
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1716
    .local v33, tid:J
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1717
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1718
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1713
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1647
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #i:I
    .end local v29           #size:I
    .end local v33           #tid:J
    :pswitch_3
    const-string v30, "sr_pending"

    .line 1648
    goto :goto_1

    .line 1661
    :pswitch_4
    const-string v5, "updateCSTimestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1663
    goto/16 :goto_1

    .line 1670
    :pswitch_5
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

    move-result-object v21

    .line 1671
    goto/16 :goto_1

    .line 1674
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1677
    .local v31, threadId:Ljava/lang/String;
    :try_start_3
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1684
    goto/16 :goto_1

    .line 1678
    :catch_2
    move-exception v20

    .line 1679
    .local v20, ex:Ljava/lang/Exception;
    const-string v5, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad conversation thread id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1687
    .end local v20           #ex:Ljava/lang/Exception;
    .end local v31           #threadId:Ljava/lang/String;
    :pswitch_7
    const-string v5, "ClearHashSet"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ClearHashSet"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/SmsProvider;->RestoreThreadIDCollect:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1689
    const/4 v5, 0x0

    .line 1790
    :goto_3
    return v5

    .line 1691
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/telephony/SmsProvider;->RestoreRefreshTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 1693
    .local v37, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1694
    const/4 v5, 0x0

    goto :goto_3

    .line 1696
    .end local v37           #uri:Landroid/net/Uri;
    :pswitch_8
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

    move-result-object v21

    .line 1697
    goto/16 :goto_1

    .line 1721
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v29       #size:I
    :cond_5
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1724
    .end local v29           #size:I
    :cond_6
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v18

    .line 1731
    .end local v15           #c:Landroid/database/Cursor;
    :goto_4
    if-lez v18, :cond_e

    .line 1734
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v5, :cond_7

    .line 1736
    const-string v5, "__ALBAL__"

    const-string v6, "SmsProvider  SetBackUp"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/SmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1743
    :cond_7
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1744
    const-string v32, ""

    .line 1745
    .local v32, threadIds:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 1746
    .local v33, tid:Ljava/lang/Long;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1748
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1749
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/providers/telephony/SmsProvider;->updateErrorColumn(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_5

    .line 1726
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v32           #threadIds:Ljava/lang/String;
    .end local v33           #tid:Ljava/lang/Long;
    :catch_3
    move-exception v19

    .line 1727
    .local v19, e:Landroid/database/sqlite/SQLiteException;
    const/16 v18, 0x0

    .line 1728
    const-string v5, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Catch a SQLiteException when requery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1751
    .end local v19           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v32       #threadIds:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1756
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v32           #threadIds:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastMarkAsReadIntent()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1757
    const-string v5, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    .line 1758
    .local v35, type:Ljava/lang/Integer;
    const-string v5, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v35, :cond_c

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 1759
    :cond_b
    if-eqz v12, :cond_c

    .line 1760
    if-eqz v35, :cond_f

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    const/4 v14, 0x1

    .line 1767
    .local v14, bSent:Z
    :goto_6
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 1768
    .local v27, intent:Landroid/content/Intent;
    if-eqz v14, :cond_10

    .line 1769
    const-string v5, "com.android.mms.sentSMS"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1772
    :goto_7
    const-string v5, "affectedIDs"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1780
    .end local v14           #bSent:Z
    .end local v27           #intent:Landroid/content/Intent;
    .end local v35           #type:Ljava/lang/Integer;
    :cond_c
    if-eqz v36, :cond_d

    const-string v5, "true"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1782
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v26

    .line 1784
    .local v26, ins:Lcom/android/providers/telephony/ContactMessageStore;
    if-eqz v26, :cond_e

    .line 1785
    invoke-virtual/range {v26 .. v26}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    .end local v26           #ins:Lcom/android/providers/telephony/ContactMessageStore;
    :cond_e
    move/from16 v5, v18

    .line 1790
    goto/16 :goto_3

    .line 1760
    .restart local v35       #type:Ljava/lang/Integer;
    :cond_f
    const/4 v14, 0x0

    goto :goto_6

    .line 1771
    .restart local v14       #bSent:Z
    .restart local v27       #intent:Landroid/content/Intent;
    :cond_10
    const-string v5, "com.android.mms.markAsReadSMS"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1147
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 1149
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/SmsProvider;->_delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1151
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 740
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 758
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 742
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/sms"

    goto :goto_0

    .line 745
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 746
    const-string v1, "vnd.android.cursor.item/sms"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v1, "vnd.android.cursor.dir/sms"

    goto :goto_0

    .line 752
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    const-string v1, "vnd.android.cursor.item/sms-chat"

    goto :goto_0

    .line 755
    :cond_0
    const-string v1, "vnd.android.cursor.item/sms"

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 763
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 765
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/telephony/SmsProvider;->_insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 767
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 149
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
    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, needLock:Z
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 156
    .local v1, uriMatch:I
    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    :cond_1
    if-eqz v0, :cond_2

    .line 161
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 165
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/telephony/SmsProvider;->_query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 167
    if-eqz v0, :cond_3

    .line 169
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    :cond_3
    return-object v2

    .line 167
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 169
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    :cond_4
    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1575
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 1577
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 1578
    .local v1, t:J
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/SmsProvider;->_update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1582
    .local v0, r:I
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    .end local v0           #r:I
    .end local v1           #t:J
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v3
.end method

.method protected updateErrorColumn(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 8
    .parameter "db"
    .parameter "thread_id"

    .prologue
    const/4 v7, 0x0

    .line 1912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIMIT 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1916
    .local v3, query:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1917
    .local v4, setError:I
    invoke-virtual {p1, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1918
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1920
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1922
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1926
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT error FROM threads WHERE _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1927
    .local v2, errorQuery:Ljava/lang/String;
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_2

    .line 1930
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1931
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1932
    .local v1, curError:I
    if-eq v1, v4, :cond_1

    .line 1934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE threads SET error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1939
    .end local v1           #curError:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1942
    :cond_2
    return-void

    .line 1922
    .end local v2           #errorQuery:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1939
    .restart local v2       #errorQuery:Ljava/lang/String;
    :catchall_1
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
.end method
