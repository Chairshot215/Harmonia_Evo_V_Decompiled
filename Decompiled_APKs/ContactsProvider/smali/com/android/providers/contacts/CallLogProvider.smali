.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field private static final CALLS:I = 0x1

.field private static final CALLS_CS_LOCAL_UUID:I = 0xe

.field private static final CALLS_FILTER:I = 0x3

.field private static final CALLS_ID:I = 0x2

.field private static final CALLS_MISSED:I = 0xd

.field private static final CALLS_SEARCH_SUGGESTION:I = 0x10

.field private static final CALLS_SEARCH_SUGGESTION_MMS:I = 0x13

.field private static final CALLS_SEARCH_SUGGESTION_SHORTCUT:I = 0x11

.field private static final CALLS_WITH_BLACKLIST:I = 0xc

.field private static final CALLS_WITH_PHOTO:I = 0x4

.field private static final CALLS_WITH_PHOTO_BY_RAW_ID:I = 0xb

.field private static final CALLS_WITH_PHOTO_BY_RAW_ID_TABLE_JOIN:Ljava/lang/String; = "( SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, calls.cs_local_uuid AS cs_local_uuid, calls.cs_timestamp AS cs_timestamp, contacts.photo_id AS photo_id, contacts.display_name AS display_name, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res FROM calls LEFT JOIN raw_contacts ON  calls.raw_contact_id= raw_contacts._id LEFT JOIN contacts ON  raw_contacts.contact_id= contacts._id  GROUP BY Calls.RAW_CONTACT_ID) "

.field private static final CALLS_WITH_PHOTO_CONTACT_ID:I = 0x8

.field private static final CALLS_WITH_PHOTO_INCOMING:I = 0x6

.field private static final CALLS_WITH_PHOTO_MISSED:I = 0x5

.field private static final CALLS_WITH_PHOTO_NEW_MISSED:I = 0x12

.field private static final CALLS_WITH_PHOTO_OUTGOING:I = 0x7

.field private static final CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String; = null

.field private static final CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String; = null

.field private static final CALL_TYPE_BEARER_OFFSET:I = 0x100

.field public static final CNAME:Ljava/lang/String; = "cname"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field private static DEBUG:Z = false

.field private static final EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String; = null

.field private static final MISS_CALLS_COUNT_BY_NUMBER:I = 0xa

.field private static final MISS_CALLS_COUNT_BY_RAW_ID:I = 0x9

.field private static final MISS_CALLS_INFO_BY_RAW_ID:I = 0xf

.field public static final RES_ICON:Ljava/lang/String; = "package_icon_res"

.field public static final RES_LABEL:Ljava/lang/String; = "package_label_res"

.field public static final RES_PACKAGE:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String; = "CallLogProvider"

.field private static mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

.field private static final sCallsPhotoProjectionMap:Ljava/util/HashMap;
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

.field private static final sCallsPhotoProjectionMapNew:Ljava/util/HashMap;
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

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
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

.field private static final sHtcCallsProjectionMap:Ljava/util/HashMap;
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

.field private static final sMissCallCountProjectionMap:Ljava/util/HashMap;
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

.field private static final sMissCallInfoProjectionMap:Ljava/util/HashMap;
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

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mGlobalCallLogSearchSupport:Lcom/android/providers/contacts/GlobalCallLogSearchSupport;

