.class public Lcom/google/android/gsf/talk/TalkProvider;
.super Landroid/content/ContentProvider;
.source "TalkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/talk/TalkProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_ID_PROJECTION:[Ljava/lang/String;

.field private static final LOOKUP_CHATS_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

.field private static final MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

.field private static final NON_BLOCKED_CONTACTS_WHERE_CLAUSE:Ljava/lang/String;

.field private static final sAccountsStatusProjectionMap:Ljava/util/HashMap;
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

.field private static final sContactsProjectionMap:Ljava/util/HashMap;
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

.field private static final sInMemoryMessagesProjectionMap:Ljava/util/HashMap;
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

.field private static final sMessagesProjectionMap:Ljava/util/HashMap;
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

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
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


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mContactIdArgument:[Ljava/lang/String;

.field private mCreatedMessagesAndChatsTable:Z

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field private volatile mNotifyChange:Z

.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mQueryContactIdSelectionArgs2:[Ljava/lang/String;

.field private final mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTransientDbName:Ljava/lang/String;

.field protected final mUrlMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type IS NULL OR type!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->NON_BLOCKED_CONTACTS_WHERE_CLAUSE:Ljava/lang/String;

    .line 204
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->CONTACT_ID_PROJECTION:[Ljava/lang/String;

    .line 217
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "account"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/google/android/gsf/talk/TalkProvider;->buildSuggestionsProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 232
    const-string v0, "(%s.consolidation_key isnull OR %s.err_code != 0)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "messages"

    aput-object v2, v1, v3

    const-string v2, "messages"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    .line 237
    const-string v0, "(%s.consolidation_key isnull OR %s.err_code != 0)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "inMemoryMessages"

    aput-object v2, v1, v3

    const-string v2, "inMemoryMessages"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    .line 1239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    .line 1240
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "accounts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    const-string v1, "username"

    const-string v2, "accounts.username AS username"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_connStatus"

    const-string v2, "accountStatus.connStatus AS account_connStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    .line 1251
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "contacts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "contacts._id as _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "username"

    const-string v2, "contacts.username as username"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "contacts.nickname as nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "contacts.account as account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactList"

    const-string v2, "contacts.contactList as contactList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "contacts.type as type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "subscriptionStatus"

    const-string v2, "contacts.subscriptionStatus as subscriptionStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "subscriptionType"

    const-string v2, "contacts.subscriptionType as subscriptionType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "qc"

    const-string v2, "contacts.qc as qc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rejected"

    const-string v2, "contacts.rejected as rejected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "presence.contact_id AS contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mode"

    const-string v2, "presence.mode AS mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "presence.status AS status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "client_type"

    const-string v2, "presence.client_type AS client_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cap"

    const-string v2, "presence.cap AS cap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "chats_contact"

    const-string v2, "chats.contact_id AS chats_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "jid_resource"

    const-string v2, "chats.jid_resource AS jid_resource"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "groupchat"

    const-string v2, "chats.groupchat AS groupchat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_unread_message"

    const-string v2, "chats.last_unread_message AS last_unread_message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_message_date"

    const-string v2, "chats.last_message_date AS last_message_date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "unsent_composed_message"

    const-string v2, "chats.unsent_composed_message AS unsent_composed_message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "shortcut"

    const-string v2, "chats.SHORTCUT AS shortcut"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_active"

    const-string v2, "chats.IS_ACTIVE AS IS_ACTIVE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "avatars_hash"

    const-string v2, "avatars.hash AS avatars_hash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "avatars_data"

    const-string v2, "avatars.data AS avatars_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    .line 1302
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "messages._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "messages.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "packet_id"

    const-string v2, "messages.packet_id AS packet_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "messages.nickname AS nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "body"

    const-string v2, "messages.body AS body"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "messages.date AS date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "messages.type AS type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_type"

    const-string v2, "messages.type AS msg_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_status"

    const-string v2, "messages.send_status AS send_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_code"

    const-string v2, "messages.err_code AS err_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_msg"

    const-string v2, "messages.err_msg AS err_msg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_muc"

    const-string v2, "messages.is_muc AS is_muc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "show_ts"

    const-string v2, "messages.show_ts AS show_ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact"

    const-string v2, "contacts.username AS contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "contacts.account AS account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_type"

    const-string v2, "contacts.type AS contact_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "consolidation_key"

    const-string v2, "messages.consolidation_key as consolidation_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    .line 1325
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "inMemoryMessages._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "inMemoryMessages.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "packet_id"

    const-string v2, "inMemoryMessages.packet_id AS packet_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "inMemoryMessages.nickname AS nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "body"

    const-string v2, "inMemoryMessages.body AS body"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "inMemoryMessages.date AS date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "inMemoryMessages.type AS type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_type"

    const-string v2, "inMemoryMessages.type AS msg_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_status"

    const-string v2, "inMemoryMessages.send_status AS send_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_code"

    const-string v2, "inMemoryMessages.err_code AS err_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "err_msg"

    const-string v2, "inMemoryMessages.err_msg AS err_msg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_muc"

    const-string v2, "inMemoryMessages.is_muc AS is_muc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "show_ts"

    const-string v2, "inMemoryMessages.show_ts AS show_ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact"

    const-string v2, "contacts.username AS contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "account"

    const-string v2, "contacts.account AS account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_type"

    const-string v2, "contacts.type AS contact_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v0, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    const-string v1, "consolidation_key"

    const-string v2, "inMemoryMessages.consolidation_key as consolidation_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/talk/TalkProvider;->LOOKUP_CHATS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1363
    const-string v0, "talk.db"

    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;-><init>(Ljava/lang/String;I)V

    .line 1365
    const-string v0, "com.google.android.providers.talk"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->setupImUrlMatchers(Ljava/lang/String;)V

    .line 1366
    const-string v0, "com.google.android.providers.talk"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->setupMcsUrlMatchers(Ljava/lang/String;)V

    .line 1367
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "dbName"
    .parameter "dbVersion"

    .prologue
    .line 1369
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 139
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;

    .line 254
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 2102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    .line 1370
    iput-object p1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseName:Ljava/lang/String;

    .line 1371
    iput p2, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseVersion:I

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transient_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mTransientDbName:Ljava/lang/String;

    .line 1373
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/talk/TalkProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/talk/TalkProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseVersion:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/talk/TalkProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mCreatedMessagesAndChatsTable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/talk/TalkProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mCreatedMessagesAndChatsTable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/gsf/talk/TalkProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mTransientDbName:Ljava/lang/String;

    return-object v0
.end method

.method private addToNotifyUris(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getNotifyUris()Ljava/util/HashSet;

    move-result-object v0

    .line 1484
    .local v0, notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 1485
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1487
    .restart local v0       #notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1488
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1489
    return-void
.end method

.method private varargs appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2423
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p3

    if-gt v0, v1, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough values in url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_2

    .line 2427
    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2428
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot override the value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2431
    :cond_1
    aget-object v2, p3, v1

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2433
    :cond_2
    return-void
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3202
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    return-void
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3191
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3192
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3194
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    if-eqz p3, :cond_1

    .line 3196
    invoke-static {p0, p3}, Landroid/database/DatabaseUtils;->appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 3198
    :cond_1
    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2548
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    const-string v1, " in (select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSuggestionsProjectionMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3160
    const-string v1, "_id"

    const-string v2, "contacts._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    const-string v1, "suggest_text_1"

    const-string v2, "nickname AS suggest_text_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    const-string v1, "suggest_text_2"

    const-string v2, "NULL AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    const-string v1, "suggest_intent_data"

    const-string v2, "\'%s://%s/messagesByAcctAndContact/\' || account || \'/\' || username AS %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "content"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.google.android.providers.talk"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "suggest_intent_data"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    const-string v1, "suggest_icon_2"

    const-string v2, "NULL AS suggest_icon_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    const-string v1, "userID"

    const-string v2, "username AS userID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    const-string v1, "presenceStatus"

    const-string v2, "presence.status AS presenceStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    const-string v1, "presenceMode"

    const-string v2, "presence.mode AS presenceMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    const-string v1, "capabilities"

    const-string v2, "presence.cap AS capabilities"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    return-object v0
.end method

.method private clearNotifyUrls()V
    .locals 1

    .prologue
    .line 1697
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getNotifyUris()Ljava/util/HashSet;

    move-result-object v0

    .line 1699
    .local v0, notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1703
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method private static decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3209
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 3212
    :goto_0
    return-object p0

    .line 3210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2566
    const/4 v8, 0x0

    .line 2567
    const/4 v7, 0x0

    .line 2568
    const/4 v3, 0x0

    .line 2574
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2575
    if-eqz p2, :cond_0

    .line 2576
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 2581
    const/4 v6, 0x0

    .line 2582
    const-wide/16 v4, 0x0

    .line 2584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 2586
    sparse-switch v1, :sswitch_data_0

    .line 2851
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2588
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2591
    :goto_0
    const-string v2, "accounts"

    .line 2592
    sget-object v3, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2854
    :goto_1
    if-nez v1, :cond_1

    .line 2855
    const-string v1, "_id"

    .line 2858
    :cond_1
    if-eqz v5, :cond_2

    .line 2859
    const-string v8, "="

    invoke-static {v10, v1, v8, v5}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2864
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v11, v7, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2867
    if-eqz v6, :cond_3

    .line 2868
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v11, v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2871
    :cond_3
    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    .line 2874
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gsf/talk/TalkProvider;->performContactRemovalCleanup(J)V

    .line 2877
    :cond_4
    return v1

    .line 2596
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2599
    :goto_2
    const-string v2, "accountStatus"

    .line 2600
    sget-object v3, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2601
    goto :goto_1

    .line 2605
    :sswitch_2
    const-string v2, "contacts"

    .line 2606
    const/4 v1, 0x1

    .line 2607
    sget-object v6, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2608
    sget-object v6, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v6, v8

    move/from16 v18, v1

    move-object v1, v7

    move-object v7, v2

    move-wide/from16 v19, v4

    move/from16 v4, v18

    move-object v5, v3

    move-wide/from16 v2, v19

    .line 2609
    goto :goto_1

    .line 2612
    :sswitch_3
    const-string v5, "contacts"

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2616
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2621
    const/4 v4, 0x1

    .line 2622
    sget-object v6, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2623
    sget-object v6, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v6, v8

    move-object/from16 v18, v7

    move-object v7, v5

    move-object v5, v1

    move-object/from16 v1, v18

    .line 2624
    goto/16 :goto_1

    .line 2617
    :catch_0
    move-exception v1

    .line 2618
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2627
    :sswitch_4
    const-string v1, "contactsEtag"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2628
    goto/16 :goto_1

    .line 2631
    :sswitch_5
    const-string v2, "contactsEtag"

    .line 2632
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2633
    goto/16 :goto_1

    .line 2636
    :sswitch_6
    const-string v1, "messages"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2637
    goto/16 :goto_1

    .line 2640
    :sswitch_7
    const-string v8, "messages"

    .line 2641
    const-string v2, "inMemoryMessages"

    .line 2643
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2645
    :try_start_1
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2650
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v12, 0x2

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2651
    const-string v12, "thread_id"

    const-string v13, "="

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v1}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v12, v13, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2654
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v7

    move-object v7, v8

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v2

    move-wide/from16 v2, v19

    .line 2655
    goto/16 :goto_1

    .line 2646
    :catch_1
    move-exception v1

    .line 2647
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2658
    :sswitch_8
    const-string v8, "messages"

    .line 2659
    const-string v2, "inMemoryMessages"

    .line 2662
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v12

    .line 2667
    const-string v1, "thread_id"

    const-string v9, "="

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v1, v9, v12}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2668
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v7

    move-object v7, v8

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v2

    move-wide/from16 v2, v19

    .line 2669
    goto/16 :goto_1

    .line 2663
    :catch_2
    move-exception v1

    .line 2664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2672
    :sswitch_9
    const-string v2, "messages"

    .line 2674
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2675
    const-string v9, "thread_id"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "account=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\'"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2677
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v7

    move-object v7, v2

    move-object/from16 v18, v3

    move-wide v2, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v8

    .line 2678
    goto/16 :goto_1

    .line 2681
    :sswitch_a
    const-string v2, "messages"

    .line 2682
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2683
    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2684
    goto/16 :goto_1

    .line 2687
    :sswitch_b
    const-string v1, "inMemoryMessages"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2688
    goto/16 :goto_1

    .line 2691
    :sswitch_c
    const-string v2, "inMemoryMessages"

    .line 2693
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2695
    :try_start_3
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v12

    .line 2700
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v14, 0x2

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2701
    const-string v14, "thread_id"

    const-string v15, "="

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v1}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v10, v14, v15, v9}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2704
    sget-object v9, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2705
    invoke-static {v12, v13, v1}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v7

    move-object v7, v2

    move-object/from16 v18, v3

    move-wide v2, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v8

    .line 2706
    goto/16 :goto_1

    .line 2696
    :catch_3
    move-exception v1

    .line 2697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2709
    :sswitch_d
    const-string v2, "inMemoryMessages"

    .line 2712
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v12

    .line 2717
    const-string v1, "thread_id"

    const-string v9, "="

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10, v1, v9, v14}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2719
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2720
    invoke-static {v12, v13}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v7

    move-object v7, v2

    move-object/from16 v18, v3

    move-wide v2, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v8

    .line 2721
    goto/16 :goto_1

    .line 2713
    :catch_4
    move-exception v1

    .line 2714
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2724
    :sswitch_e
    const-string v2, "inMemoryMessages"

    .line 2726
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2727
    const-string v9, "thread_id"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "account=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\'"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2731
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v7

    move-object v7, v2

    move-object/from16 v18, v3

    move-wide v2, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v8

    .line 2732
    goto/16 :goto_1

    .line 2735
    :sswitch_f
    const-string v2, "inMemoryMessages"

    .line 2736
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2737
    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2738
    goto/16 :goto_1

    .line 2741
    :sswitch_10
    const-string v1, "groupMembers"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2742
    goto/16 :goto_1

    .line 2745
    :sswitch_11
    const-string v1, "groupMembers"

    .line 2746
    const-string v2, "groupId"

    const-string v9, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v2, v9, v12}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2747
    goto/16 :goto_1

    .line 2750
    :sswitch_12
    const-string v1, "invitations"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2751
    goto/16 :goto_1

    .line 2754
    :sswitch_13
    const-string v2, "invitations"

    .line 2755
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2756
    goto/16 :goto_1

    .line 2759
    :sswitch_14
    const-string v1, "avatars"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2760
    goto/16 :goto_1

    .line 2763
    :sswitch_15
    const-string v2, "avatars"

    .line 2764
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v1

    move-object v1, v7

    move-object v6, v8

    move-object v7, v2

    move-wide/from16 v2, v18

    .line 2765
    goto/16 :goto_1

    .line 2768
    :sswitch_16
    const-string v3, "avatars"

    .line 2769
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2770
    const-string v2, "account_id"

    move-object v7, v3

    move/from16 v18, v6

    move-object v6, v8

    move-object/from16 v19, v1

    move-object v1, v2

    move-wide v2, v4

    move/from16 v4, v18

    move-object/from16 v5, v19

    .line 2771
    goto/16 :goto_1

    .line 2774
    :sswitch_17
    const-string v1, "chats"

    .line 2775
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2776
    goto/16 :goto_1

    .line 2779
    :sswitch_18
    const-string v1, "chats"

    .line 2781
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2782
    const-string v3, "contact_id"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "account=\'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2787
    const/4 v3, 0x0

    .line 2788
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2789
    goto/16 :goto_1

    .line 2792
    :sswitch_19
    const-string v3, "chats"

    .line 2793
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2794
    const-string v2, "contact_id"

    .line 2795
    sget-object v7, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v7, v3

    move/from16 v18, v6

    move-object v6, v8

    move-object/from16 v19, v1

    move-object v1, v2

    move-wide v2, v4

    move/from16 v4, v18

    move-object/from16 v5, v19

    .line 2796
    goto/16 :goto_1

    .line 2799
    :sswitch_1a
    const-string v1, "presence"

    .line 2800
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2801
    goto/16 :goto_1

    .line 2804
    :sswitch_1b
    const-string v3, "presence"

    .line 2805
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2806
    const-string v2, "contact_id"

    .line 2807
    sget-object v7, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v7, v3

    move/from16 v18, v6

    move-object v6, v8

    move-object/from16 v19, v1

    move-object v1, v2

    move-wide v2, v4

    move/from16 v4, v18

    move-object/from16 v5, v19

    .line 2808
    goto/16 :goto_1

    .line 2811
    :sswitch_1c
    const-string v1, "presence"

    .line 2813
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2814
    const-string v3, "contact_id"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "account=\'"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2818
    const/4 v3, 0x0

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2819
    goto/16 :goto_1

    .line 2822
    :sswitch_1d
    const-string v3, "accountSettings"

    .line 2823
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2824
    const-string v2, "account_id"

    move-object v7, v3

    move/from16 v18, v6

    move-object v6, v8

    move-object/from16 v19, v1

    move-object v1, v2

    move-wide v2, v4

    move/from16 v4, v18

    move-object/from16 v5, v19

    .line 2825
    goto/16 :goto_1

    .line 2828
    :sswitch_1e
    const-string v9, "accountSettings"

    .line 2830
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2831
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v12, 0x2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2833
    const-string v12, "account_id"

    const-string v13, "="

    invoke-static {v10, v12, v13, v1}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2834
    const-string v1, "name"

    const-string v12, "="

    invoke-static {v10, v1, v12, v2}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v7

    move-object v7, v9

    move-object/from16 v18, v3

    move-wide v2, v4

    move-object/from16 v5, v18

    move v4, v6

    move-object v6, v8

    .line 2835
    goto/16 :goto_1

    .line 2839
    :sswitch_1f
    const-string v1, "outgoingRmqMessages"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2840
    goto/16 :goto_1

    .line 2843
    :sswitch_20
    const-string v1, "lastrmqid"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2844
    goto/16 :goto_1

    .line 2847
    :sswitch_21
    const-string v1, "s2dRmqIds"

    move-wide/from16 v18, v4

    move v4, v6

    move-object v5, v3

    move-wide/from16 v2, v18

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    .line 2848
    goto/16 :goto_1

    :sswitch_22
    move-object v1, v3

    goto/16 :goto_0

    :sswitch_23
    move-object v1, v3

    goto/16 :goto_2

    .line 2586
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_22
        0xb -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_5
        0x28 -> :sswitch_1a
        0x29 -> :sswitch_1b
        0x2a -> :sswitch_1c
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x35 -> :sswitch_9
        0x36 -> :sswitch_a
        0x37 -> :sswitch_b
        0x38 -> :sswitch_c
        0x39 -> :sswitch_d
        0x3a -> :sswitch_e
        0x3b -> :sswitch_f
        0x41 -> :sswitch_10
        0x42 -> :sswitch_11
        0x46 -> :sswitch_14
        0x47 -> :sswitch_15
        0x48 -> :sswitch_16
        0x50 -> :sswitch_17
        0x51 -> :sswitch_18
        0x52 -> :sswitch_19
        0x5b -> :sswitch_1d
        0x5c -> :sswitch_1e
        0x64 -> :sswitch_12
        0x65 -> :sswitch_13
        0x68 -> :sswitch_23
        0x69 -> :sswitch_1
        0xc8 -> :sswitch_1f
        0xcb -> :sswitch_20
        0xcc -> :sswitch_21
    .end sparse-switch
