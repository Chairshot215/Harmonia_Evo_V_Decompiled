.class public interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tables"
.end annotation


# static fields
.field public static final ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final ACTIVITIES:Ljava/lang/String; = "activities"

.field public static final ACTIVITIES_JOIN_MIMETYPES:Ljava/lang/String; = "activities LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id)"

.field public static final ACTIVITIES_JOIN_PACKAGES_MIMETYPES_RAW_CONTACTS_CONTACTS:Ljava/lang/String; = "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

.field public static final AGGREGATED_PRESENCE:Ljava/lang/String; = "agg_presence"

.field public static final AGGREGATION_EXCEPTIONS:Ljava/lang/String; = "agg_exceptions"

.field public static final CALLS:Ljava/lang/String; = "calls"

.field public static final CONTACTS:Ljava/lang/String; = "contacts"

.field public static final CONTACTS_JOIN_RAW_CONTACTS:Ljava/lang/String; = "contacts JOIN raw_contacts ON (contacts.name_raw_contact_id = raw_contacts._id)"

.field public static final CONTACTS_JOIN_RAW_CONTACTS_DATA_FILTERED_BY_GROUPMEMBERSHIP:Ljava/lang/String; = "contacts INNER JOIN raw_contacts ON (raw_contacts.contact_id=contacts._id) INNER JOIN data ON (data.data1=groups._id AND data.raw_contact_id=raw_contacts._id AND data.mimetype_id=(SELECT _id FROM mimetypes WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'))"

.field public static final CONTACTS_JOIN_RAW_CONTACTS_LEFT_JOIN_PRESENCE:Ljava/lang/String; = "contacts JOIN raw_contacts ON (contacts.name_raw_contact_id = raw_contacts._id) LEFT JOIN agg_presence ON ( presence_contact_id = contacts._id ) "

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_JOIN_CONTACTS:Ljava/lang/String; = "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

.field public static final DATA_JOIN_MIMETYPES:Ljava/lang/String; = "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

.field public static final DATA_JOIN_MIMETYPE_RAW_CONTACTS:Ljava/lang/String; = "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

.field public static final DATA_JOIN_PACKAGES_MIMETYPES_RAW_CONTACTS_GROUPS:Ljava/lang/String; = "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN packages ON (data.package_id = packages._id) LEFT OUTER JOIN groups   ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'       AND groups._id = data.data1) "

.field public static final DATA_JOIN_RAW_CONTACTS:Ljava/lang/String; = "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

.field public static final DATA_USAGE_STAT:Ljava/lang/String; = "data_usage_stat"

.field public static final DEFAULT_DIRECTORY:Ljava/lang/String; = "default_directory"

.field public static final DIRECTORIES:Ljava/lang/String; = "directories"

.field public static final GROUPS:Ljava/lang/String; = "groups"

.field public static final GROUPS_JOIN_PACKAGES:Ljava/lang/String; = "groups LEFT OUTER JOIN packages ON (groups.package_id = packages._id)"

.field public static final MIMETYPES:Ljava/lang/String; = "mimetypes"

.field public static final NAME_LOOKUP:Ljava/lang/String; = "name_lookup"

.field public static final NAME_LOOKUP_JOIN_RAW_CONTACTS:Ljava/lang/String; = "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

.field public static final NICKNAME_LOOKUP:Ljava/lang/String; = "nickname_lookup"

.field public static final PACKAGES:Ljava/lang/String; = "packages"

.field public static final PHONE_LOOKUP:Ljava/lang/String; = "phone_lookup"

.field public static final PHOTO_FILES:Ljava/lang/String; = "photo_files"

.field public static final PRESENCE:Ljava/lang/String; = "presence"

.field public static final PROPERTIES:Ljava/lang/String; = "properties"

.field public static final RAW_CONTACTS:Ljava/lang/String; = "raw_contacts"

.field public static final RAW_CONTACTS_JOIN_SETTINGS_DATA_GROUPS:Ljava/lang/String; = "raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1)"

.field public static final SEARCH_INDEX:Ljava/lang/String; = "search_index"

.field public static final SEQUENCE_TABLES:[Ljava/lang/String; = null

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SETTINGS_JOIN_RAW_CONTACTS_DATA_MIMETYPES_CONTACTS:Ljava/lang/String; = "settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

.field public static final STATUS_UPDATES:Ljava/lang/String; = "status_updates"

.field public static final STREAM_ITEMS:Ljava/lang/String; = "stream_items"

.field public static final STREAM_ITEM_PHOTOS:Ljava/lang/String; = "stream_item_photos"

.field public static final VISIBLE_CONTACTS:Ljava/lang/String; = "visible_contacts"

.field public static final VOICEMAIL_STATUS:Ljava/lang/String; = "voicemail_status"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "stream_items"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "stream_item_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_files"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "groups"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "directories"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->SEQUENCE_TABLES:[Ljava/lang/String;

    return-void
.end method