.field private mUseStrictPhoneNumberComparation:Z

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    .line 62
    const-string v0, "type"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getInequalityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    .line 119
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_6

    const-string v0, "( SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, calls.cs_local_uuid AS cs_local_uuid, calls.cs_timestamp AS cs_timestamp, contacts.photo_id AS photo_id, contacts.display_name AS display_name, contacts.lookup AS lookup, contacts.send_to_voicemail AS send_to_voicemail, contacts.vip AS vip, mode AS contact_presence, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.city_id AS city_id , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res FROM calls LEFT JOIN raw_contacts ON  calls.raw_contact_id= raw_contacts._id LEFT JOIN contacts  ON  raw_contacts.contact_id= contacts._id LEFT OUTER JOIN agg_presence ON ( presence_contact_id = contacts._id )) "

    :goto_0
    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String;

    .line 196
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_7

    const-string v0, "( SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, calls.cs_local_uuid AS cs_local_uuid, calls.cs_timestamp AS cs_timestamp, contacts.photo_id AS photo_id, contacts.display_name AS display_name, contacts.lookup AS lookup, contacts.send_to_voicemail AS send_to_voicemail, contacts.vip AS vip, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.city_id AS city_id , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res FROM calls LEFT JOIN raw_contacts ON  calls.raw_contact_id= raw_contacts._id LEFT JOIN contacts  ON  raw_contacts.contact_id= contacts._id ) "

    :goto_1
    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    .line 314
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 317
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/filter/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo/missed"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo/incoming"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo/outgoing"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo_by_raw_id"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "miss_calls_count_by_id"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "miss_calls_count_by_number"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo/blacklist"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "miss_calls_info_by_id"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/missed"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/cs_local_uuid"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "search_suggest_shortcut"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls_photo/new_missed"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "mms_search"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 391
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_read"

    const-string v2, "is_read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "geocoded_location"

    const-string v2, "geocoded_location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup_uri"

    const-string v2, "lookup_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "matched_number"

    const-string v2, "matched_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "formatted_number"

    const-string v2, "formatted_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cs_local_uuid"

    const-string v2, "cs_local_uuid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cs_timestamp"

    const-string v2, "cs_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "callType"

    const-string v2, "callType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cname"

    const-string v2, "cname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "package_name"

    const-string v2, "package_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "package_label_res"

    const-string v2, "package_label_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "package_icon_res"

    const-string v2, "package_icon_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_id"

    const-string v2, "data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "city_id"

    const-string v2, "city_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sHtcCallsProjectionMap:Ljava/util/HashMap;

    .line 433
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sHtcCallsProjectionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 434
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sHtcCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "city_id"

    const-string v2, "city_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    .line 447
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "cs_local_uuid"

    const-string v2, "cs_local_uuid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "cs_timestamp"

    const-string v2, "cs_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "lookup"

    const-string v2, "lookup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "vip"

    const-string v2, "vip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 478
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "city_id"

    const-string v2, "city_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 483
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "contact_presence"

    const-string v2, "contact_presence"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "callType"

    const-string v2, "callType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "cname"

    const-string v2, "cname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_3

    .line 491
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "ext_account_name"

    const-string v2, "ext_account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_3
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "package_name"

    const-string v2, "package_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "package_label_res"

    const-string v2, "package_label_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "package_icon_res"

    const-string v2, "package_icon_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    const-string v1, "data_id"

    const-string v2, "data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    .line 505
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "cs_local_uuid"

    const-string v2, "cs_local_uuid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "cs_timestamp"

    const-string v2, "cs_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup"

    const-string v2, "lookup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "vip"

    const-string v2, "vip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_4

    .line 534
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "city_id"

    const-string v2, "city_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_4
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "callType"

    const-string v2, "callType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "cname"

    const-string v2, "cname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_5

    .line 542
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "ext_account_name"

    const-string v2, "ext_account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_5
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "package_name"

    const-string v2, "package_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "package_label_res"

    const-string v2, "package_label_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "package_icon_res"

    const-string v2, "package_icon_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_id"

    const-string v2, "data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    .line 557
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    .line 571
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    return-void

    .line 119
    :cond_6
    const-string v0, "( SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, calls.cs_local_uuid AS cs_local_uuid, calls.cs_timestamp AS cs_timestamp, contacts.photo_id AS photo_id, contacts.display_name AS display_name, contacts.lookup AS lookup, contacts.send_to_voicemail AS send_to_voicemail, contacts.vip AS vip, mode AS contact_presence, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res FROM calls LEFT JOIN raw_contacts ON  calls.raw_contact_id= raw_contacts._id LEFT JOIN contacts ON  raw_contacts.contact_id= contacts._id LEFT OUTER JOIN agg_presence ON ( presence_contact_id = contacts._id )) "

    goto/16 :goto_0

    .line 196
    :cond_7
    const-string v0, "( SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, calls.cs_local_uuid AS cs_local_uuid, calls.cs_timestamp AS cs_timestamp, contacts.photo_id AS photo_id, contacts.display_name AS display_name, contacts.lookup AS lookup, contacts.send_to_voicemail AS send_to_voicemail, contacts.vip AS vip, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res FROM calls LEFT JOIN raw_contacts ON  calls.raw_contact_id= raw_contacts._id LEFT JOIN contacts ON  raw_contacts.contact_id= contacts._id ) "

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkIsAllowVoicemailRequest(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri %s cannot be used for voicemail record. Please set \'%s=true\' in the uri."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "allow_voicemails"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_0
    return-void
.end method

.method private checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V
    .locals 1
    .parameter "uri"
    .parameter "selectionBuilder"

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0
.end method

.method private getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "insertHelper"

    .prologue
    .line 1213
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "db"

    .prologue
    .line 1205
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private hasVoicemailValue(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 1217
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowVoicemailRequest(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 1241
    const-string v0, "allow_voicemails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    .line 1266
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1267
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1268
    .end local v1           #id:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 1269
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid call id in uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 621
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1100
    new-instance v14, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v14, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 1103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1104
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v18, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 1105
    .local v12, matchedUriId:I
    sparse-switch v12, :sswitch_data_0

    .line 1177
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot delete that URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1181
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #matchedUriId:I
    :catch_0
    move-exception v8

    .line 1182
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v18, "CallLogProvider"

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    const/4 v6, 0x0

    .line 1189
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_0
    :goto_0
    return v6

    .line 1107
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #matchedUriId:I
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v18

    const-string v19, "calls"

    invoke-virtual {v14}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1112
    .local v6, count:I
    if-gtz v6, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1114
    :cond_1
    sget-object v18, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyUpdateCallLog()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1184
    .end local v6           #count:I
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #matchedUriId:I
    :catch_1
    move-exception v9

    .line 1185
    .local v9, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v18, "CallLogProvider"

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    const/4 v6, 0x0

    goto :goto_0

    .line 1125
    .end local v9           #fe:Landroid/database/sqlite/SQLiteFullException;
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #matchedUriId:I
    :sswitch_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1127
    .local v5, changedItemId:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 1130
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v18

    const-string v19, "calls"

    invoke-virtual {v14}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1133
    .restart local v6       #count:I
    if-lez v6, :cond_0

    .line 1134
    sget-object v18, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyUpdateCallLog()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1187
    .end local v5           #changedItemId:Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #matchedUriId:I
    :catch_2
    move-exception v13

    .line 1188
    .local v13, se:Landroid/database/sqlite/SQLiteException;
    const-string v18, "CallLogProvider"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1189
    const/4 v6, 0x0

    goto :goto_0

    .line 1142
    .end local v13           #se:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #matchedUriId:I
    :sswitch_2
    const/16 v17, 0x0

    .line 1144
    .local v17, whereClause:Ljava/lang/String;
    if-eqz p3, :cond_3

    :try_start_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 1145
    move-object/from16 v4, p3

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v16, v4, v10

    .line 1146
    .local v16, uuid:Ljava/lang/String;
    if-nez v17, :cond_2

    .line 1147
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cs_local_uuid=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1145
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1149
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " OR cs_local_uuid=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v17

    goto :goto_2

    .line 1152
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v16           #uuid:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 1153
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v18, "CallLogProvider"

    const-string v19, "UUID Exception happen"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    .line 1158
    .restart local v6       #count:I
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    .line 1159
    new-instance v15, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .end local v14           #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    .local v15, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    move-object v14, v15

    .line 1162
    .end local v15           #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    .restart local v14       #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :cond_4
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 1164
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v18

    const-string v19, "calls"

    invoke-virtual {v14}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1167
    :cond_5
    if-lez v6, :cond_0

    .line 1168
    sget-object v18, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyUpdateCallLog()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1105
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 629
    invoke-static {p1}, Lcom/android/providers/contacts/COpenHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/COpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 954
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 955
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 963
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/calls"

    .line 961
    :goto_0
    return-object v1

    .line 959
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/calls"

    goto :goto_0

    .line 961
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/calls"

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 971
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->sHtcCallsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 975
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v2}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 983
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    .line 984
    .local v22, uuid:Ljava/lang/String;
    if-eqz v22, :cond_1

    if-eqz p2, :cond_1

    .line 985
    const-string v2, "cs_local_uuid"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_1
    const-string v2, "cs_timestamp"

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 992
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 993
    .local v18, rawContactId:J
    :goto_0
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, number:Ljava/lang/String;
    const-string v2, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 995
    .local v6, date:J
    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 996
    .local v8, type:I
    const-wide/16 v23, 0x0

    cmp-long v2, v18, v23

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v9

    .line 997
    .local v9, contactId:J
    :goto_1
    const-string v2, "city_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 998
    .local v11, cityId:Ljava/lang/String;
    const-string v2, "cname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 999
    .local v12, cname:Ljava/lang/String;
    const-string v2, "callType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1000
    const-string v2, "callType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 1001
    .local v13, bearerType:Ljava/lang/Integer;
    if-eqz v13, :cond_2

    .line 1002
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v8, v2

    .line 1005
    .end local v13           #bearerType:Ljava/lang/Integer;
    :cond_2
    if-eqz v5, :cond_8

    const-string v2, "-1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "-2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "-3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "-4"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "-5"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v21, 0x1

    .line 1008
    .local v21, shouldNotifyChange:Z
    :goto_2
    if-eqz v21, :cond_3

    .line 1009
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    const-wide/16 v3, -0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyInsertCallLog(JLjava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v2, :cond_4

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1017
    .local v15, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v23, "calls"

    move-object/from16 v0, v23

    invoke-direct {v2, v15, v0}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1020
    .end local v15           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1023
    .local v14, copiedValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v2, v14}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    invoke-interface {v2, v14}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1026
    .local v3, rowId:J
    const-wide/16 v23, 0x0

    cmp-long v2, v3, v23

    if-lez v2, :cond_9

    .line 1027
    if-eqz v21, :cond_5

    .line 1028
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual/range {v2 .. v12}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyInsertCallLog(JLjava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1043
    .end local v3           #rowId:J
    .end local v14           #copiedValues:Landroid/content/ContentValues;
    :goto_3
    return-object v2

    .line 992
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #date:J
    .end local v8           #type:I
    .end local v9           #contactId:J
    .end local v11           #cityId:Ljava/lang/String;
    .end local v12           #cname:Ljava/lang/String;
    .end local v18           #rawContactId:J
    .end local v21           #shouldNotifyChange:Z
    :cond_6
    const-wide/16 v18, 0x0

    goto/16 :goto_0

    .line 996
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #date:J
    .restart local v8       #type:I
    .restart local v18       #rawContactId:J
    :cond_7
    const-wide/16 v9, 0x0

    goto/16 :goto_1

    .line 1005
    .restart local v9       #contactId:J
    .restart local v11       #cityId:Ljava/lang/String;
    .restart local v12       #cname:Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto :goto_2

    .line 1032
    .restart local v3       #rowId:J
    .restart local v14       #copiedValues:Landroid/content/ContentValues;
    .restart local v21       #shouldNotifyChange:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 1035
    .end local v3           #rowId:J
    .end local v14           #copiedValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v16

    .line 1036
    .local v16, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "CallLogProvider"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    const/4 v2, 0x0

    goto :goto_3

    .line 1038
    .end local v16           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v17

    .line 1039
    .local v17, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "CallLogProvider"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    const/4 v2, 0x0

    goto :goto_3

    .line 1041
    .end local v17           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v20

    .line 1042
    .local v20, se:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CallLogProvider"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 596
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 600
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 601
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    .line 604
    new-instance v1, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 606
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_1
    invoke-static {v0}, Lcom/android/providers/contacts/NotifyDialerScheduler;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/CallLogProvider;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    .line 612
    new-instance v1, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;-><init>(Lcom/android/providers/contacts/CallLogProvider;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mGlobalCallLogSearchSupport:Lcom/android/providers/contacts/GlobalCallLogSearchSupport;

    .line 616
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 45
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 638
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 639
    .local v9, limit:Ljava/lang/String;
    const/16 v38, 0x0

    .line 642
    .local v38, resultCursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 643
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "calls"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 644
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 645
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 647
    new-instance v41, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .local v41, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 650
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v33

    .line 651
    .local v33, match:I
    packed-switch v33, :pswitch_data_0

    .line 916
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 937
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v33           #match:I
    .end local v41           #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :catch_0
    move-exception v26

    .line 938
    .local v26, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "CallLogProvider"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    const/4 v4, 0x0

    .line 947
    .end local v26           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_0
    return-object v4

    .line 656
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v33       #match:I
    .restart local v41       #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :pswitch_0
    :try_start_1
    const-string v4, "_id"

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 919
    :cond_0
    :goto_1
    :pswitch_1
    if-nez v38, :cond_1

    .line 921
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 922
    const-string v10, "CallLogProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1
    if-nez v38, :cond_2

    .line 927
    invoke-virtual/range {v41 .. v41}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    move-object/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v17, p5

    move-object/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 929
    .local v20, c:Landroid/database/Cursor;
    move-object/from16 v38, v20

    .line 931
    .end local v20           #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v38, :cond_3

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-interface {v0, v4, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    move-object/from16 v4, v38

    .line 934
    goto :goto_0

    .line 662
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 663
    .local v35, phoneNumber:Ljava/lang/String;
    const-string v4, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 664
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v4, :cond_4

    const-string v4, ", 1)"

    :goto_2
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 941
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v33           #match:I
    .end local v35           #phoneNumber:Ljava/lang/String;
    .end local v41           #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :catch_1
    move-exception v28

    .line 942
    .local v28, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "CallLogProvider"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 665
    .end local v28           #fe:Landroid/database/sqlite/SQLiteFullException;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v33       #match:I
    .restart local v35       #phoneNumber:Ljava/lang/String;
    .restart local v41       #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :cond_4
    :try_start_2
    const-string v4, ", 0)"

    goto :goto_2

    .line 672
    .end local v35           #phoneNumber:Ljava/lang/String;
    :pswitch_3
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_6

    sget-object v36, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->NON_BLACKLIST_CALLS:Ljava/lang/String;

    .line 675
    .local v36, queryString:Ljava/lang/String;
    :goto_3
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "LUCY_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLS_WITH_PHOTO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_5
    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 677
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 945
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v33           #match:I
    .end local v36           #queryString:Ljava/lang/String;
    .end local v41           #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :catch_2
    move-exception v39

    .line 946
    .local v39, se:Landroid/database/sqlite/SQLiteException;
    const-string v4, "CallLogProvider"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 672
    .end local v39           #se:Landroid/database/sqlite/SQLiteException;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v33       #match:I
    .restart local v41       #selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    :cond_6
    :try_start_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x30

    if-ne v4, v5, :cond_7

    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String;

    goto :goto_3

    :cond_7
    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    goto :goto_3

    .line 682
    :pswitch_4
    const-string v4, "( SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, calls.cs_local_uuid AS cs_local_uuid, calls.cs_timestamp AS cs_timestamp, contacts.photo_id AS photo_id, contacts.display_name AS display_name, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res FROM calls LEFT JOIN raw_contacts ON  calls.raw_contact_id= raw_contacts._id LEFT JOIN contacts ON  raw_contacts.contact_id= contacts._id  GROUP BY Calls.RAW_CONTACT_ID) "

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 683
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 688
    :pswitch_5
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_9

    sget-object v36, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->NON_BLACKLIST_CALLS:Ljava/lang/String;

    .line 691
    .restart local v36       #queryString:Ljava/lang/String;
    :goto_4
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "LUCY_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLS_WITH_PHOTO_INCOMING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_8
    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 693
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 694
    const-string v4, "type=1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 688
    .end local v36           #queryString:Ljava/lang/String;
    :cond_9
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x30

    if-ne v4, v5, :cond_a

    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String;

    goto :goto_4

    :cond_a
    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    goto :goto_4

    .line 699
    :pswitch_6
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_c

    sget-object v36, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->NON_BLACKLIST_CALLS:Ljava/lang/String;

    .line 702
    .restart local v36       #queryString:Ljava/lang/String;
    :goto_5
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "LUCY_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLS_WITH_PHOTO_OUTGOING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_b
    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 704
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 705
    const-string v4, "type=2"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 699
    .end local v36           #queryString:Ljava/lang/String;
    :cond_c
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x30

    if-ne v4, v5, :cond_d

    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String;

    goto :goto_5

    :cond_d
    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    goto :goto_5

    .line 710
    :pswitch_7
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_f

    sget-object v36, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->NON_BLACKLIST_CALLS:Ljava/lang/String;

    .line 713
    .restart local v36       #queryString:Ljava/lang/String;
    :goto_6
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "LUCY_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLS_WITH_PHOTO_MISSED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_e
    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 715
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 716
    const-string v4, "type=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 710
    .end local v36           #queryString:Ljava/lang/String;
    :cond_f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x30

    if-ne v4, v5, :cond_10

    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String;

    goto :goto_6

    :cond_10
    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    goto :goto_6

    .line 721
    :pswitch_8
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_0

    .line 722
    sget-object v36, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->BLACKLIST_CALLS:Ljava/lang/String;

    .line 723
    .restart local v36       #queryString:Ljava/lang/String;
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "LUCY_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLS_WITH_BLACKLIST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_11
    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 725
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 732
    .end local v36           #queryString:Ljava/lang/String;
    :pswitch_9
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 733
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 740
    :pswitch_a
    const-string v4, "(SELECT COUNT(_id) AS _count, * FROM calls WHERE new=1 AND type=3 GROUP BY raw_contact_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 743
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 748
    :pswitch_b
    const-string v4, "(SELECT COUNT(_id) AS _count, * FROM calls WHERE new=1 AND type=3 GROUP BY number)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 751
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sMissCallCountProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 757
    :pswitch_c
    const-string v4, "(SELECT COUNT(_id) AS _count, * FROM calls WHERE type=3 GROUP BY raw_contact_id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 760
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sMissCallInfoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 767
    :pswitch_d
    const-string v4, "calls"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 768
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 769
    const-string v4, "calls.type=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 777
    :pswitch_e
    const-string v4, "calls"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 778
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 779
    const/16 v44, 0x0

    .line 781
    .local v44, whereClause:Ljava/lang/String;
    if-eqz p4, :cond_14

    :try_start_4
    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_14

    .line 782
    move-object/from16 v19, p4

    .local v19, arr$:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v29, 0x0

    .local v29, i$:I
    :goto_7
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    aget-object v42, v19, v29

    .line 783
    .local v42, uuid:Ljava/lang/String;
    if-nez v44, :cond_12

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cs_local_uuid=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 782
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 787
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR cs_local_uuid=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v44

    goto :goto_8

    .line 790
    .end local v42           #uuid:Ljava/lang/String;
    :cond_13
    const/16 p4, 0x0

    .line 795
    .end local v19           #arr$:[Ljava/lang/String;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_14
    :goto_9
    if-eqz v44, :cond_15

    :try_start_5
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 796
    const/4 v4, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 792
    :catch_3
    move-exception v26

    .line 793
    .local v26, e:Ljava/lang/Exception;
    const-string v4, "CallLogProvider"

    const-string v5, "UUID Exception happen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 799
    .end local v26           #e:Ljava/lang/Exception;
    :cond_15
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Without Set Correct selection, URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 809
    .end local v44           #whereClause:Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/CallLogProvider;->mGlobalCallLogSearchSupport:Lcom/android/providers/contacts/GlobalCallLogSearchSupport;

    move-object/from16 v0, p1

    invoke-virtual {v4, v11, v0, v9}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 811
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 812
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v34

    .line 813
    .local v34, name:[Ljava/lang/String;
    :cond_16
    :goto_a
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 814
    const-string v4, "CallLogProvider"

    const-string v5, "-------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v19, v34

    .restart local v19       #arr$:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_b
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    aget-object v25, v19, v29

    .line 816
    .local v25, col:Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 817
    .local v30, index:I
    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 818
    .local v43, value:Ljava/lang/String;
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "CallLogProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_17
    add-int/lit8 v29, v29, 0x1

    goto :goto_b

    .line 820
    .end local v25           #col:Ljava/lang/String;
    .end local v30           #index:I
    .end local v43           #value:Ljava/lang/String;
    :cond_18
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "CallLogProvider"

    const-string v5, "-------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 827
    .end local v19           #arr$:[Ljava/lang/String;
    .end local v29           #i$:I
    .end local v31           #len$:I
    .end local v34           #name:[Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v23

    .line 828
    .local v23, callId:Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 830
    .local v21, call:J
    :try_start_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-wide v21

    .line 834
    :goto_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/CallLogProvider;->mGlobalCallLogSearchSupport:Lcom/android/providers/contacts/GlobalCallLogSearchSupport;

    const/4 v5, 0x0

    move-wide/from16 v0, v21

    invoke-virtual {v4, v11, v0, v1, v5}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 836
    goto/16 :goto_1

    .line 831
    :catch_4
    move-exception v26

    .line 832
    .local v26, e:Ljava/lang/NumberFormatException;
    const-wide/16 v21, -0x1

    goto :goto_c

    .line 842
    .end local v21           #call:J
    .end local v23           #callId:Ljava/lang/String;
    .end local v26           #e:Ljava/lang/NumberFormatException;
    :pswitch_11
    sget-boolean v4, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_1a

    sget-object v36, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->NON_BLACKLIST_CALLS:Ljava/lang/String;

    .line 845
    .restart local v36       #queryString:Ljava/lang/String;
    :goto_d
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_19

    .line 846
    const-string v4, "Dashboard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLS_WITH_PHOTO_NEW_MISSED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_19
    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 850
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsPhotoProjectionMapNew:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 851
    const-string v4, "new=1 AND type=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 842
    .end local v36           #queryString:Ljava/lang/String;
    :cond_1a
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1b

    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN_WITH_PRESENCE:Ljava/lang/String;

    goto :goto_d

    :cond_1b
    sget-object v36, Lcom/android/providers/contacts/CallLogProvider;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    goto :goto_d

    .line 859
    :pswitch_12
    new-instance v27, Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 860
    .local v27, emptyString:Ljava/lang/String;
    new-instance v24, Ljava/lang/String;

    const-string v4, "calltype"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 861
    .local v24, calltype:Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v40, p4, v4

    .line 862
    .local v40, searchString1:Ljava/lang/String;
    if-eqz v40, :cond_1f

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f

    .line 863
    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 867
    :goto_e
    sget-boolean v4, Lcom/android/providers/contacts/CallLogProvider;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string v4, "CallLogProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms Call log, search str: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1c
    const/16 v32, -0x1

    .line 869
    .local v32, limitnumber:I
    if-eqz v9, :cond_1d

    .line 870
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 872
    :cond_1d
    new-instance v37, Ljava/lang/String;

    const-string v4, " SELECT   calls.name AS display_name, calls.raw_contact_id AS _id, calls.number AS data1,21 AS data2, null as data3, calls.number AS data1, calls.raw_contact_id AS contact_id FROM calls   WHERE (     (raw_contact_id IS NULL OR 0 = raw_contact_id)                  AND number NOT IN (\'-1\', \'-2\', \'-3\', \'-4\', \'-5\')                  AND (name LIKE ? OR number LIKE ? )               )   GROUP BY SUBSTR(number, -8)   UNION ALL   SELECT   calls.name AS display_name, calls.raw_contact_id AS _id, calls.number AS data1,21 AS data2, null as data3, calls.number AS data1, calls.raw_contact_id AS contact_id  FROM calls     INNER JOIN raw_contacts     ON (    raw_contact_id IS NOT NULL        AND 0 < raw_contact_id         AND number NOT IN (\'-1\', \'-2\', \'-3\', \'-4\', \'-5\')         AND raw_contact_id = raw_contacts._id)         AND (raw_contacts.display_name LIKE ? OR number LIKE ? )          GROUP BY data1 ORDER BY display_name,number"

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 905
    .local v37, rawQuery1:Ljava/lang/String;
    if-lez v32, :cond_1e

    .line 906
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 908
    :cond_1e
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v40, v4, v5

    const/4 v5, 0x1

    aput-object v40, v4, v5

    const/4 v5, 0x2

    aput-object v40, v4, v5

    const/4 v5, 0x3

    aput-object v40, v4, v5

    move-object/from16 v0, v37

    invoke-virtual {v11, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 912
    goto/16 :goto_1

    .line 865
    .end local v32           #limitnumber:I
    .end local v37           #rawQuery1:Ljava/lang/String;
    :cond_1f
    const-string v40, "%"
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_e

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x0

    .line 1052
    sget-object v7, Lcom/android/providers/contacts/CallLogProvider;->sHtcCallsProjectionMap:Ljava/util/HashMap;

    invoke-static {v7, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 1056
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 1060
    :cond_0
    new-instance v5, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v5, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v5, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 1067
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1068
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1069
    .local v3, matchedUriId:I
    packed-switch v3, :pswitch_data_0

    .line 1078
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1085
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #matchedUriId:I
    :catch_0
    move-exception v1

    .line 1086
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v7, "CallLogProvider"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_0
    return v6

    .line 1074
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #matchedUriId:I
    :pswitch_0
    :try_start_1
    const-string v7, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 1081
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v7

    const-string v8, "calls"

    invoke-virtual {v5}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, p2, v9, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    goto :goto_0

    .line 1088
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #matchedUriId:I
    :catch_1
    move-exception v2

    .line 1089
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "CallLogProvider"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1091
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v4

    .line 1092
    .local v4, se:Landroid/database/sqlite/SQLiteException;
    const-string v7, "CallLogProvider"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
