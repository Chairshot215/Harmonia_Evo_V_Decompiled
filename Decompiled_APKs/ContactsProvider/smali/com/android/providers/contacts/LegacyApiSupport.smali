.class public Lcom/android/providers/contacts/LegacyApiSupport;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyApiSupport$SettingsMatchQuery;,
        Lcom/android/providers/contacts/LegacyApiSupport$LegacyPhotoData;,
        Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;,
        Lcom/android/providers/contacts/LegacyApiSupport$LegacyTables;
    }
.end annotation


# static fields
.field private static final CONTACTMETHODS:I = 0x8

.field private static final CONTACTMETHODS_EMAIL:I = 0x27

.field private static final CONTACTMETHODS_ID:I = 0x9

.field private static final CONTACTS_UPDATE_LASTTIMECONTACTED:Ljava/lang/String; = "UPDATE contacts SET last_time_contacted=? WHERE _id=?"

.field private static CONTACT_METHOD_DATA_SQL:Ljava/lang/String; = null

.field private static final CONTACT_METHOD_KIND_SQL:Ljava/lang/String; = "CAST ((CASE WHEN mimetype=\'vnd.android.cursor.item/email_v2\' THEN 1 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN 3 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/postal-address_v2\' THEN 2 ELSE NULL END) END) END) AS INTEGER)"

.field private static final CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String; = null

.field public static final DATA_JOINS:Ljava/lang/String; = " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

.field private static final DELETED_GROUPS:I = 0x1f

.field private static final DELETED_PEOPLE:I = 0x1e

.field private static final EXTENSIONS:I = 0xe

.field private static final EXTENSIONS_ID:I = 0xf