.end method

.method private deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "tableName"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2541
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2543
    .local v0, count:I
    return-void
.end method

.method private getAccountId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2464
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2465
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2466
    sget-object v1, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2468
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 2469
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 2471
    sget-object v2, Lcom/google/android/gsf/talk/TalkProvider;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2477
    const-wide/16 v0, 0x0

    .line 2480
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2481
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2484
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2487
    return-wide v0

    .line 2484
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2437
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2438
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2439
    sget-object v1, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2441
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    aput-object p2, v1, v2

    .line 2442
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 2444
    sget-object v2, Lcom/google/android/gsf/talk/TalkProvider;->CONTACT_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "account=? AND username = ?"

    iget-object v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mQueryContactIdSelectionArgs2:[Ljava/lang/String;

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2450
    const-wide/16 v0, 0x0

    .line 2453
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2454
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2457
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2460
    return-wide v0

    .line 2457
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getNotifyUris()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mThreadLocalNotifyUris:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search_suggest_query"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 3155
    :goto_0
    return-object v0

    .line 3130
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3131
    const-string v1, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3132
    sget-object v1, Lcom/google/android/gsf/talk/TalkProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( \' \' || nickname LIKE \'% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR username LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\') AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type!=3 AND subscriptionType>=4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3145
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3146
    const-string v8, "10"

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3149
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08003d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v9

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3150
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 3152
    new-instance v0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;

    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "search"

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertChat(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 2105
    const-string v0, "shortcut"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2108
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2110
    :try_start_0
    const-string v0, "contact_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2111
    iget-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2112
    const-string v1, "chats"

    sget-object v2, Lcom/google/android/gsf/talk/TalkProvider;->LOOKUP_CHATS_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 2114
    if-eqz v2, :cond_5

    .line 2116
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v11, :cond_0

    .line 2117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got cursor with count > 1 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2131
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2140
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2141
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2120
    :cond_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2121
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2123
    const-string v3, "chats"

    const-string v4, "contact_id=?"

    iget-object v5, p0, Lcom/google/android/gsf/talk/TalkProvider;->mContactIdArgument:[Ljava/lang/String;

    invoke-virtual {p1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2125
    if-eq v3, v11, :cond_2

    .line 2126
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to properly update chats table: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move-wide v0, v9

    .line 2131
    :cond_2
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2134
    :goto_0
    cmp-long v2, v0, v9

    if-nez v2, :cond_3

    .line 2135
    const-string v0, "chats"

    const-string v1, "contact_id"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2137
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2140
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2141
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2144
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 2145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2149
    :goto_1
    return-object v0

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    move-wide v0, v9

    goto :goto_0
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    .line 2153
    .line 2158
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2159
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2162
    sparse-switch v0, :sswitch_data_0

    .line 2416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2165
    :sswitch_0
    const-string v0, "accounts"

    const-string v3, "name"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2166
    cmp-long v0, v2, v7

    if-lez v0, :cond_7

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2169
    :goto_0
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v1, v0

    .line 2419
    :cond_0
    :goto_1
    return-object v1

    .line 2175
    :sswitch_1
    const-string v0, "contacts"

    const-string v3, "username"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2176
    cmp-long v0, v2, v7

    if-lez v0, :cond_1

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2180
    :cond_1
    sget-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2181
    sget-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    goto :goto_1

    .line 2185
    :sswitch_2
    const-string v0, "contactsEtag"

    const-string v3, "etag"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2187
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 2193
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2195
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    const-string v4, "thread_id"

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2199
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2203
    :try_start_0
    const-string v0, "messages"

    const-string v3, "thread_id"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2204
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    const-string v2, "TalkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TalkProvider] caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inserting message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2214
    :sswitch_4
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v0, v4

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2219
    :sswitch_5
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2222
    :try_start_1
    const-string v0, "messages"

    const-string v3, "thread_id"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2223
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_1

    .line 2226
    :catch_1
    move-exception v0

    .line 2227
    const-string v2, "TalkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TalkProvider] caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inserting message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2233
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2235
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2236
    const-string v4, "thread_id"

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2239
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2243
    :try_start_2
    const-string v0, "inMemoryMessages"

    const-string v3, "thread_id"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2244
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_1

    .line 2248
    :catch_2
    move-exception v0

    .line 2249
    const-string v2, "TalkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TalkProvider] caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inserting message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2256
    :sswitch_7
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v3

    .line 2261
    const-string v0, "thread_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2263
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2269
    :sswitch_8
    :try_start_4
    const-string v0, "inMemoryMessages"

    const-string v3, "thread_id"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2270
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    goto/16 :goto_1

    .line 2257
    :catch_3
    move-exception v0

    .line 2258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2274
    :catch_4
    move-exception v0

    .line 2275
    const-string v2, "TalkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TalkProvider] caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inserting message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2281
    :sswitch_9
    const-string v0, "invitations"

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2282
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$Invitation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2288
    :sswitch_a
    const-string v0, "groupMembers"

    const-string v3, "nickname"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2289
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2295
    :sswitch_b
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "groupId"

    aput-object v3, v0, v4

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2296
    const-string v0, "groupMembers"

    const-string v3, "nickname"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2297
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2303
    :sswitch_c
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "account_id"

    aput-object v3, v0, v4

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2307
    :sswitch_d
    const-string v0, "avatars"

    const-string v3, "contact"

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2308
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2314
    :sswitch_e
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gsf/talk/TalkProvider;->appendValuesFromUrl(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0, v2, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertChat(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2322
    :sswitch_f
    invoke-direct {p0, v2, p2}, Lcom/google/android/gsf/talk/TalkProvider;->replaceContactWithContactId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2323
    const-string v0, "TalkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert chats failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2330
    :cond_2
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2332
    if-nez v0, :cond_3

    .line 2333
    const-string v0, "contact_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2334
    if-eqz v0, :cond_3

    .line 2335
    const-string v1, "account_id"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/talk/TalkProvider;->getAccountId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2347
    :cond_3
    sget-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2349
    invoke-direct {p0, v2, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertChat(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2359
    :sswitch_10
    :try_start_5
    invoke-direct {p0, v2, p2}, Lcom/google/android/gsf/talk/TalkProvider;->replaceContactWithContactId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2360
    const-string v0, "TalkProvider"

    const-string v2, "insert presence failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 2372
    :catch_5
    move-exception v0

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalInsert: replace presence caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/talk/TalkProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2364
    :cond_4
    :try_start_6
    const-string v0, "presence"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2368
    cmp-long v0, v2, v7

    if-lez v0, :cond_5

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2371
    :cond_5
    sget-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 2379
    :sswitch_11
    const-string v0, "accountSettings"

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2380
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2386
    :sswitch_12
    const-string v0, "accountStatus"

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2387
    cmp-long v0, v2, v7

    if-lez v0, :cond_6

    .line 2388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2390
    :cond_6
    sget-object v0, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 2395
    :sswitch_13
    const-string v0, "outgoingRmqMessages"

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2396
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2402
    :sswitch_14
    const-string v0, "lastrmqid"

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2403
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 2409
    :sswitch_15
    const-string v0, "s2dRmqIds"

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2410
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    .line 2162
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x25 -> :sswitch_2
        0x28 -> :sswitch_10
        0x32 -> :sswitch_5
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x37 -> :sswitch_8
        0x38 -> :sswitch_6
        0x39 -> :sswitch_7
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x46 -> :sswitch_d
        0x48 -> :sswitch_c
        0x50 -> :sswitch_f
        0x52 -> :sswitch_e
        0x5a -> :sswitch_11
        0x64 -> :sswitch_9
        0x68 -> :sswitch_12
        0xc8 -> :sswitch_13
        0xcb -> :sswitch_14
        0xcc -> :sswitch_15
    .end sparse-switch
.end method

.method static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 3217
    const-string v0, "TalkProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    return-void
.end method

.method private notifyChange()V
    .locals 6

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1672
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getNotifyUris()Ljava/util/HashSet;

    move-result-object v1

    .line 1674
    .local v1, notifyUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_1

    .line 1686
    :cond_0
    return-void

    .line 1683
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1684
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method

.method private onEndTransaction()V
    .locals 1

    .prologue
    .line 1663
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 1664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1665
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->notifyChange()V

    .line 1667
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->clearNotifyUrls()V

    .line 1668
    return-void
.end method

.method private performContactRemovalCleanup(J)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 2516
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2518
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 2519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2522
    const-string v2, "contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2523
    const-string v2, "presence"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2526
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2527
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2528
    const-string v2, "groupMembers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2536
    :goto_0
    return-void

    .line 2531
    :cond_0
    const-string v1, "presence"

    const-string v2, "contact_id in (select presence.contact_id from presence left outer join contacts on presence.contact_id=contacts._id where contacts._id IS NULL)"

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2534
    const-string v1, "groupMembers"

    const-string v2, "groupId in (select groupMembers.groupId from groupMembers left outer join contacts on groupMembers.groupId=contacts._id where contacts._id IS NULL)"

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gsf/talk/TalkProvider;->deleteWithSelection(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private renameOldImDatabaseFileIfFound(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1451
    if-nez p1, :cond_1

    .line 1452
    const-string v3, "TalkProvider"

    const-string v4, "renameOldImDatabaseFileIfFound: null context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    const-string v3, "im.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1457
    .local v2, oldFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### FOUND old database file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/talk/TalkProvider;->log(Ljava/lang/String;)V

    .line 1465
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mDatabaseName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1466
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/talk/TalkProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1468
    .end local v1           #newFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1469
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "TalkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameOldImDatabaseFileIfFound: failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private replaceContactWithContactId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "values"

    .prologue
    .line 2080
    const-string v4, "username"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2081
    .local v3, username:Ljava/lang/String;
    const-string v4, "account"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2083
    .local v0, accountId:Ljava/lang/Long;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 2084
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 2086
    .local v1, contactId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 2087
    const-string v4, "TalkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceContactWithContactId: contactId==0!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", acct="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/4 v4, 0x0

    .line 2097
    .end local v1           #contactId:J
    :goto_0
    return v4

    .line 2092
    .restart local v1       #contactId:J
    :cond_0
    const-string v4, "contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2093
    const-string v4, "username"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2094
    const-string v4, "account"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2097
    .end local v1           #contactId:J
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setupImUrlMatchers(Ljava/lang/String;)V
    .locals 4
    .parameter "authority"

    .prologue
    const/16 v3, 0x82

    .line 1376
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts"

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1377
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts/#"

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1378
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts/status"

    const/16 v2, 0xc

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1380
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts"

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1381
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts_barebone"

    const/16 v2, 0x15

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1382
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts_chatting"

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1383
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts/blocked"

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1384
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contacts/#"

    const/16 v2, 0x18

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1386
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contactsEtag"

    const/16 v2, 0x25

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1387
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "contactsEtag/#"

    const/16 v2, 0x26

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1389
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "presence"

    const/16 v2, 0x28

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1390
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "presence/#"

    const/16 v2, 0x29

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1391
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "presence/account/#"

    const/16 v2, 0x2a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1393
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messages"

    const/16 v2, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messagesByAcctAndContact/#/*"

    const/16 v2, 0x33

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messagesByThreadId/#"

    const/16 v2, 0x34

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1396
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messagesByAccount/#"

    const/16 v2, 0x35

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1397
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "messages/#"

    const/16 v2, 0x36

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1399
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessages"

    const/16 v2, 0x37

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1400
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessagesByAcctAndContact/#/*"

    const/16 v2, 0x38

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1402
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessagesByThreadId/#"

    const/16 v2, 0x39

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1403
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessagesByAccount/#"

    const/16 v2, 0x3a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1404
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "otrMessages/#"

    const/16 v2, 0x3b

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1406
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "groupMembers"

    const/16 v2, 0x41

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1407
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "groupMembers/#"

    const/16 v2, 0x42

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1409
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "avatars"

    const/16 v2, 0x46

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1410
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "avatars/#"

    const/16 v2, 0x47

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1411
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "avatarsBy/#"

    const/16 v2, 0x48

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1412
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "chats"

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1413
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "chats/account/#"

    const/16 v2, 0x51

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1414
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "chats/#"

    const/16 v2, 0x52

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1416
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountSettings"

    const/16 v2, 0x5a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1417
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountSettings/#"

    const/16 v2, 0x5b

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1418
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountSettings/#/*"

    const/16 v2, 0x5c

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "invitations"

    const/16 v2, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1422
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "invitations/#"

    const/16 v2, 0x65

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1424
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountStatus"

    const/16 v2, 0x68

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1425
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountStatus/#"

    const/16 v2, 0x69

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1426
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "accountStatus/new_messages"

    const/16 v2, 0x6a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1428
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_query"

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1430
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_query/*"

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1432
    return-void
.end method

.method private setupMcsUrlMatchers(Ljava/lang/String;)V
    .locals 3
    .parameter "authority"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "outgoingRmqMessages"

    const/16 v2, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1436
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "outgoingRmqMessages/#"

    const/16 v2, 0xc9

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1437
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "outgoingHighestRmqId"

    const/16 v2, 0xca

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1438
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "lastRmqId"

    const/16 v2, 0xcb

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1439
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "s2dids"

    const/16 v2, 0xcc

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1440
    return-void
.end method

.method private updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2883
    const/4 v5, 0x0

    .line 2884
    const/4 v4, 0x0

    .line 2891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2892
    if-eqz p3, :cond_0

    .line 2893
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 2899
    sparse-switch v2, :sswitch_data_0

    .line 3107
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2901
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2904
    :goto_0
    const-string v3, "accounts"

    .line 2905
    sget-object v4, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v4, v2

    move-object v2, v5

    .line 3110
    :goto_1
    if-nez v2, :cond_1

    .line 3111
    const-string v2, "_id"

    .line 3113
    :cond_1
    if-eqz v4, :cond_2

    .line 3114
    const-string v5, "="

    invoke-static {v7, v2, v5, v4}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3119
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v8, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 2909
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2912
    :goto_2
    const-string v3, "accountStatus"

    .line 2913
    sget-object v4, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v4, v2

    move-object v2, v5

    .line 2914
    goto :goto_1

    .line 2918
    :sswitch_2
    const-string v2, "contacts"

    .line 2919
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2920
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v3, v2

    move-object v2, v5

    .line 2921
    goto :goto_1

    .line 2924
    :sswitch_3
    const-string v3, "contacts"

    .line 2925
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2926
    sget-object v4, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2927
    sget-object v4, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v4, v2

    move-object v2, v5

    .line 2928
    goto :goto_1

    .line 2931
    :sswitch_4
    const-string v2, "contactsEtag"

    move-object v3, v2

    move-object v2, v5

    .line 2932
    goto :goto_1

    .line 2935
    :sswitch_5
    const-string v3, "contactsEtag"

    .line 2936
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    move-object v2, v5

    .line 2937
    goto :goto_1

    .line 2940
    :sswitch_6
    const-string v2, "messages"

    move-object v3, v2

    move-object v2, v5

    .line 2941
    goto :goto_1

    .line 2944
    :sswitch_7
    const-string v3, "messages"

    .line 2946
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2948
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2954
    const-string v9, "thread_id"

    const-string v10, "="

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v2}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v9, v10, v2}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2956
    sget-object v2, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v2, v5

    .line 2957
    goto/16 :goto_1

    .line 2949
    :catch_0
    move-exception v2

    .line 2950
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 2960
    :sswitch_8
    const-string v3, "messages"

    .line 2963
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    .line 2968
    const-string v2, "thread_id"

    const-string v6, "="

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v2, v6, v9}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2969
    sget-object v2, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v2, v5

    .line 2970
    goto/16 :goto_1

    .line 2964
    :catch_1
    move-exception v2

    .line 2965
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 2973
    :sswitch_9
    const-string v3, "messages"

    .line 2974
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2975
    sget-object v4, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v4, v2

    move-object v2, v5

    .line 2976
    goto/16 :goto_1

    .line 2979
    :sswitch_a
    const-string v2, "inMemoryMessages"

    move-object v3, v2

    move-object v2, v5

    .line 2980
    goto/16 :goto_1

    .line 2983
    :sswitch_b
    const-string v3, "inMemoryMessages"

    .line 2985
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2987
    :try_start_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v9

    .line 2992
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v11, 0x2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2993
    const-string v11, "thread_id"

    const-string v12, "="

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v2}, Lcom/google/android/gsf/talk/TalkProvider;->getContactId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v11, v12, v6}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2996
    sget-object v6, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 2997
    invoke-static {v9, v10, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v2, v5

    .line 2998
    goto/16 :goto_1

    .line 2988
    :catch_2
    move-exception v2

    .line 2989
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 3001
    :sswitch_c
    const-string v3, "inMemoryMessages"

    .line 3004
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v9

    .line 3009
    const-string v2, "thread_id"

    const-string v6, "="

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v7, v2, v6, v11}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3011
    sget-object v2, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 3012
    invoke-static {v9, v10}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v2, v5

    .line 3013
    goto/16 :goto_1

    .line 3005
    :catch_3
    move-exception v2

    .line 3006
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 3016
    :sswitch_d
    const-string v3, "inMemoryMessages"

    .line 3017
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3018
    sget-object v4, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v4, v2

    move-object v2, v5

    .line 3019
    goto/16 :goto_1

    .line 3022
    :sswitch_e
    const-string v2, "avatars"

    move-object v3, v2

    move-object v2, v5

    .line 3023
    goto/16 :goto_1

    .line 3026
    :sswitch_f
    const-string v3, "avatars"

    .line 3027
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    move-object v2, v5

    .line 3028
    goto/16 :goto_1

    .line 3031
    :sswitch_10
    const-string v4, "avatars"

    .line 3032
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3033
    const-string v3, "account_id"

    move-object v15, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    .line 3034
    goto/16 :goto_1

    .line 3037
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3039
    :try_start_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3044
    const-string v3, "contact_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account=\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3049
    :sswitch_12
    const-string v2, "chats"

    .line 3050
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v3, v2

    move-object v2, v5

    .line 3051
    goto/16 :goto_1

    .line 3040
    :catch_4
    move-exception v2

    .line 3041
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 3054
    :sswitch_13
    const-string v4, "chats"

    .line 3055
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3056
    const-string v3, "contact_id"

    .line 3057
    sget-object v5, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v15, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    .line 3058
    goto/16 :goto_1

    .line 3062
    :sswitch_14
    const-string v2, "presence"

    .line 3063
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v3, v2

    move-object v2, v5

    .line 3064
    goto/16 :goto_1

    .line 3067
    :sswitch_15
    const-string v4, "presence"

    .line 3068
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3069
    const-string v3, "contact_id"

    .line 3070
    sget-object v5, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    move-object v15, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    .line 3071
    goto/16 :goto_1

    .line 3074
    :sswitch_16
    const-string v3, "invitations"

    .line 3075
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    move-object v2, v5

    .line 3076
    goto/16 :goto_1

    .line 3079
    :sswitch_17
    const-string v6, "accountSettings"

    .line 3081
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3082
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3084
    const-string v9, "account_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3086
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Cannot override the value for account_id|name"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3089
    :cond_4
    const-string v9, "account_id"

    const-string v10, "="

    invoke-static {v7, v9, v10, v2}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3090
    const-string v2, "name"

    const-string v9, "="

    invoke-static {v7, v2, v9, v3}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v5

    move-object v3, v6

    .line 3092
    goto/16 :goto_1

    .line 3095
    :sswitch_18
    const-string v2, "outgoingRmqMessages"

    move-object v3, v2

    move-object v2, v5

    .line 3096
    goto/16 :goto_1

    .line 3099
    :sswitch_19
    const-string v2, "lastrmqid"

    move-object v3, v2

    move-object v2, v5

    .line 3100
    goto/16 :goto_1

    .line 3103
    :sswitch_1a
    const-string v2, "s2dRmqIds"

    move-object v3, v2

    move-object v2, v5

    .line 3104
    goto/16 :goto_1

    :sswitch_1b
    move-object v2, v4

    goto/16 :goto_0

    :sswitch_1c
    move-object v2, v4

    goto/16 :goto_2

    .line 2899
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1b
        0xb -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_5
        0x28 -> :sswitch_14
        0x29 -> :sswitch_15
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x36 -> :sswitch_9
        0x37 -> :sswitch_a
        0x38 -> :sswitch_b
        0x39 -> :sswitch_c
        0x3b -> :sswitch_d
        0x46 -> :sswitch_e
        0x47 -> :sswitch_f
        0x48 -> :sswitch_10
        0x50 -> :sswitch_12
        0x51 -> :sswitch_11
        0x52 -> :sswitch_13
        0x5c -> :sswitch_17
        0x65 -> :sswitch_16
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1
        0xc8 -> :sswitch_18
        0xcb -> :sswitch_19
        0xcc -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v13, 0x0

    .line 1615
    const/4 v7, 0x0

    .line 1616
    .local v7, ypCount:I
    const/4 v4, 0x0

    .line 1617
    .local v4, opCount:I
    iget-object v8, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1618
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1620
    :try_start_0
    iget-object v8, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1621
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1625
    .local v3, numOperations:I
    new-array v6, v3, [Landroid/content/ContentProviderResult;

    .line 1626
    .local v6, results:[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1627
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x1f4

    if-lt v4, v8, :cond_0

    .line 1628
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    .end local v2           #i:I
    .end local v3           #numOperations:I
    .end local v6           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1657
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1658
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    throw v8

    .line 1633
    .restart local v2       #i:I
    .restart local v3       #numOperations:I
    .restart local v6       #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 1634
    .local v5, operation:Landroid/content/ContentProviderOperation;
    if-lez v2, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1640
    const/4 v4, 0x0

    .line 1641
    const-wide/16 v8, 0xfa0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 1642
    add-int/lit8 v7, v7, 0x1

    .line 1646
    :cond_1
    :try_start_2
    invoke-virtual {v5, p0, v6, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1626
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1647
    :catch_0
    move-exception v1

    .line 1648
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v8, "TalkProvider"

    const-string v9, "%s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v8, "TalkProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyBatch failed for operation["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], ignore error and continue"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1653
    .end local v1           #e:Landroid/content/OperationApplicationException;
    .end local v5           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1656
    iget-object v8, p0, Lcom/google/android/gsf/talk/TalkProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1657
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1658
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    return-object v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "url"
    .parameter "values"

    .prologue
    .line 1591
    array-length v2, p2

    .line 1592
    .local v2, numValues:I
    iget-object v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1593
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1595
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1596
    :try_start_0
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, Lcom/google/android/gsf/talk/TalkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1597
    .local v3, result:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1598
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1599
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1601
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 1595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    .end local v3           #result:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1606
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1609
    return v2

    .line 1605
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1606
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    throw v4
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 1526
    const/4 v1, 0x0

    .line 1527
    .local v1, count:I
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->applyingBatch()Z

    move-result v0

    .line 1528
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 1529
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1530
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1532
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/talk/TalkProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1533
    if-lez v1, :cond_0

    .line 1534
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1535
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1537
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1542
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1552
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return v1

    .line 1539
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1546
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/talk/TalkProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1547
    if-lez v1, :cond_1

    .line 1548
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1549
    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2005
    sparse-switch v0, :sswitch_data_0

    .line 2075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2007
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/gtalk-accounts"

    .line 2072
    :goto_0
    return-object v0

    .line 2010
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/gtalk-accounts"

    goto :goto_0

    .line 2014
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/gtalk-contacts"

    goto :goto_0

    .line 2017
    :sswitch_3
    const-string v0, "vnd.android.cursor.item/gtalk-contacts"

    goto :goto_0

    .line 2021
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/gtalk-contactsEtag"

    goto :goto_0

    .line 2031
    :sswitch_5
    const-string v0, "vnd.android.cursor.dir/gtalk-messages"

    goto :goto_0

    .line 2035
    :sswitch_6
    const-string v0, "vnd.android.cursor.item/gtalk-messages"

    goto :goto_0

    .line 2038
    :sswitch_7
    const-string v0, "vnd.android.cursor.dir/gtalk-presence"

    goto :goto_0

    .line 2041
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/gtalk-avatars"

    goto :goto_0

    .line 2044
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/gtalk-avatars"

    goto :goto_0

    .line 2047
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/gtalk-chats"

    goto :goto_0

    .line 2050
    :sswitch_b
    const-string v0, "vnd.android.cursor.item/gtalk-chats"

    goto :goto_0

    .line 2053
    :sswitch_c
    const-string v0, "vnd.android.cursor.dir/gtalk-invitations"

    goto :goto_0

    .line 2056
    :sswitch_d
    const-string v0, "vnd.android.cursor.item/gtalk-invitations"

    goto :goto_0

    .line 2060
    :sswitch_e
    const-string v0, "vnd.android.cursor.dir/gtalk-groupMembers"

    goto :goto_0

    .line 2063
    :sswitch_f
    const-string v0, "vnd.android-dir/gtalk-accountSettings"

    goto :goto_0

    .line 2066
    :sswitch_10
    const-string v0, "vnd.android.cursor.dir/gtalk-account-status"

    goto :goto_0

    .line 2069
    :sswitch_11
    const-string v0, "vnd.android.cursor.item/gtalk-account-status"

    goto :goto_0

    .line 2072
    :sswitch_12
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 2005
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_4
        0x28 -> :sswitch_7
        0x32 -> :sswitch_5
        0x33 -> :sswitch_5
        0x34 -> :sswitch_5
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_6
        0x41 -> :sswitch_e
        0x42 -> :sswitch_e
        0x46 -> :sswitch_8
        0x47 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_f
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x68 -> :sswitch_10
        0x69 -> :sswitch_11
        0x82 -> :sswitch_12
    .end sparse-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "url"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 1559
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->applyingBatch()Z

    move-result v0

    .line 1560
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 1561
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1562
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1564
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1565
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1566
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1567
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1570
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1575
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1586
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return-object v2

    .line 1572
    .end local v2           #result:Landroid/net/Uri;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1579
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1580
    .restart local v2       #result:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1581
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1582
    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1445
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/talk/TalkProvider;->renameOldImDatabaseFileIfFound(Landroid/content/Context;)V

    .line 1446
    new-instance v1, Lcom/google/android/gsf/talk/TalkProvider$DatabaseHelper;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gsf/talk/TalkProvider$DatabaseHelper;-><init>(Lcom/google/android/gsf/talk/TalkProvider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1447
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 3186
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/talk/TalkProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1715
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gsf/talk/TalkProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 31
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 1720
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1721
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1722
    .local v30, whereClause:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 1723
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    :cond_0
    const/4 v11, 0x0

    .line 1726
    .local v11, groupBy:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1729
    .local v14, limit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/talk/TalkProvider;->mUrlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 1740
    .local v21, match:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .line 1741
    .local v18, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 1743
    .local v16, c:Landroid/database/Cursor;
    sparse-switch v21, :sswitch_data_0

    .line 1984
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1745
    :sswitch_0
    const-string v4, "_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1748
    :sswitch_1
    const-string v4, "accounts"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1989
    :goto_0
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object v6, v3

    move-object/from16 v7, v18

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1991
    if-eqz v16, :cond_1

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object/from16 v17, v16

    .line 1999
    .end local v11           #groupBy:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v17

    .line 1752
    .restart local v11       #groupBy:Ljava/lang/String;
    :sswitch_2
    const-string v4, "accounts LEFT OUTER JOIN accountStatus ON (accounts._id = accountStatus.account)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1753
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sAccountsStatusProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1757
    :sswitch_3
    const-string v4, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1758
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1762
    :sswitch_4
    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :sswitch_5
    const-string v4, "chats LEFT OUTER JOIN contacts ON (contacts._id = chats.contact_id) LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1767
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1768
    const-string v4, "chats.last_message_date IS NOT NULL"

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1774
    :sswitch_6
    const-string v4, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1775
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1776
    const-string v4, "(contacts.type=3)"

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    :sswitch_7
    const-string v4, "contacts LEFT OUTER JOIN presence ON (contacts._id = presence.contact_id) LEFT OUTER JOIN chats ON (contacts._id = chats.contact_id) LEFT OUTER JOIN avatars ON (contacts.username = avatars.contact AND contacts.account = avatars.account_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1781
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1782
    const-string v4, "contacts._id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1786
    :sswitch_8
    const-string v4, "contactsEtag"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1790
    :sswitch_9
    const-string v4, "contactsEtag"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1791
    const-string v4, "_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1795
    :sswitch_a
    const-string v4, "messages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1797
    const-string v4, "thread_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1800
    const-string v4, "%s AND %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1802
    .local v5, sc1:Ljava/lang/String;
    const-string v4, "%s AND %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 1805
    .local v28, sc2:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1809
    .local v26, query1:Ljava/lang/String;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1810
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "inMemoryMessages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1811
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    move-object/from16 v7, p2

    move-object/from16 v8, v28

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v11           #groupBy:Ljava/lang/String;
    move-result-object v27

    .line 1815
    .local v27, query2:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v26, v4, v6

    const/4 v6, 0x1

    aput-object v27, v4, v6

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1816
    .local v25, query:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "messages"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1817
    if-eqz v16, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1818
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    move-object/from16 v17, v16

    .line 1820
    goto/16 :goto_2

    .line 1823
    .end local v5           #sc1:Ljava/lang/String;
    .end local v25           #query:Ljava/lang/String;
    .end local v26           #query1:Ljava/lang/String;
    .end local v27           #query2:Ljava/lang/String;
    .end local v28           #sc2:Ljava/lang/String;
    .restart local v11       #groupBy:Ljava/lang/String;
    :sswitch_b
    const-string v4, "inMemoryMessages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1827
    :sswitch_c
    const-string v4, "messages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1831
    :sswitch_d
    const-string v4, "inMemoryMessages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1832
    const-string v4, "_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1837
    :sswitch_e
    const-string v4, "messages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1838
    const-string v4, "_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1843
    :sswitch_f
    const-string v4, "messages LEFT OUTER JOIN contacts ON (contacts._id = messages.thread_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1844
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sMessagesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1846
    const-string v4, "account"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1848
    const-string v6, "contacts.username"

    const-string v7, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-static {v0, v6, v7, v4}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1851
    const-string v4, "%s AND %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1853
    .restart local v5       #sc1:Ljava/lang/String;
    const-string v4, "%s AND %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gsf/talk/TalkProvider;->MESSAGE_IN_MEMORY_WHERE_CLAUSE_FORMAT:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 1856
    .restart local v28       #sc2:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1859
    .local v22, q1:Ljava/lang/String;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1860
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "inMemoryMessages LEFT OUTER JOIN contacts ON (contacts._id = inMemoryMessages.thread_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1861
    sget-object v4, Lcom/google/android/gsf/talk/TalkProvider;->sInMemoryMessagesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1862
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    move-object/from16 v7, p2

    move-object/from16 v8, v28

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v11           #groupBy:Ljava/lang/String;
    move-result-object v23

    .line 1865
    .local v23, q2:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v4, v6

    const/4 v6, 0x1

    aput-object v23, v4, v6

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1866
    .local v24, q3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 1867
    .local v19, db2:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "messages LEFT OUTER JOIN contacts ON (contacts._id = messages.thread_id)"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1868
    .local v17, c2:Landroid/database/Cursor;
    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/talk/TalkProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 1874
    .end local v5           #sc1:Ljava/lang/String;
    .end local v17           #c2:Landroid/database/Cursor;
    .end local v19           #db2:Landroid/database/sqlite/SQLiteDatabase;
    .end local v22           #q1:Ljava/lang/String;
    .end local v23           #q2:Ljava/lang/String;
    .end local v24           #q3:Ljava/lang/String;
    .end local v28           #sc2:Ljava/lang/String;
    .restart local v11       #groupBy:Ljava/lang/String;
    :sswitch_10
    const-string v4, "invitations"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1878
    :sswitch_11
    const-string v4, "invitations"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1879
    const-string v4, "_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1883
    :sswitch_12
    const-string v4, "groupMembers"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1887
    :sswitch_13
    const-string v4, "groupMembers"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1888
    const-string v4, "groupId"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1892
    :sswitch_14
    const-string v4, "avatars"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1896
    :sswitch_15
    const-string v4, "avatars"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1897
    const-string v4, "account_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1901
    :sswitch_16
    const-string v4, "chats"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1905
    :sswitch_17
    const-string v4, "chats"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1906
    const-string v4, "contact_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1910
    :sswitch_18
    const-string v4, "chats"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1911
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/talk/TalkProvider;->decodeURLSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1912
    .local v15, accountStr:Ljava/lang/String;
    const-string v4, "contact_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/google/android/gsf/talk/TalkProvider;->buildContactIdSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1917
    .end local v15           #accountStr:Ljava/lang/String;
    :sswitch_19
    const-string v4, "presence"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1921
    :sswitch_1a
    const-string v4, "presence"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1922
    const-string v4, "contact_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1926
    :sswitch_1b
    const-string v4, "name"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1929
    :sswitch_1c
    const-string v4, "account_id"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1932
    :sswitch_1d
    const-string v4, "accountSettings"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1936
    :sswitch_1e
    const-string v4, "accountStatus"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1940
    :sswitch_1f
    const-string v4, "accountStatus"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1941
    const-string v4, "account"

    const-string v6, "="

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gsf/talk/TalkProvider;->appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1951
    :sswitch_20
    const-string v25, "select contacts.account, count(last_unread_message) as active_count from chats,contacts where chats.contact_id = contacts._id AND chats.is_active = 1 group by contacts.account order by contacts.account;"

    .line 1956
    .restart local v25       #query:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1957
    goto/16 :goto_2

    .line 1961
    .end local v25           #query:Ljava/lang/String;
    :sswitch_21
    const-string v4, "outgoingRmqMessages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1965
    :sswitch_22
    const-string v4, "outgoingRmqMessages"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1966
    const-string p5, "rmq_id DESC"

    .line 1967
    const-string v14, "1"

    .line 1968
    goto/16 :goto_0

    .line 1971
    :sswitch_23
    const-string v4, "lastrmqid"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1972
    const-string v14, "1"

    .line 1973
    goto/16 :goto_0

    .line 1976
    :sswitch_24
    const-string v4, "s2dRmqIds"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1980
    :sswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    .line 1981
    .local v29, searchQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/talk/TalkProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_2

    .line 1995
    .end local v29           #searchQuery:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 1996
    .local v20, ex:Ljava/lang/Exception;
    const-string v4, "TalkProvider"

    const-string v6, "query db caught "

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1743
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x25 -> :sswitch_8
        0x26 -> :sswitch_9
        0x28 -> :sswitch_19
        0x29 -> :sswitch_1a
        0x32 -> :sswitch_c
        0x33 -> :sswitch_f
        0x34 -> :sswitch_a
        0x36 -> :sswitch_e
        0x37 -> :sswitch_b
        0x3b -> :sswitch_d
        0x41 -> :sswitch_12
        0x42 -> :sswitch_13
        0x46 -> :sswitch_14
        0x48 -> :sswitch_15
        0x50 -> :sswitch_16
        0x51 -> :sswitch_18
        0x52 -> :sswitch_17
        0x5a -> :sswitch_1d
        0x5b -> :sswitch_1c
        0x5c -> :sswitch_1b
        0x64 -> :sswitch_10
        0x65 -> :sswitch_11
        0x68 -> :sswitch_1e
        0x69 -> :sswitch_1f
        0x6a -> :sswitch_20
        0x82 -> :sswitch_25
        0xc8 -> :sswitch_21
        0xca -> :sswitch_22
        0xcb -> :sswitch_23
        0xcc -> :sswitch_24
    .end sparse-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 1494
    const/4 v1, 0x0

    .line 1495
    .local v1, count:I
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->applyingBatch()Z

    move-result v0

    .line 1496
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 1497
    iget-object v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1498
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1500
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/talk/TalkProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1501
    if-lez v1, :cond_0

    .line 1502
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1503
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    .line 1505
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1510
    invoke-direct {p0}, Lcom/google/android/gsf/talk/TalkProvider;->onEndTransaction()V

    .line 1521
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    return v1

    .line 1507
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1514
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/talk/TalkProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1515
    if-lez v1, :cond_1

    .line 1516
    invoke-direct {p0, p1}, Lcom/google/android/gsf/talk/TalkProvider;->addToNotifyUris(Landroid/net/Uri;)V

    .line 1517
    iput-boolean v3, p0, Lcom/google/android/gsf/talk/TalkProvider;->mNotifyChange:Z

    goto :goto_0
.end method
