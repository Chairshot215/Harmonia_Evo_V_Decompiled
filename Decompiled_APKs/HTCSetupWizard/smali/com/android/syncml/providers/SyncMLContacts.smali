.class public Lcom/android/syncml/providers/SyncMLContacts;
.super Ljava/lang/Object;
.source "SyncMLContacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/android/syncml/providers/SyncMLChangeLogColumns;


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "AT&T Address Book"

.field public static final ACCOUNT_NAME_FOR_DB:Ljava/lang/String; = "pcsc"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.pcsc"

.field public static final ACTION_CONTACTS_UPDATED:Ljava/lang/String; = "com.android.syncml.providers.CONTACTS_UPDATED"

.field public static final CLIENT_DB_URI:Ljava/lang/String; = "Contacts"

.field public static final PEOPLE_CHANGED_SELECTION:Ljava/lang/String; = "_modify > 0"

.field public static final PEOPLE_CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final PEOPLE_INFO_CITY_IDX:I = 0x7

.field public static final PEOPLE_INFO_COUNTRY_IDX:I = 0xa

.field public static final PEOPLE_INFO_DATA_IDX:I = 0x1

.field public static final PEOPLE_INFO_EXTENDED_ADDRESS_IDX:I = 0x6

.field public static final PEOPLE_INFO_FIRSTNAME:I = 0x2

.field public static final PEOPLE_INFO_IM_CUSTOM_PROTOCOL_IDX:I = 0x6

.field public static final PEOPLE_INFO_IM_PROTOCOL_TYPE_IDX:I = 0x5

.field public static final PEOPLE_INFO_LABEL_IDX:I = 0x3

.field public static final PEOPLE_INFO_LASTNAME:I = 0x3

.field public static final PEOPLE_INFO_MIMETYPE_IDX:I = 0x0

.field public static final PEOPLE_INFO_PHOTO_IDX:I = 0xb

.field public static final PEOPLE_INFO_POBOX_IDX:I = 0x5

.field public static final PEOPLE_INFO_POSTAL_CODE_IDX:I = 0x9

.field public static final PEOPLE_INFO_STATE_IDX:I = 0x8

.field public static final PEOPLE_INFO_STREET_IDX:I = 0x4

.field public static final PEOPLE_INFO_TITLE_IDX:I = 0x4

.field public static final PEOPLE_INFO_TYPE_IDX:I = 0x2

.field public static final PEOPLE_INFO_XIMPP_PROTOCOL_IDX:I = 0x6

.field public static final PEOPLE_SYNC_ID:Ljava/lang/String; = "_sync_id"

.field public static final PHOTO_TYPE:Ljava/lang/String; = "photo_type"

.field public static final SYNCML_GROUP_TRACKING_TABLE_URI:Landroid/net/Uri; = null

.field public static final SYNCML_PEOPLE_CHANGED_COLUMN_ISADD_IDX:I = 0x1

.field public static final SYNCML_PEOPLE_CHANGED_COLUMN_PERSONID_IDX:I = 0x0

.field public static final SYNCML_PEOPLE_CHANGED_PROJECTION:[Ljava/lang/String; = null

.field public static final SYNCML_TRACKING_ADD:Ljava/lang/String; = "_add"

.field public static final SYNCML_TRACKING_DELETE:Ljava/lang/String; = "_delete"

.field public static final SYNCML_TRACKING_ID:Ljava/lang/String; = "_id"

.field public static final SYNCML_TRACKING_MODIFY:Ljava/lang/String; = "_modify"

.field public static final SYNCML_TRACKING_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_add"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/syncml/providers/SyncMLContacts;->SYNCML_PEOPLE_CHANGED_PROJECTION:[Ljava/lang/String;

    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mimetype"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/syncml/providers/SyncMLContacts;->PEOPLE_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 70
    const-string v0, "content://com.android.contacts/aab_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncMLContacts;->SYNCML_TRACKING_TABLE_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://com.android.contacts/aabGroups_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncMLContacts;->SYNCML_GROUP_TRACKING_TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