.field private static final EXTENSION_MIME_TYPES:[Ljava/lang/String; = null

.field private static final GROUPMEMBERSHIP:I = 0x14

.field private static final GROUPMEMBERSHIP_ID:I = 0x15

.field private static final GROUPS:I = 0x12

.field private static final GROUPS_ID:I = 0x13

.field private static final GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String; = null

.field private static final GROUP_NAME_MEMBERS:I = 0x28

.field private static final GROUP_SYSTEM_ID_MEMBERS:I = 0x29

.field private static final IM_PROTOCOL_SQL:Ljava/lang/String; = "(CASE WHEN protocol=-1 THEN \'custom:\'||custom_protocol ELSE \'pre:\'||protocol END)"

.field public static final LEGACY_PHOTO_JOIN:Ljava/lang/String; = " LEFT OUTER JOIN data legacy_photo ON (raw_contacts._id = legacy_photo.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = legacy_photo.mimetype_id)=\'vnd.android.cursor.item/photo_v1_extras\' AND data._id = legacy_photo.data1)"

.field private static final LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri; = null

.field private static final LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri; = null

.field private static final LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri; = null

.field private static final LIVE_FOLDERS_PEOPLE:I = 0x23

.field private static final LIVE_FOLDERS_PEOPLE_FAVORITES:I = 0x26

.field private static final LIVE_FOLDERS_PEOPLE_GROUP_NAME:I = 0x24

.field private static final LIVE_FOLDERS_PEOPLE_WITH_PHONES:I = 0x25

.field private static final ORGANIZATIONS:I = 0x4

.field private static final ORGANIZATIONS_ID:I = 0x5

.field private static final ORGANIZATION_MIME_TYPES:[Ljava/lang/String; = null

.field private static final PEOPLE:I = 0x1

.field private static final PEOPLE_CONTACTMETHODS:I = 0x6

.field private static final PEOPLE_CONTACTMETHODS_ID:I = 0x7

.field private static final PEOPLE_EXTENSIONS:I = 0x10

.field private static final PEOPLE_EXTENSIONS_ID:I = 0x11

.field private static final PEOPLE_FILTER:I = 0x1d

.field private static final PEOPLE_GROUPMEMBERSHIP:I = 0x16

.field private static final PEOPLE_GROUPMEMBERSHIP_ID:I = 0x17

.field private static final PEOPLE_ID:I = 0x2

.field private static final PEOPLE_JOINS:Ljava/lang/String; = " LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

.field private static final PEOPLE_ORGANIZATIONS:I = 0x2a

.field private static final PEOPLE_ORGANIZATIONS_ID:I = 0x2b

.field private static final PEOPLE_PHONES:I = 0xa

.field private static final PEOPLE_PHONES_ID:I = 0xb

.field private static final PEOPLE_PHOTO:I = 0x18

.field private static final PEOPLE_UPDATE_CONTACT_TIME:I = 0x3

.field private static final PHONES:I = 0xc

.field private static final PHONES_FILTER:I = 0x22

.field private static final PHONES_ID:I = 0xd

.field private static final PHONETIC_NAME_SQL:Ljava/lang/String; = "trim(trim(ifnull(name.data7,\' \')||\' \'||ifnull(name.data8,\' \'))||\' \'||ifnull(name.data9,\' \')) "

.field private static final PHONE_MIME_TYPES:[Ljava/lang/String; = null

.field private static final PHOTOS:I = 0x19

.field private static final PHOTOS_ID:I = 0x1a

.field private static final PHOTO_MIME_TYPES:[Ljava/lang/String; = null

.field public static final PRESENCE_JOINS:Ljava/lang/String; = " LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

.field private static final RAWCONTACTS_UPDATE_LASTTIMECONTACTED:Ljava/lang/String; = "UPDATE raw_contacts SET last_time_contacted=? WHERE _id=?"

.field private static final SEARCH_SHORTCUT:I = 0x21

.field private static final SEARCH_SUGGESTIONS:I = 0x20

.field private static final SETTINGS:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "ContactsProviderV1"

.field private static final sContactMethodProjectionMap:Ljava/util/HashMap;
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

.field private static final sExtensionProjectionMap:Ljava/util/HashMap;
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

.field private static final sGroupMembershipProjectionMap:Ljava/util/HashMap;
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

.field private static final sGroupProjectionMap:Ljava/util/HashMap;
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

.field private static final sOrganizationProjectionMap:Ljava/util/HashMap;
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

.field private static final sPeopleProjectionMap:Ljava/util/HashMap;
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

.field private static final sPhoneProjectionMap:Ljava/util/HashMap;
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

.field private static final sPhotoProjectionMap:Ljava/util/HashMap;
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

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private final mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDefaultAccountKnown:Z

.field private final mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private mMimetypeEmail:J

.field private mMimetypeIm:J

.field private mMimetypePostal:J

.field private final mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValues2:Landroid/content/ContentValues;

.field private final mValues3:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    new-instance v3, Landroid/content/UriMatcher;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 177
    const-string v3, "(CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN (CASE WHEN data.data5=-1 THEN \'custom:\'||data.data6 ELSE \'pre:\'||data.data5 END) ELSE data.data1 END)"

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    .line 186
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "live_folders/contacts"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    .line 189
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "live_folders/contacts_with_phones"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    .line 192
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "live_folders/favorites"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    .line 220
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/organization"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    .line 224
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v3, v6

    const-string v4, "vnd.android.cursor.item/im"

    aput-object v4, v3, v5

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    aput-object v4, v3, v7

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    .line 230
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    .line 234
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    .line 238
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    .line 242
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/contact_extensions"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    .line 285
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 287
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v0, "contacts"

    .line 288
    .local v0, authority:Ljava/lang/String;
    const-string v3, "extensions"

    const/16 v4, 0xe

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    const-string v3, "extensions/#"

    const/16 v4, 0xf

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    const-string v3, "groups"

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    const-string v3, "groups/#"

    const/16 v4, 0x13

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    const-string v3, "groups/name/*/members"

    const/16 v4, 0x28

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    const-string v3, "groups/system_id/*/members"

    const/16 v4, 0x29

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    const-string v3, "groupmembership"

    const/16 v4, 0x14

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    const-string v3, "groupmembership/#"

    const/16 v4, 0x15

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    const-string v3, "people"

    invoke-virtual {v1, v0, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    const-string v3, "people/filter/*"

    const/16 v4, 0x1d

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    const-string v3, "people/#"

    invoke-virtual {v1, v0, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    const-string v3, "people/#/extensions"

    const/16 v4, 0x10

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    const-string v3, "people/#/extensions/#"

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v3, "people/#/phones"

    const/16 v4, 0xa

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    const-string v3, "people/#/phones/#"

    const/16 v4, 0xb

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    const-string v3, "people/#/photo"

    const/16 v4, 0x18

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    const-string v3, "people/#/contact_methods"

    const/4 v4, 0x6

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    const-string v3, "people/#/contact_methods/#"

    const/4 v4, 0x7

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    const-string v3, "people/#/organizations"

    const/16 v4, 0x2a

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    const-string v3, "people/#/organizations/#"

    const/16 v4, 0x2b

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    const-string v3, "people/#/groupmembership"

    const/16 v4, 0x16

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    const-string v3, "people/#/groupmembership/#"

    const/16 v4, 0x17

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    const-string v3, "people/#/update_contact_time"

    invoke-virtual {v1, v0, v3, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    const-string v3, "deleted_people"

    const/16 v4, 0x1e

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    const-string v3, "deleted_groups"

    const/16 v4, 0x1f

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    const-string v3, "phones"

    const/16 v4, 0xc

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    const-string v3, "phones/filter/*"

    const/16 v4, 0x22

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    const-string v3, "phones/#"

    const/16 v4, 0xd

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    const-string v3, "photos"

    const/16 v4, 0x19

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    const-string v3, "photos/#"

    const/16 v4, 0x1a

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    const-string v3, "contact_methods"

    const/16 v4, 0x8

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    const-string v3, "contact_methods/email"

    const/16 v4, 0x27

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    const-string v3, "contact_methods/#"

    const/16 v4, 0x9

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    const-string v3, "organizations"

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    const-string v3, "organizations/#"

    const/4 v4, 0x5

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    const-string v3, "search_suggest_query"

    invoke-virtual {v1, v0, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    const-string v3, "search_suggest_query/*"

    invoke-virtual {v1, v0, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    const-string v3, "search_suggest_shortcut/*"

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    const-string v3, "settings"

    const/16 v4, 0x2c

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v3, "live_folders/people"

    const/16 v4, 0x23

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    const-string v3, "live_folders/people/*"

    const/16 v4, 0x24

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const-string v3, "live_folders/people_with_phones"

    const/16 v4, 0x25

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    const-string v3, "live_folders/favorites"

    const/16 v4, 0x26

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v2, peopleProjectionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v3, "display_name"

    const-string v4, "display_name"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v3, "phonetic_name"

    const-string v4, "phonetic_name"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v3, "notes"

    const-string v4, "notes"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v3, "times_contacted"

    const-string v4, "times_contacted"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v3, "last_time_contacted"

    const-string v4, "last_time_contacted"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v3, "custom_ringtone"

    const-string v4, "custom_ringtone"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v3, "send_to_voicemail"

    const-string v4, "send_to_voicemail"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v3, "starred"

    const-string v4, "starred"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v3, "primary_organization"

    const-string v4, "primary_organization"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v3, "primary_email"

    const-string v4, "primary_email"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v3, "primary_phone"

    const-string v4, "primary_phone"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    .line 382
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "number"

    const-string v5, "number"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "number_key"

    const-string v5, "number_key"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "im_protocol"

    const-string v5, "(CASE WHEN protocol=-1 THEN \'custom:\'||custom_protocol ELSE \'pre:\'||protocol END) AS im_protocol"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "im_handle"

    const-string v5, "im_handle"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "im_account"

    const-string v5, "im_account"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "mode"

    const-string v5, "mode"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "status"

    const-string v5, "(SELECT status FROM status_updates JOIN data   ON(status_update_data_id=data._id) WHERE data.raw_contact_id=people._id ORDER BY status_ts DESC  LIMIT 1) AS status"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    .line 402
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "isprimary"

    const-string v5, "isprimary"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "company"

    const-string v5, "company"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    .line 418
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "kind"

    const-string v5, "kind"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "isprimary"

    const-string v5, "isprimary"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "data"

    const-string v5, "data"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "aux_data"

    const-string v5, "aux_data"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    .line 428
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "isprimary"

    const-string v5, "isprimary"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "number"

    const-string v5, "number"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "number_key"

    const-string v5, "number_key"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    .line 444
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "name"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "value"

    const-string v5, "value"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    .line 454
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "name"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "notes"

    const-string v5, "notes"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "system_id"

    const-string v5, "system_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    .line 464
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_id"

    const-string v5, "group_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_sync_id"

    const-string v5, "group_sync_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_sync_account"

    const-string v5, "group_sync_account"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_sync_account_type"

    const-string v5, "group_sync_account_type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    .line 481
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "data"

    const-string v5, "data"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "local_version"

    const-string v5, "local_version"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "download_required"

    const-string v5, "download_required"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "exists_on_server"

    const-string v5, "exists_on_server"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "sync_error"

    const-string v5, "sync_error"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .locals 7
    .parameter "context"
    .parameter "contactsDatabaseHelper"
    .parameter "contactsProvider"
    .parameter "globalSearchSupport"

    .prologue
    .line 518
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    .line 205
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    .line 506
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 507
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    .line 519
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    .line 520
    iput-object p3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 521
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 522
    iput-object p4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 524
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const v4, 0x10400b5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 528
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 529
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "SELECT mimetype_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 534
    const-string v0, "SELECT raw_contact_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 539
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    .line 540
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    .line 541
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    .line 542
    return-void
.end method

.method private appendGroupAccount(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1962
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1964
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1970
    :goto_0
    return-void

    .line 1967
    :cond_0
    const-string v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .parameter "qb"

    .prologue
    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1956
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendGroupAccount(Ljava/lang/StringBuilder;)V

    .line 1957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1958
    return-void
.end method

.method private applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .parameter "qb"

    .prologue
    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1929
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendRawContactsAccount(Ljava/lang/StringBuilder;)V

    .line 1930
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1931
    return-void
.end method

.method private buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "groupName"

    .prologue
    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "systemId"

    .prologue
    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE system_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "values"
    .parameter "mimeType"
    .parameter "typeColumn"
    .parameter "labelColumn"
    .parameter "auxDataColumn"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-static {v0, p3, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "label"

    invoke-static {v0, p4, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "aux_data"

    invoke-static {v0, p5, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method public static createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 552
    const-string v0, "ContactsProviderV1"

    const-string v1, "Bootstrapping database legacy support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 554
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 555
    return-void
.end method

.method public static createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 767
    const-string v0, "DROP TABLE IF EXISTS v1_settings;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    const-string v0, "CREATE TABLE v1_settings (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,key STRING NOT NULL,value STRING );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public static createViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 559
    const-string v0, "name.data1 AS name, raw_contacts.display_name AS display_name, trim(trim(ifnull(name.data7,\' \')||\' \'||ifnull(name.data8,\' \'))||\' \'||ifnull(name.data9,\' \'))  AS phonetic_name , note.data1 AS notes, account_name, account_type, raw_contacts.times_contacted AS times_contacted, raw_contacts.last_time_contacted AS last_time_contacted, raw_contacts.custom_ringtone AS custom_ringtone, raw_contacts.send_to_voicemail AS send_to_voicemail, raw_contacts.starred AS starred, organization._id AS primary_organization, email._id AS primary_email, phone._id AS primary_phone, phone.data1 AS number, phone.data2 AS type, phone.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(phone.data1) AS number_key"

    .line 594
    .local v0, peopleColumns:Ljava/lang/String;
    const-string v1, "DROP VIEW IF EXISTS view_v1_people;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_people AS SELECT raw_contacts._id AS _id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    const-string v1, "DROP VIEW IF EXISTS view_v1_organizations;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 603
    const-string v1, "CREATE VIEW view_v1_organizations AS SELECT data._id AS _id, raw_contact_id AS person, is_primary AS isprimary, account_name, account_type, data1 AS company, data2 AS type, data3 AS label, data4 AS title FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/organization\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 626
    const-string v1, "DROP VIEW IF EXISTS view_v1_contact_methods;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_contact_methods AS SELECT data._id AS _id, data.raw_contact_id AS person, CAST ((CASE WHEN mimetype=\'vnd.android.cursor.item/email_v2\' THEN 1 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN 3 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/postal-address_v2\' THEN 2 ELSE NULL END) END) END) AS INTEGER) AS kind, data.is_primary AS isprimary, data.data2 AS type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data.data14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aux_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    const-string v1, "DROP VIEW IF EXISTS view_v1_phones;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_phones AS SELECT DISTINCT data._id AS _id, data.raw_contact_id AS person, data.is_primary AS isprimary, data.data1 AS number, data.data2 AS type, data.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(data.data1) AS number_key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetypes.mimetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 678
    const-string v1, "DROP VIEW IF EXISTS view_v1_extensions;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    const-string v1, "CREATE VIEW view_v1_extensions AS SELECT data._id AS _id, data.raw_contact_id AS person, account_name, account_type, data1 AS name, data2 AS value FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/contact_extensions\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    const-string v1, "DROP VIEW IF EXISTS view_v1_groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 697
    const-string v1, "CREATE VIEW view_v1_groups AS SELECT groups._id AS _id, account_name, account_type, title AS name, notes AS notes , system_id AS system_id FROM groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    const-string v1, "DROP VIEW IF EXISTS view_v1_group_membership;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 708
    const-string v1, "CREATE VIEW view_v1_group_membership AS SELECT data._id AS _id, data.raw_contact_id AS person, raw_contacts.account_name AS account_name, raw_contacts.account_type AS account_type, data1 AS group_id, title AS name, notes AS notes, system_id AS system_id, groups.sourceid AS group_sync_id, groups.account_name AS group_sync_account, groups.account_type AS group_sync_account_type FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN packages ON (data.package_id = packages._id) LEFT OUTER JOIN groups   ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'       AND groups._id = data.data1)  WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 740
    const-string v1, "DROP VIEW IF EXISTS view_v1_photos;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    const-string v1, "CREATE VIEW view_v1_photos AS SELECT data._id AS _id, data.raw_contact_id AS person, account_name, account_type, data.data15 AS data, legacy_photo.data4 AS exists_on_server, legacy_photo.data3 AS download_required, legacy_photo.data2 AS local_version, legacy_photo.data5 AS sync_error FROM data JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary) LEFT OUTER JOIN data legacy_photo ON (raw_contacts._id = legacy_photo.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = legacy_photo.mimetype_id)=\'vnd.android.cursor.item/photo_v1_extras\' AND data._id = legacy_photo.data1) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/photo\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method private ensureDefaultAccount()V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    .line 549
    :cond_0
    return-void
.end method

.method private findFirstDataId(JLjava/lang/String;)J
    .locals 9
    .parameter "rawContactId"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 1510
    const-wide/16 v7, -0x1

    .line 1511
    .local v7, dataId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1516
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1520
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1522
    return-wide v7

    .line 1520
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "rawContactId"
    .parameter "contentItemType"

    .prologue
    .line 1501
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v0

    .line 1502
    .local v0, dataId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1503
    const/4 v2, 0x0

    .line 1506
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2098
    const/4 v9, 0x0

    .line 2100
    .local v9, mime:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "kind"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2101
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2103
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2105
    .local v8, kind:I
    packed-switch v8, :pswitch_data_0

    .line 2120
    .end local v8           #kind:I
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2123
    :cond_1
    return-object v9

    .line 2107
    .restart local v8       #kind:I
    :pswitch_0
    :try_start_1
    const-string v9, "vnd.android.cursor.item/email"

    .line 2108
    goto :goto_0

    .line 2111
    :pswitch_1
    const-string v9, "vnd.android.cursor.item/jabber-im"

    .line 2112
    goto :goto_0

    .line 2115
    :pswitch_2
    const-string v9, "vnd.android.cursor.item/postal-address"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2120
    .end local v8           #kind:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filterParam"

    .prologue
    .line 2013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2014
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2015
    .local v0, normalizedName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2017
    const-string v2, "(0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2019
    :cond_0
    const-string v2, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    const-string v2, "*\' AND name_type IN (2,3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    const-string v2, ",4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 3
    .parameter "values"
    .parameter "column"

    .prologue
    .line 849
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private insertContactMethod(JLandroid/content/ContentValues;)J
    .locals 5
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 894
    const-string v2, "kind"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 895
    .local v0, kind:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 896
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Required value: kind"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 899
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 901
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 903
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method private insertExtension(JLandroid/content/ContentValues;)J
    .locals 4
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 909
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 910
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_extensions"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 914
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 915
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroup(Landroid/content/ContentValues;)J
    .locals 4
    .parameter "values"

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 921
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_type"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 927
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroupMembership(JJ)J
    .locals 4
    .parameter "rawContactId"
    .parameter "groupId"

    .prologue
    .line 931
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 933
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 935
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 937
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 938
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertOrganization(Landroid/content/ContentValues;)J
    .locals 4
    .parameter "values"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 876
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    const-string v3, "person"

    invoke-static {v1, v2, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 879
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 881
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertPeople(Landroid/content/ContentValues;)J
    .locals 6
    .parameter "values"

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 859
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 860
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 862
    .local v1, rawContactId:J
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 866
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 871
    :cond_1
    return-wide v1
.end method

.method private insertPhone(JLandroid/content/ContentValues;)J
    .locals 4
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 885
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 886
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 888
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 890
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private onChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2045
    return-void
.end method

.method private parseContactMethodValues(ILandroid/content/ContentValues;)V
    .locals 7
    .parameter "kind"
    .parameter "values"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1436
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1439
    packed-switch p1, :pswitch_data_0

    .line 1469
    :goto_0
    return-void

    .line 1441
    :pswitch_0
    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1449
    :pswitch_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1450
    .local v6, protocol:Ljava/lang/String;
    const-string v0, "pre:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data5"

    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1457
    :cond_0
    :goto_1
    const-string v2, "vnd.android.cursor.item/im"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_1
    const-string v0, "custom:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data5"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1454
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data6"

    const/4 v2, 0x7

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1462
    .end local v6           #protocol:Ljava/lang/String;
    :pswitch_2
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseExtensionValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "value"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private parseGroupValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1485
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "notes"

    const-string v2, "notes"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private parseOrganizationValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1396
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "company"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    const-string v2, "title"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method private parsePeopleValues(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 1354
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1355
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1356
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1358
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "custom_ringtone"

    const-string v4, "custom_ringtone"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1360
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "send_to_voicemail"

    const-string v4, "send_to_voicemail"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "last_time_contacted"

    const-string v4, "last_time_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1364
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "times_contacted"

    const-string v4, "times_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "starred"

    const-string v4, "starred"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1368
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 1369
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_type"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "name"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1377
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1378
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, phoneticName:Ljava/lang/String;
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1380
    .local v0, parsedName:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data7"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data8"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data9"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    .end local v0           #parsedName:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v1           #phoneticName:Ljava/lang/String;
    :cond_2
    const-string v2, "notes"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1388
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "notes"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1391
    :cond_3
    return-void
.end method

.method private parsePhoneValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1417
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "number"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method private updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "match"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 981
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 982
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 983
    const/4 v8, 0x0

    .line 996
    :goto_0
    return v8

    .line 986
    :cond_0
    const/4 v8, 0x0

    .line 988
    .local v8, count:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 990
    .local v9, id:J
    invoke-virtual {p0, p2, v9, v10, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->update(IJLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    .line 991
    goto :goto_1

    .line 993
    .end local v9           #id:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateContactMethods(JLandroid/content/ContentValues;)I
    .locals 9
    .parameter "dataId"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 1102
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1105
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1111
    .local v2, mimetype_id:J
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 1112
    const/4 v1, 0x1

    .line 1123
    .local v1, kind:I
    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 1125
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .end local v1           #kind:I
    .end local v2           #mimetype_id:J
    :cond_0
    :goto_1
    return v4

    .line 1106
    :catch_0
    move-exception v0

    .line 1108
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_1

    .line 1113
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v2       #mimetype_id:J
    :cond_1
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 1114
    const/4 v1, 0x3

    .restart local v1       #kind:I
    goto :goto_0

    .line 1115
    .end local v1           #kind:I
    :cond_2
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 1116
    const/4 v1, 0x2

    .restart local v1       #kind:I
    goto :goto_0
.end method

.method private updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 1144
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1145
    .local v0, rawContactId:J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    .line 1146
    return v3
.end method

.method private updateContactTime(JLandroid/content/ContentValues;)V
    .locals 9
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1151
    const-string v5, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1152
    const-string v5, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1158
    .local v2, lastTimeContacted:J
    :goto_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1159
    .local v0, contactId:J
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1160
    .local v4, mDb:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1161
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 1162
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1163
    const-string v5, "UPDATE contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1166
    const-string v5, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    :cond_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1169
    const-string v5, "UPDATE raw_contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1172
    const-string v5, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    return-void

    .line 1154
    .end local v0           #contactId:J
    .end local v2           #lastTimeContacted:J
    .end local v4           #mDb:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .restart local v2       #lastTimeContacted:J
    goto :goto_0
.end method

.method private updateExtensions(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1130
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 1132
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateGroups(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "groupId"
    .parameter "values"

    .prologue
    .line 1137
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 1139
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLegacyPhotoData(JJLandroid/content/ContentValues;)V
    .locals 6
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1230
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    const-string v3, "local_version"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data3"

    const-string v3, "download_required"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1234
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data4"

    const-string v3, "exists_on_server"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const-string v3, "sync_error"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/photo_v1_extras\' AND raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1243
    .local v0, updated:I
    if-nez v0, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo_v1_extras"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1249
    :cond_0
    return-void
.end method

.method private updateOrganizations(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1086
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 1088
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePeople(JLandroid/content/ContentValues;)I
    .locals 8
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 1048
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 1050
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1053
    .local v0, count:I
    if-nez v0, :cond_1

    .line 1054
    const/4 v0, 0x0

    .line 1082
    .end local v0           #count:I
    :cond_0
    :goto_0
    return v0

    .line 1057
    .restart local v0       #count:I
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1059
    .local v1, dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 1060
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1067
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1068
    const-string v2, "vnd.android.cursor.item/note"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1069
    .restart local v1       #dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_5

    .line 1070
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1077
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_3
    :goto_2
    const-string v2, "last_time_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "times_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 1062
    .restart local v1       #dataUri:Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1063
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 1072
    :cond_5
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1073
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method private updatePhones(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1093
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 1095
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePhoto(JLandroid/content/ContentValues;)I
    .locals 9
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1181
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v3

    .line 1183
    .local v3, dataId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1184
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1185
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data15"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1187
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1190
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1191
    .local v8, dataUri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1192
    const/4 v7, 0x1

    .local v7, count:I
    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 1198
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    .line 1200
    return v7

    .line 1194
    .end local v7           #count:I
    .end local v8           #dataUri:Landroid/net/Uri;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1195
    .restart local v8       #dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v1, v2, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .restart local v7       #count:I
    goto :goto_0
.end method

.method private updatePhotoByDataId(JLandroid/content/ContentValues;)I
    .locals 10
    .parameter "dataId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    .line 1205
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1215
    .local v1, rawContactId:J
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1217
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1218
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "data15"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1219
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v5, v9}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v6           #bytes:[B
    :cond_0
    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 1223
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    move v0, v8

    .line 1225
    .end local v1           #rawContactId:J
    :goto_0
    return v0

    .line 1210
    :catch_0
    move-exception v7

    .line 1212
    .local v7, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "db"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1292
    const-string v3, "key"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1294
    :cond_0
    const-string v3, "v1_settings"

    const-string v4, "_sync_account IS NULL AND key=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1299
    :goto_0
    const-string v3, "v1_settings"

    const-string v4, "key"

    invoke-virtual {p1, v3, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1301
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 1302
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error updating settings with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1296
    .end local v1           #rowId:J
    :cond_1
    const-string v3, "v1_settings"

    const-string v4, "_sync_account=? AND _sync_account_type=? AND key=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1304
    .restart local v1       #rowId:J
    :cond_2
    return-void
.end method

.method private updateSettings(Landroid/content/ContentValues;)I
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x1

    .line 1252
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1253
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "_sync_account"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, accountName:Ljava/lang/String;
    const-string v7, "_sync_account_type"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    .local v1, accountType:Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    .local v4, key:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1258
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "you must specify the key when updating settings"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1260
    :cond_0
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1261
    const-string v7, "syncEverything"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1262
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1263
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "should_sync"

    const-string v9, "value"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1269
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v10

    .line 1270
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v5, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 1279
    .local v5, selection:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1281
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1282
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_name"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_type"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1287
    .end local v2           #count:I
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_1
    return v10

    .line 1274
    :cond_2
    const/4 v6, 0x0

    .line 1275
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    const-string v5, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    .restart local v5       #selection:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected appendRawContactsAccount(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 1936
    const-string v0, "account_name IS NOT NULL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    const-string v0, " AND ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    const-string v0, "account_type<>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    const-string v0, "com.anddroid.contacts.sim"

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1940
    const-string v0, " ) "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    return-void
.end method

.method public copySettingsToLegacySettings()V
    .locals 8

    .prologue
    .line 1333
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1334
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT account_name,account_type,should_sync FROM settings LEFT OUTER JOIN v1_settings ON (account_name=_sync_account AND account_type=_sync_account_type AND data_set IS NULL AND key=\'syncEverything\') WHERE should_sync<>value"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1336
    .local v2, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1337
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1339
    .local v1, accountType:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1340
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1341
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account_type"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "key"

    const-string v7, "syncEverything"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "value"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v0, v1, v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1349
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1351
    return-void
.end method

.method public delete(Landroid/net/Uri;IJ)I
    .locals 7
    .parameter "uri"
    .parameter "match"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 1551
    const/4 v6, 0x0

    .line 1552
    .local v6, count:I
    packed-switch p2, :pswitch_data_0

    .line 1600
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v6

    .line 1603
    :goto_0
    return v6

    .line 1559
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1560
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    goto :goto_0

    .line 1566
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1567
    goto :goto_0

    .line 1571
    :pswitch_4
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1572
    goto :goto_0

    .line 1576
    :pswitch_5
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1577
    goto :goto_0

    .line 1581
    :pswitch_6
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1582
    goto :goto_0

    .line 1586
    :pswitch_7
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1587
    goto :goto_0

    .line 1591
    :pswitch_8
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1592
    goto :goto_0

    .line 1596
    :pswitch_9
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v6

    .line 1597
    goto :goto_0

    .line 1552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1527
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 1528
    .local v11, match:I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    const/16 v0, 0x2c

    if-ne v11, v0, :cond_1

    .line 1529
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_1
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1533
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 1547
    :goto_0
    return v8

    .line 1537
    :cond_2
    const/4 v8, 0x0

    .line 1539
    .local v8, count:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1541
    .local v9, id:J
    invoke-virtual {p0, p1, v11, v9, v10}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    .line 1542
    goto :goto_1

    .line 1544
    .end local v9           #id:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 2048
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2049
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 2093
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2052
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/contact_extensions"

    .line 2091
    :goto_0
    return-object v1

    .line 2055
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/contact_extensions"

    goto :goto_0

    .line 2057
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/person"

    goto :goto_0

    .line 2059
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/person"

    goto :goto_0

    .line 2061
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2063
    :pswitch_6
    const-string v1, "vnd.android.cursor.item/phone"

    goto :goto_0

    .line 2065
    :pswitch_7
    const-string v1, "vnd.android.cursor.dir/contact-methods"

    goto :goto_0

    .line 2067
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2069
    :pswitch_9
    const-string v1, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2071
    :pswitch_a
    const-string v1, "vnd.android.cursor.item/phone"

    goto :goto_0

    .line 2073
    :pswitch_b
    const-string v1, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2075
    :pswitch_c
    const-string v1, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2077
    :pswitch_d
    const-string v1, "vnd.android.cursor.dir/photo"

    goto :goto_0

    .line 2079
    :pswitch_e
    const-string v1, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2081
    :pswitch_f
    const-string v1, "vnd.android.cursor.dir/contact-methods"

    goto :goto_0

    .line 2083
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2085
    :pswitch_11
    const-string v1, "vnd.android.cursor.dir/organizations"

    goto :goto_0

    .line 2087
    :pswitch_12
    const-string v1, "vnd.android.cursor.item/organization"

    goto :goto_0

    .line 2089
    :pswitch_13
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 2091
    :pswitch_14
    const-string v1, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    .line 778
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 779
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 780
    .local v4, match:I
    const-wide/16 v2, 0x0

    .line 781
    .local v2, id:J
    packed-switch v4, :pswitch_data_0

    .line 836
    :pswitch_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v9, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 783
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPeople(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 839
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 840
    const/4 v7, 0x0

    .line 845
    :goto_1
    return-object v7

    .line 787
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertOrganization(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 788
    goto :goto_0

    .line 791
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 792
    .local v5, rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 793
    goto :goto_0

    .line 797
    .end local v5           #rawContactId:J
    :pswitch_4
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 798
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 799
    goto :goto_0

    .line 803
    .end local v5           #rawContactId:J
    :pswitch_5
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 805
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 806
    goto :goto_0

    .line 810
    .end local v5           #rawContactId:J
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 811
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 812
    goto :goto_0

    .line 816
    .end local v5           #rawContactId:J
    :pswitch_7
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 818
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertExtension(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 819
    goto :goto_0

    .line 823
    .end local v5           #rawContactId:J
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 824
    goto :goto_0

    .line 827
    :pswitch_9
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 829
    .restart local v5       #rawContactId:J
    const-string v8, "group_id"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 831
    .local v0, groupId:J
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroupMembership(JJ)J

    move-result-wide v2

    .line 832
    goto :goto_0

    .line 843
    .end local v0           #groupId:J
    .end local v5           #rawContactId:J
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 844
    .local v7, result:Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->onChange(Landroid/net/Uri;)V

    goto :goto_1

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 1608
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1611
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1612
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v8, 0x0

    .line 1614
    .local v8, groupBy:Ljava/lang/String;
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 1615
    .local v17, match:I
    packed-switch v17, :pswitch_data_0

    .line 1914
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1617
    :pswitch_1
    const-string v5, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1618
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1619
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1918
    :cond_0
    :goto_0
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1920
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 1921
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v12, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1924
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #groupBy:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v12

    .line 1624
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #groupBy:Ljava/lang/String;
    :pswitch_2
    const-string v5, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1625
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1626
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1627
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1628
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1632
    :pswitch_3
    const-string v5, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1633
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1634
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1635
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1636
    .local v14, filterParam:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND _id IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/providers/contacts/LegacyApiSupport;->getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1642
    .end local v14           #filterParam:Ljava/lang/String;
    :pswitch_4
    const-string v5, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1643
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1645
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1646
    .local v15, group:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1650
    .end local v15           #group:Ljava/lang/String;
    :pswitch_5
    const-string v5, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1651
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1652
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1654
    .local v18, systemId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1658
    .end local v18           #systemId:Ljava/lang/String;
    :pswitch_6
    const-string v5, "view_v1_organizations organizations"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1659
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1660
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1664
    :pswitch_7
    const-string v5, "view_v1_organizations organizations"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1665
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1666
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1667
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1672
    :pswitch_8
    const-string v5, "view_v1_organizations organizations"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1673
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1674
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1675
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1676
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1680
    :pswitch_9
    const-string v5, "view_v1_organizations organizations"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1681
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1682
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1683
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1684
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1685
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1686
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1690
    :pswitch_a
    const-string v5, "view_v1_contact_methods contact_methods"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1691
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1692
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1696
    :pswitch_b
    const-string v5, "view_v1_contact_methods contact_methods"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1697
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1698
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1699
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1704
    :pswitch_c
    const-string v5, "view_v1_contact_methods contact_methods"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1705
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1706
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1707
    const-string v5, " AND kind=1"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1712
    :pswitch_d
    const-string v5, "view_v1_contact_methods contact_methods"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1713
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1714
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1715
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1716
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1717
    const-string v5, " AND kind IS NOT NULL"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1721
    :pswitch_e
    const-string v5, "view_v1_contact_methods contact_methods"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1722
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1723
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1724
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1725
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1726
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1727
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1728
    const-string v5, " AND kind IS NOT NULL"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1732
    :pswitch_f
    const-string v5, "view_v1_phones phones"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1733
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1734
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1738
    :pswitch_10
    const-string v5, "view_v1_phones phones"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1739
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1740
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1741
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1742
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1746
    :pswitch_11
    const-string v5, "view_v1_phones phones"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1747
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1748
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1749
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1750
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 1751
    .restart local v14       #filterParam:Ljava/lang/String;
    const-string v5, " AND person ="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v14}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1753
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_0

    .line 1758
    .end local v14           #filterParam:Ljava/lang/String;
    :pswitch_12
    const-string v5, "view_v1_phones phones"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1759
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1760
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1761
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1762
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1766
    :pswitch_13
    const-string v5, "view_v1_phones phones"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1767
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1768
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1769
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1770
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1771
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1772
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1776
    :pswitch_14
    const-string v5, "view_v1_extensions extensions"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1777
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1778
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1782
    :pswitch_15
    const-string v5, "view_v1_extensions extensions"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1783
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1784
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1785
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1790
    :pswitch_16
    const-string v5, "view_v1_extensions extensions"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1791
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1792
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1793
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1794
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1798
    :pswitch_17
    const-string v5, "view_v1_extensions extensions"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1799
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1800
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1801
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1802
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1803
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1804
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1808
    :pswitch_18
    const-string v5, "view_v1_groups groups"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1809
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1810
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1814
    :pswitch_19
    const-string v5, "view_v1_groups groups"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1815
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1816
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1817
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1818
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1822
    :pswitch_1a
    const-string v5, "view_v1_group_membership groupmembership"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1823
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1824
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1828
    :pswitch_1b
    const-string v5, "view_v1_group_membership groupmembership"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1829
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1830
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1831
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1836
    :pswitch_1c
    const-string v5, "view_v1_group_membership groupmembership"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1837
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1838
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1839
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1844
    :pswitch_1d
    const-string v5, "view_v1_group_membership groupmembership"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1845
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1846
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1847
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1848
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1849
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1850
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1854
    :pswitch_1e
    const-string v5, "view_v1_photos photos"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1855
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1856
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1857
    const-string v5, " AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1858
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1859
    const-string p6, "1"

    .line 1860
    goto/16 :goto_0

    .line 1863
    :pswitch_1f
    const-string v5, "view_v1_photos photos"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1864
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1865
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1869
    :pswitch_20
    const-string v5, "view_v1_photos photos"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1870
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1871
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1872
    const-string v5, " AND _id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1873
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1877
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v5, v4, v0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_1

    .line 1881
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 1882
    .local v16, lookupKey:Ljava/lang/String;
    const-string v5, "filter"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1883
    .local v13, filter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v5, v4, v0, v1, v13}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_1

    .line 1888
    .end local v13           #filter:Ljava/lang/String;
    .end local v16           #lookupKey:Ljava/lang/String;
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #groupBy:Ljava/lang/String;
    move-result-object v12

    goto/16 :goto_1

    .line 1892
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #groupBy:Ljava/lang/String;
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #groupBy:Ljava/lang/String;
    move-result-object v12

    goto/16 :goto_1

    .line 1896
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #groupBy:Ljava/lang/String;
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #groupBy:Ljava/lang/String;
    move-result-object v12

    goto/16 :goto_1

    .line 1900
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #groupBy:Ljava/lang/String;
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v5, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #groupBy:Ljava/lang/String;
    move-result-object v12

    goto/16 :goto_1

    .line 1906
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #groupBy:Ljava/lang/String;
    :pswitch_27
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1909
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/LegacyApiSupport;->copySettingsToLegacySettings()V

    .line 1910
    const-string v5, "v1_settings"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_22
        :pswitch_11
        :pswitch_23
        :pswitch_26
        :pswitch_24
        :pswitch_25
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method

.method public update(IJLandroid/content/ContentValues;)I
    .locals 1
    .parameter "match"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 1000
    const/4 v0, 0x0

    .line 1001
    .local v0, count:I
    packed-switch p1, :pswitch_data_0

    .line 1044
    :goto_0
    :pswitch_0
    return v0

    .line 1004
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePeople(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1005
    goto :goto_0

    .line 1010
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateOrganizations(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1011
    goto :goto_0

    .line 1016
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhones(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1017
    goto :goto_0

    .line 1022
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactMethods(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1023
    goto :goto_0

    .line 1028
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateExtensions(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1029
    goto :goto_0

    .line 1034
    :pswitch_6
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateGroups(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1035
    goto :goto_0

    .line 1040
    :pswitch_7
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhotoByDataId(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 1001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 944
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 945
    .local v2, match:I
    const/4 v6, 0x0

    .line 946
    .local v6, count:I
    sparse-switch v2, :sswitch_data_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 968
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 972
    :goto_0
    if-lez v6, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    move v0, v6

    .line 976
    :goto_1
    return v0

    .line 948
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v6

    .line 949
    goto :goto_0

    .line 953
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 954
    .local v7, rawContactId:J
    invoke-direct {p0, v7, v8, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_1

    .line 958
    .end local v7           #rawContactId:J
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSettings(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_1

    .line 964
    :sswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x18 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method
