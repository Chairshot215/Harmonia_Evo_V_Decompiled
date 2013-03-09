.class public Lcom/android/mms/util/QueryURI;
.super Ljava/lang/Object;
.source "QueryURI.java"


# static fields
.field public static final ALLMSG_THREAD_STR:Ljava/lang/String; = "content://allmessages/htcthreadId/"

.field public static final ALL_MSG_UNREAD_COUNT:[Ljava/lang/String; = null

.field public static final BUNDLE_BASE_URI:Ljava/lang/String; = "base_uri"

.field public static final BUNDLE_FILTER:Ljava/lang/String; = "filter"

.field public static final BUNDLE_QUERY_TOKEN:Ljava/lang/String; = "query_token"

.field public static final BUNDLE_SEARCH_FLAG:Ljava/lang/String; = "search_flag"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CONTACT_THREAD_ADDR_ALLMSG_STR:Ljava/lang/String; = "content://allmessages/get-contactThreadPhone/"

.field public static final CONTACT_THREAD_ADDR_V2_STR:Ljava/lang/String; = "content://mms-sms-v2/get-contactThreadPhone/"

.field public static final CONTENT_STR:Ljava/lang/String; = "content://"

.field public static final CONVERSATION_COMMON_URI:Landroid/net/Uri; = null

.field public static final CONVERSATION_QUERY_LIMIT:I = 0x1f4

.field public static final CONVERSATION_V2_COMMON_URI:Landroid/net/Uri; = null

.field public static final EMPTY_STR:Ljava/lang/String; = ""

.field public static final GET_ALL_UNREAD_COUNT_URI:Landroid/net/Uri; = null

.field public static final GET_CONTACT_INFO_V2_URI:Landroid/net/Uri; = null

.field public static final GET_PART_URI:Landroid/net/Uri; = null

.field public static final GET_PDU_ADDR_V2_URI:Landroid/net/Uri; = null

.field public static final GET_THREAD_ID_V2_URI:Landroid/net/Uri; = null

.field public static final HTCMSG_TYPE:Ljava/lang/String; = "htcmsgs"

.field public static final LARGE_UNREAD_MSG:Ljava/lang/String; = "99+"

.field public static final LIMIT_INTENT_EXTRA_KEY:Ljava/lang/String; = "query_limit"

.field public static final MIN_PROJECT:[Ljava/lang/String; = null

.field public static final MMS_TYPE:Ljava/lang/String; = "mms"

.field public static final NOMALIZE_DATE_DESC:Ljava/lang/String; = " normalized_date DESC "

.field public static final NO_CONVERSATION_QUERY_LIMIT:I = -0x1

.field public static final ORDER_INTENT_EXTRA_KEY:Ljava/lang/String; = "query_order"

.field public static final PART_URI_STR:Ljava/lang/String; = "content://mms/part"

.field public static final PRIFIX_LIMIT:Ljava/lang/String; = " LIMIT "

.field public static final SEMICOLON:Ljava/lang/String; = ";"

.field public static final SIM_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SINGLE_QUATATION:Ljava/lang/String; = "\'"

.field public static final SMS_TYPE:Ljava/lang/String; = "sms"

.field public static final VCARD_BEGIN:Ljava/lang/String; = "BEGIN:VCARD"

.field public static final VCARD_END:Ljava/lang/String; = "END:VCARD"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    const-string v0, "content://mms-sms/conversations?simple=true&formal=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->CONVERSATION_COMMON_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->SIM_CONTENT_URI:Landroid/net/Uri;

    .line 17
    const-string v0, "content://mms-sms-v2/conversations?simple=true&formal=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->CONVERSATION_V2_COMMON_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://mms-sms-v2/get-ADDR"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->GET_PDU_ADDR_V2_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "content://mms-sms-v2/get-threadsID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->GET_THREAD_ID_V2_URI:Landroid/net/Uri;

    .line 20
    const-string v0, "content://mms-sms-v2/get-ContactInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->GET_CONTACT_INFO_V2_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://mms-sms-v2/get-UnreadCount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->GET_ALL_UNREAD_COUNT_URI:Landroid/net/Uri;

    .line 22
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/QueryURI;->GET_PART_URI:Landroid/net/Uri;

    .line 31
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/QueryURI;->MIN_PROJECT:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SUM(unread_count), SUM(p_unread_count)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/QueryURI;->ALL_MSG_UNREAD_COUNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
