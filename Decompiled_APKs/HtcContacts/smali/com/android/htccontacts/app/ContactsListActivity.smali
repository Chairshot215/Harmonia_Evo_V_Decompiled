.class public Lcom/android/htccontacts/app/ContactsListActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;,
        Lcom/android/htccontacts/app/ContactsListActivity$EditTextWatcher;,
        Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;,
        Lcom/android/htccontacts/app/ContactsListActivity$HeaderListItemCache;,
        Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;,
        Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;,
        Lcom/android/htccontacts/app/ContactsListActivity$FirstResumeIdleHandler;
    }
.end annotation


# static fields
.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

.field protected static final CLAUSE_ONLY_PHONES:Ljava/lang/String; = "has_phone_number=1"

.field protected static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field private static final CONTACTS_ID:I = 0x3e9

.field public static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String; = null

.field static final CONTACTS_SUMMARY_PROJECTION_FROM_PHONE:[Ljava/lang/String; = null

.field public static final CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String; = null

.field public static final EXTRA_AGGREGATE_ID:Ljava/lang/String; = "com.android.contacts.action.AGGREGATE_ID"

.field public static final EXT_ACCOUNT_NAME:Ljava/lang/String; = "ext_account_name"

.field protected static final FAST_QUERY_TOKEN:I = 0x3e9

.field protected static final FULL_QUERY_TOKEN:I = 0x3ea

.field public static final JOIN_AGGREGATE:Ljava/lang/String; = "com.android.contacts.action.JOIN_AGGREGATE"

.field protected static final KEY_PICKER_MODE:Ljava/lang/String; = "picker_mode"

.field static final LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String; = null

.field static final LEGACY_PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final LEGACY_POSTALS_PROJECTION:[Ljava/lang/String; = null

.field static final MAX_SUGGESTIONS:I = 0x4

.field protected static final MODE_CUSTOM:I = 0x8

.field protected static final MODE_DEFAULT:I = 0x8000004

.field protected static final MODE_FREQUENT:I = 0x800001e

.field static final MODE_GROUP:I = 0x8000039

.field protected static final MODE_INSERT_OR_EDIT_CONTACT:I = -0x6fffffd3

.field static final MODE_JOIN_CONTACT:I = -0x33ffffba

.field protected static final MODE_LEGACY_PICK_OR_CREATE_PERSON:I = -0x67ffffd4

.field protected static final MODE_LEGACY_PICK_PERSON:I = -0x77ffffd5

.field protected static final MODE_LEGACY_PICK_PHONE:I = -0x1fffffcd

.field protected static final MODE_LEGACY_PICK_POSTAL:I = -0x1fffffc8

.field protected static final MODE_MASK_CREATE_NEW:I = 0x10000000

.field protected static final MODE_MASK_DISABLE_QUIKCCONTACT:I = 0x1000000

.field protected static final MODE_MASK_NO_DATA:I = 0x4000000

.field protected static final MODE_MASK_NO_FILTER:I = 0x20000000

.field protected static final MODE_MASK_NO_PRESENCE:I = 0x40000000

.field protected static final MODE_MASK_PICKER:I = -0x80000000

.field protected static final MODE_MASK_SHOW_CALL_BUTTON:I = 0x2000000

.field protected static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field protected static final MODE_PICK_CONTACT:I = -0x77ffffd8

.field protected static final MODE_PICK_OR_CREATE_CONTACT:I = -0x67ffffd6

.field protected static final MODE_PICK_PHONE:I = -0x3fffffce

.field protected static final MODE_PICK_POSTAL:I = -0x3fffffc9

.field protected static final MODE_QUERY:I = 0x3c

.field protected static final MODE_QUERY_PICK_TO_VIEW:I = -0x5fffffbf

.field protected static final MODE_STARRED:I = 0x8000014

.field protected static final MODE_STREQUENT:I = 0xa000023

.field protected static final MODE_UNKNOWN:I = 0x0

.field static final NAME_COLUMN:Ljava/lang/String; = "display_name"

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_CONTACT_ID_COLUMN_INDEX:I = 0x5

.field static final PHONE_CONTACT_LOOKUP_COLUMN_INDEX:I = 0x6

.field static final PHONE_CONTACT_TYPE_COLUMN_INDEX:I = 0x7

.field static final PHONE_DISPLAY_NAME_COLUMN_INDEX:I = 0x4

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LABEL_COLUMN_INDEX:I = 0x2

.field static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field static final PHONE_TYPE_COLUMN_INDEX:I = 0x1

.field static final POSTALS_PROJECTION:[Ljava/lang/String; = null

.field static final POSTAL_ADDRESS_COLUMN_INDEX:I = 0x3

.field static final POSTAL_DISPLAY_NAME_COLUMN_INDEX:I = 0x4

.field static final POSTAL_ID_COLUMN_INDEX:I = 0x0

.field static final POSTAL_LABEL_COLUMN_INDEX:I = 0x2

.field static final POSTAL_TYPE_COLUMN_INDEX:I = 0x1

.field private static final QUERY_MODE_MAILTO:I = 0x1

.field private static final QUERY_MODE_MESSAGE:I = 0x3

.field private static final QUERY_MODE_NONE:I = -0x1

.field private static final QUERY_MODE_TEL:I = 0x2

.field protected static final QUERY_TOKEN:I = 0x3e8

.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field protected static final RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String; = null

.field protected static final START_INDICATOR_MSG:I = 0x7d0

.field protected static final STRONG_QUERY_PROJECTION:[Ljava/lang/String; = null

.field protected static final SUBACTIVITY_DISPLAY_GROUP:I = 0x3

.field protected static final SUBACTIVITY_NEW_CONTACT:I = 0x1

.field protected static final SUBACTIVITY_VIEW_CONTACT:I = 0x2

.field protected static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field protected static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactsListActivity"

.field protected static mStatusIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContactsIdMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final FASTSCROLL_LIMIT:I

.field protected mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

.field protected mContactListHandler:Landroid/os/Handler;

.field protected mContextMenuBundle:Landroid/os/Bundle;

.field protected mDisplayOnlyPhones:Z

.field protected mEditTextWatcher:Landroid/text/TextWatcher;

.field protected mFavoriteChangeReceiver:Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

.field protected mFilterContactByAccount:Z

.field protected mFinish:Z

.field private mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mHandler:Landroid/os/Handler;

.field protected mHasFirstQueryCompleted:Z

.field protected mHeaderCreateNewItemExist:Z

.field protected mImPresenceArray:Lcom/android/htccontacts/util/SparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/htccontacts/util/SparseLongArray",
            "<",
            "Lcom/android/htccontacts/widget/ImPresence;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

.field protected mIndicatorArray:Lcom/android/htccontacts/util/SparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/htccontacts/util/SparseLongArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIndicatorReqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/PersonIndicatorRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialFilter:Ljava/lang/String;

.field protected mInputEditor:Landroid/widget/EditText;

.field protected mIsDirty:Z

.field protected mIsFirstQuery:Z

.field protected mIsFirstResuming:Z

.field protected mIsResumeRequery:Z

.field protected mJustCreated:Z

.field protected mMode:I

.field protected mQuery:Ljava/lang/String;

.field protected mQueryAggregateId:J

.field protected mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

.field protected mQueryMode:I

.field private mRefCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mShortcutAction:Ljava/lang/String;

.field protected mStatusArray:Lcom/android/htccontacts/util/SparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/htccontacts/util/SparseLongArray",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSyncEnabled:Z

.field private final sGroupBySortKey:Z

.field private final sOrderBySortKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    :goto_0
    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    :goto_1
    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    .line 349
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

    .line 361
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_PHONE:[Ljava/lang/String;

    .line 373
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 383
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "mode"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 406
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 417
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

    .line 433
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->POSTALS_PROJECTION:[Ljava/lang/String;

    .line 440
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v5

    const-string v1, "data"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

    .line 447
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 453
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "account_name"

    aput-object v1, v0, v6

    const-string v1, "account_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    :goto_2
    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->STRONG_QUERY_PROJECTION:[Ljava/lang/String;

    .line 547
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    .line 548
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 549
    return-void

    .line 272
    :cond_0
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 309
    :cond_1
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 473
    :cond_2
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 142
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->FASTSCROLL_LIMIT:I

    .line 167
    const v0, 0x8000004

    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 526
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    .line 551
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mHandler:Landroid/os/Handler;

    .line 561
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    .line 575
    iput-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFinish:Z

    .line 577
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    .line 578
    iput-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mHasFirstQueryCompleted:Z

    .line 579
    iput-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    .line 580
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstResuming:Z

    .line 582
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->sGroupBySortKey:Z

    .line 583
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->sOrderBySortKey:Z

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mRefCacheList:Ljava/util/ArrayList;

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    .line 603
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/ContactsListActivity$1;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContactListHandler:Landroid/os/Handler;

    .line 3740
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/app/ContactsListActivity;)Lcom/android/htccontacts/indicator/IndicatorProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/app/ContactsListActivity;JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity;->putStatusArray(JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/app/ContactsListActivity;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity;->putIndicatorArray(JI)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/app/ContactsListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/app/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mRefCacheList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 3770
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private clearCallbackOfCacheDrawable()V
    .locals 4

    .prologue
    .line 3887
    sget-object v3, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 3888
    sget-object v3, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3889
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3890
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3891
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 3895
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filter"

    .prologue
    .line 3061
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3062
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-wide v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryAggregateId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3063
    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3065
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3067
    :cond_0
    const-string v1, "limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3068
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "filter"

    .prologue
    .line 3053
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3054
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3056
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private initFilterBox()V
    .locals 2

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    const v1, 0x7f0a0139

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3193
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3196
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3197
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3198
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3202
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->obtainTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 3203
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 3204
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3207
    :cond_2
    return-void
.end method

.method private loadPrefs()V
    .locals 3

    .prologue
    .line 1279
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1280
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "Display contacts filter by account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFilterContactByAccount:Z

    .line 1282
    return-void
.end method

.method private putIndicatorArray(JI)V
    .locals 2
    .parameter "id"
    .parameter "count"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/htccontacts/util/SparseLongArray;->put(JLjava/lang/Object;)V

    .line 1271
    return-void
.end method

.method private putPresenceArray(JIIZ)V
    .locals 2
    .parameter "id"
    .parameter "status"
    .parameter "chatCapability"
    .parameter "hasIm"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mImPresenceArray:Lcom/android/htccontacts/util/SparseLongArray;

    new-instance v1, Lcom/android/htccontacts/widget/ImPresence;

    invoke-direct {v1, p3, p4, p5}, Lcom/android/htccontacts/widget/ImPresence;-><init>(IIZ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/htccontacts/util/SparseLongArray;->put(JLjava/lang/Object;)V

    .line 1275
    return-void
.end method

.method private putStatusArray(JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;)V
    .locals 2
    .parameter "id"
    .parameter "status"

    .prologue
    .line 1262
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-virtual {p3}, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/htccontacts/util/SparseLongArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected IsAddItemInSearchLayout()Z
    .locals 1

    .prologue
    .line 3853
    const/4 v0, 0x1

    return v0
.end method

.method protected addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 1207
    :cond_0
    return-void
.end method

.method protected checkMode()Z
    .locals 19

    .prologue
    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 633
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, action:Ljava/lang/String;
    const-string v15, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 636
    const v15, 0x8000004

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 792
    :cond_0
    :goto_0
    const-string v15, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 793
    const v15, -0x33ffffba

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 794
    const-string v15, "com.android.contacts.action.AGGREGATE_ID"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v7, v15, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryAggregateId:J

    .line 795
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryAggregateId:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_21

    .line 796
    const-string v15, "ContactsListActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Intent "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is missing required extra: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "com.android.contacts.action.AGGREGATE_ID"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/app/ContactsListActivity;->setResult(I)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    .line 800
    const/4 v15, 0x1

    .line 806
    :goto_1
    return v15

    .line 648
    :cond_1
    const-string v15, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 649
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 650
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto :goto_0

    .line 651
    :cond_2
    const-string v15, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 652
    const v15, 0x8000014

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto :goto_0

    .line 653
    :cond_3
    const-string v15, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 654
    const v15, 0x800001e

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 655
    :cond_4
    const-string v15, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 656
    const v15, 0xa000023

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 657
    :cond_5
    const-string v15, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 658
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 659
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto/16 :goto_0

    .line 660
    :cond_6
    const-string v15, "android.intent.action.PICK"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 663
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 666
    .local v14, type:Ljava/lang/String;
    const-string v15, "vnd.android.cursor.dir/contact"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 667
    const v15, -0x77ffffd8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 668
    :cond_7
    const-string v15, "vnd.android.cursor.dir/person"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 669
    const v15, -0x77ffffd5

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 670
    :cond_8
    const-string v15, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 671
    const v15, -0x3fffffce

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 672
    :cond_9
    const-string v15, "vnd.android.cursor.dir/phone"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 673
    const v15, -0x1fffffcd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 674
    :cond_a
    const-string v15, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 675
    const v15, -0x3fffffc9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 676
    :cond_b
    const-string v15, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 677
    const v15, -0x1fffffc8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 679
    .end local v14           #type:Ljava/lang/String;
    :cond_c
    const-string v15, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 684
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "alias.DialShortcut"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 685
    const v15, -0x3fffffce

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 686
    const-string v15, "android.intent.action.CALL"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 688
    :cond_d
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "alias.MessageShortcut"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 689
    const v15, -0x3fffffce

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 690
    const-string v15, "android.intent.action.SENDTO"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 693
    :cond_e
    const v15, -0x67ffffd6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 694
    const-string v15, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 697
    :cond_f
    const-string v15, "android.intent.action.GET_CONTENT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 698
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 702
    .restart local v14       #type:Ljava/lang/String;
    const-string v15, "vnd.android.cursor.item/contact"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 703
    const v15, -0x67ffffd6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 704
    :cond_10
    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 705
    const v15, -0x3fffffce

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 706
    :cond_11
    const-string v15, "vnd.android.cursor.item/phone"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 707
    const v15, -0x1fffffcd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 708
    :cond_12
    const-string v15, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 709
    const v15, -0x3fffffc9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 710
    :cond_13
    const-string v15, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 711
    const v15, -0x1fffffc8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 712
    :cond_14
    const-string v15, "vnd.android.cursor.item/person"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 713
    const v15, -0x67ffffd4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 716
    .end local v14           #type:Ljava/lang/String;
    :cond_15
    const-string v15, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 717
    const v15, -0x6fffffd3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_0

    .line 718
    :cond_16
    const-string v15, "android.intent.action.SEARCH"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 720
    const-string v15, "call"

    const-string v16, "action_msg"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 721
    const-string v15, "query"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 722
    .local v12, query:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_17

    .line 723
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.CALL_PRIVILEGED"

    const-string v16, "tel"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v12, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 725
    .local v8, newIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 727
    .end local v8           #newIntent:Landroid/content/Intent;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    .line 728
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 732
    .end local v12           #query:Ljava/lang/String;
    :cond_18
    const-string v15, "email"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 733
    const v15, -0x5fffffbf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 734
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    .line 735
    const-string v15, "email"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto/16 :goto_0

    .line 736
    :cond_19
    const-string v15, "phone"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 737
    const v15, -0x5fffffbf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 738
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    .line 739
    const-string v15, "phone"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto/16 :goto_0

    .line 742
    :cond_1a
    const/16 v15, 0x3c

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "query"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto/16 :goto_0

    .line 752
    :cond_1b
    const-string v15, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 753
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 754
    .local v6, data:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 755
    .local v13, telUri:Landroid/net/Uri;
    sget-object v15, Lcom/android/htccontacts/app/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v15, v6}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    const/16 v16, 0x3e9

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 756
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 757
    .local v3, contactId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v3, v4, v15}, Lcom/android/htccontacts/util/PhoneUtils;->queryPhoneNumbers(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v5

    .line 758
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_1d

    .line 759
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 760
    const-string v15, "data1"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 761
    .local v11, phoneNumberIndex:I
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 762
    .local v10, phoneNumber:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tel:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 764
    .end local v10           #phoneNumber:Ljava/lang/String;
    .end local v11           #phoneNumberIndex:I
    :cond_1c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 769
    .end local v3           #contactId:J
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_1d
    const-string v15, "call"

    const-string v16, "action_msg"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    if-eqz v13, :cond_1e

    .line 770
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v8, v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 774
    .restart local v8       #newIntent:Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    .line 776
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 772
    .end local v8           #newIntent:Landroid/content/Intent;
    :cond_1e
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v8, v15, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v8       #newIntent:Landroid/content/Intent;
    goto :goto_2

    .line 777
    .end local v6           #data:Landroid/net/Uri;
    .end local v8           #newIntent:Landroid/content/Intent;
    .end local v13           #telUri:Landroid/net/Uri;
    :cond_1f
    const-string v15, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 778
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 779
    .restart local v8       #newIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    .line 781
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 782
    .end local v8           #newIntent:Landroid/content/Intent;
    :cond_20
    const-string v15, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 784
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 785
    .local v9, number:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v8

    .line 786
    .restart local v8       #newIntent:Landroid/content/Intent;
    const-string v15, "phone"

    invoke-virtual {v8, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    .line 789
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 806
    .end local v8           #newIntent:Landroid/content/Intent;
    .end local v9           #number:Ljava/lang/String;
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method protected clearFilterText()V
    .locals 2

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2856
    :cond_0
    return-void
.end method

.method protected doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "filter"

    .prologue
    .line 3072
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3074
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v4

    .line 3076
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v7

    .line 3077
    .local v7, baseUri:Landroid/net/Uri;
    const-string v6, "display_name"

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/htc/util/contacts/ContactsUtility;->getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3078
    .local v21, filterWhere:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 3079
    .local v5, commonSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3080
    .local v9, filterSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 3081
    .local v22, isEmpty:Z
    if-eqz v22, :cond_3

    .line 3082
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/app/ContactsListActivity;->isEnableSectionIndexer(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3083
    invoke-static {v7}, Lcom/android/htccontacts/app/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v20, v7

    .line 3086
    .end local v7           #baseUri:Landroid/net/Uri;
    .local v20, baseUri:Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v6, :sswitch_data_0

    .line 3171
    :sswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filtering not allowed in mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3092
    :sswitch_1
    move-object/from16 v3, v20

    .line 3093
    .local v3, uri:Landroid/net/Uri;
    if-nez v22, :cond_0

    .line 3094
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 3101
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .line 3166
    .end local v3           #uri:Landroid/net/Uri;
    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    :goto_1
    return-object v6

    .line 3107
    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v7

    .line 3108
    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    const-string v6, "display_name"

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/htc/util/contacts/ContactsUtility;->getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3109
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v2

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 3114
    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :sswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v13, "starred=1"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v2

    move-object v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    goto :goto_1

    .line 3120
    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :sswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v13, "times_contacted > 0"

    const/4 v14, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "times_contacted DESC, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v2

    move-object v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    goto :goto_1

    .line 3128
    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :sswitch_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3129
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3134
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    goto :goto_1

    .line 3132
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_2

    .line 3138
    .end local v3           #uri:Landroid/net/Uri;
    :sswitch_6
    const-string v6, "display_name"

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/htc/util/contacts/ContactsUtility;->getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3139
    .local v13, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "query"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQuery:Ljava/lang/String;

    .line 3140
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQuery:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v2

    move-object v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3147
    .end local v7           #baseUri:Landroid/net/Uri;
    .end local v13           #selection:Ljava/lang/String;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    .line 3148
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3149
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3151
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3166
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    :sswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id != "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryAggregateId:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v20

    .end local v20           #baseUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    goto/16 :goto_1

    :cond_3
    move-object/from16 v20, v7

    .end local v7           #baseUri:Landroid/net/Uri;
    .restart local v20       #baseUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 3086
    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_1
        -0x77ffffd5 -> :sswitch_2
        -0x6fffffd3 -> :sswitch_1
        -0x67ffffd6 -> :sswitch_1
        -0x67ffffd4 -> :sswitch_2
        -0x3fffffce -> :sswitch_7
        -0x33ffffba -> :sswitch_8
        -0x1fffffcd -> :sswitch_0
        0x8 -> :sswitch_1
        0x3c -> :sswitch_6
        0x8000004 -> :sswitch_1
        0x8000014 -> :sswitch_3
        0x800001e -> :sswitch_4
        0xa000023 -> :sswitch_5
    .end sparse-switch
.end method

.method protected doOnResumeWithourRequery()V
    .locals 0

    .prologue
    .line 1078
    return-void
.end method

.method protected ensureFastScrollEnabled(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    .line 3582
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3623
    :cond_0
    :goto_0
    return-void

    .line 3585
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    .line 3586
    .local v4, listView:Lcom/htc/widget/HtcListView;
    const/4 v3, 0x0

    .line 3587
    .local v3, isFiltering:Z
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 3588
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3589
    .local v1, editable:Landroid/text/Editable;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3590
    const/4 v3, 0x1

    .line 3594
    .end local v1           #editable:Landroid/text/Editable;
    :cond_2
    if-eqz v4, :cond_0

    .line 3595
    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->isFastScrollEnabled()Z

    move-result v2

    .line 3596
    .local v2, isEnable:Z
    move v5, v2

    .line 3598
    .local v5, toEnable:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isFastScrollerEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3599
    if-eqz v3, :cond_4

    .line 3600
    const/4 v5, 0x0

    .line 3614
    :cond_3
    :goto_1
    const-string v6, "ContactsListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setFastScrollEnabled ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 3602
    :cond_4
    const/16 v0, 0x1f40

    .line 3603
    .local v0, counts:I
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3604
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3606
    :cond_5
    const/16 v6, 0x1f40

    if-ge v0, v6, :cond_6

    .line 3607
    const/4 v5, 0x1

    goto :goto_1

    .line 3609
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "filter"

    .prologue
    .line 2902
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2903
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2905
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected getContactSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3044
    const/4 v0, 0x0

    .line 3045
    .local v0, whereClause:Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Contacts;->addClauseOnlyVisible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3046
    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_0

    .line 3047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_phone_number=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3049
    :cond_0
    return-object v0
.end method

.method protected getContactUri(I)Landroid/net/Uri;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 3539
    const/4 v8, -0x1

    if-ne p1, v8, :cond_0

    .line 3540
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Position not in list bounds"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3543
    :cond_0
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v8, v8, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    if-gez v8, :cond_2

    .line 3568
    :cond_1
    :goto_0
    return-object v7

    .line 3546
    :cond_2
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 3547
    .local v4, obj:Ljava/lang/Object;
    instance-of v8, v4, Landroid/database/Cursor;

    if-eqz v8, :cond_1

    move-object v2, v4

    .line 3549
    check-cast v2, Landroid/database/Cursor;

    .line 3550
    .local v2, cursor:Landroid/database/Cursor;
    iget v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v7, :sswitch_data_0

    .line 3559
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v7, v7, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3560
    .local v0, contactId:J
    const/4 v3, 0x0

    .line 3561
    .local v3, lookupKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v7, v7, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    if-ltz v7, :cond_3

    .line 3562
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v7, v7, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3564
    :cond_3
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 3553
    .end local v0           #contactId:J
    .end local v3           #lookupKey:Ljava/lang/String;
    :sswitch_0
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v7, v7, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3554
    .local v5, personId:J
    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 3550
    :sswitch_data_0
    .sparse-switch
        -0x77ffffd5 -> :sswitch_0
        -0x67ffffd4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 621
    const v0, 0x7f030004

    return v0
.end method

.method protected getFilterAccounts()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filterSelection"
    .parameter "commonSelection"

    .prologue
    .line 3176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3177
    const/4 p2, 0x0

    .line 3186
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 3179
    .restart local p2
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3182
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object p2, p1

    .line 3183
    goto :goto_0

    .line 3186
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected getFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2894
    const/4 v0, 0x0

    .line 2895
    .local v0, filterKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2896
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2898
    :cond_0
    return-object v0
.end method

.method protected getInsertContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 3765
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3766
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method protected getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;
    .locals 4
    .parameter "position"

    .prologue
    .line 3687
    const/4 v2, 0x0

    .line 3689
    .local v2, result:Landroid/database/Cursor;
    if-ltz p1, :cond_0

    .line 3690
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3691
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 3692
    .local v1, obj:Ljava/lang/Object;
    instance-of v3, v1, Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 3693
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Landroid/database/Cursor;
    check-cast v2, Landroid/database/Cursor;

    .line 3697
    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    .end local v1           #obj:Ljava/lang/Object;
    .restart local v2       #result:Landroid/database/Cursor;
    :cond_0
    return-object v2
.end method

.method protected getPreContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProjectionForQuery()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2983
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 3036
    :cond_0
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 2985
    :sswitch_0
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    goto :goto_0

    .line 2995
    :sswitch_1
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3004
    :sswitch_2
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3011
    :sswitch_3
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3014
    :sswitch_4
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3017
    :sswitch_5
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3020
    :sswitch_6
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3023
    :sswitch_7
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 3026
    :sswitch_8
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3027
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

    goto :goto_0

    .line 3028
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3029
    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_PHONE:[Ljava/lang/String;

    goto :goto_0

    .line 2983
    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_1
        -0x77ffffd5 -> :sswitch_3
        -0x6fffffd3 -> :sswitch_1
        -0x67ffffd6 -> :sswitch_1
        -0x67ffffd4 -> :sswitch_3
        -0x5fffffbf -> :sswitch_8
        -0x3fffffce -> :sswitch_4
        -0x3fffffc9 -> :sswitch_6
        -0x33ffffba -> :sswitch_1
        -0x1fffffcd -> :sswitch_5
        -0x1fffffc8 -> :sswitch_7
        0x8 -> :sswitch_1
        0x3c -> :sswitch_2
        0x8000004 -> :sswitch_0
        0x8000014 -> :sswitch_2
        0x800001e -> :sswitch_2
        0x8000039 -> :sswitch_1
        0xa000023 -> :sswitch_2
    .end sparse-switch
.end method

.method protected getSelectedUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "position"

    .prologue
    .line 3498
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 3499
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Position not in list bounds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3502
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 3503
    .local v0, id:J
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_0

    .line 3521
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    .line 3506
    :sswitch_0
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 3509
    :sswitch_1
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 3512
    :sswitch_2
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 3515
    :sswitch_3
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 3518
    :sswitch_4
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 3503
    :sswitch_data_0
    .sparse-switch
        -0x77ffffd5 -> :sswitch_0
        -0x67ffffd4 -> :sswitch_0
        -0x3fffffce -> :sswitch_1
        -0x3fffffc9 -> :sswitch_3
        -0x1fffffcd -> :sswitch_2
        -0x1fffffc8 -> :sswitch_4
    .end sparse-switch
.end method

.method protected getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "projectionType"

    .prologue
    .line 2910
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x77ffffd5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x67ffffd4

    if-ne v1, v2, :cond_1

    .line 2912
    :cond_0
    const-string v1, "display_name COLLATE LOCALIZED ASC"

    .line 2920
    :goto_0
    return-object v1

    .line 2915
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2916
    .local v0, isLastFirst:Z
    if-eqz v0, :cond_2

    .line 2917
    const-string v1, "sort_key_alt ASC"

    goto :goto_0

    .line 2920
    :cond_2
    const-string v1, "sort_key ASC"

    goto :goto_0
.end method

.method protected getUriToQuery()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 2929
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2979
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2932
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->loadPrefs()V

    .line 2933
    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFilterContactByAccount:Z

    if-eqz v1, :cond_1

    .line 2935
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2936
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "all_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2937
    goto :goto_0

    .line 2939
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2949
    :sswitch_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2952
    :sswitch_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2957
    :sswitch_3
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2960
    :sswitch_4
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2963
    :sswitch_5
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2966
    :sswitch_6
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2969
    :sswitch_7
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2972
    :sswitch_8
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2973
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2974
    :cond_2
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2975
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2929
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_1
        -0x77ffffd5 -> :sswitch_3
        -0x6fffffd3 -> :sswitch_1
        -0x67ffffd6 -> :sswitch_1
        -0x67ffffd4 -> :sswitch_3
        -0x5fffffbf -> :sswitch_8
        -0x3fffffce -> :sswitch_4
        -0x3fffffc9 -> :sswitch_6
        -0x33ffffba -> :sswitch_1
        -0x1fffffcd -> :sswitch_5
        -0x1fffffc8 -> :sswitch_7
        0x8 -> :sswitch_1
        0x8000004 -> :sswitch_0
        0x8000014 -> :sswitch_1
        0x800001e -> :sswitch_1
        0xa000023 -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleCallKey(I)Z
    .locals 8
    .parameter "position"

    .prologue
    .line 3648
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;

    move-result-object v0

    .line 3649
    .local v0, contactCursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 3650
    .local v3, dialIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 3652
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v6, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3653
    .local v1, contactId:J
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/android/htccontacts/util/PhoneUtils;->getPrimaryPhoneCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v5

    .line 3654
    .local v5, primaryCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    .line 3656
    invoke-static {v0, v5}, Lcom/android/htccontacts/util/PhoneUtils;->generateContactInfoWithNumber(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v4

    .line 3659
    .local v4, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    iget-object v6, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3660
    new-instance v3, Landroid/content/Intent;

    .end local v3           #dialIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    iget-object v7, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3662
    .restart local v3       #dialIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3663
    invoke-static {v3, v4}, Lcom/htc/util/phone/DialUtils;->copyDialExtra(Landroid/content/Intent;Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 3666
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3670
    .end local v1           #contactId:J
    .end local v4           #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .end local v5           #primaryCursor:Landroid/database/Cursor;
    :cond_1
    if-eqz v3, :cond_2

    .line 3671
    invoke-static {v3}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    move-result v6

    .line 3673
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected handleFilterUIAndTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3809
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 3810
    .local v1, titleBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    if-eqz v1, :cond_0

    .line 3811
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar(I)V

    .line 3813
    :cond_0
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 3814
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v0, :cond_1

    .line 3815
    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 3816
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    .line 3817
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 3819
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 3822
    :cond_1
    return-void
.end method

.method protected isEnableSectionIndexer(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 3826
    const/4 v0, 0x0

    .line 3827
    .local v0, enable:Z
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 3849
    :goto_0
    return v0

    .line 3829
    :sswitch_0
    const/4 v0, 0x1

    .line 3830
    goto :goto_0

    .line 3846
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3827
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_1
        -0x77ffffd5 -> :sswitch_1
        -0x6fffffd3 -> :sswitch_1
        -0x67ffffd6 -> :sswitch_1
        -0x67ffffd4 -> :sswitch_1
        -0x5fffffbf -> :sswitch_1
        -0x3fffffce -> :sswitch_1
        -0x3fffffc9 -> :sswitch_1
        -0x33ffffba -> :sswitch_1
        -0x1fffffcd -> :sswitch_1
        -0x1fffffc8 -> :sswitch_1
        0x8 -> :sswitch_1
        0x8000004 -> :sswitch_0
        0x8000014 -> :sswitch_1
        0x800001e -> :sswitch_1
        0xa000023 -> :sswitch_1
    .end sparse-switch
.end method

.method protected isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    return v0
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1556
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const v1, 0x209006d

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 3210
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    .line 3473
    packed-switch p1, :pswitch_data_0

    .line 3495
    :cond_0
    :goto_0
    return-void

    .line 3475
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 3476
    if-eqz p3, :cond_0

    .line 3477
    const/4 v1, 0x0

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v7, -0x8000

    and-int/2addr v0, v7

    if-eqz v0, :cond_1

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3485
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 3486
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 3492
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mJustCreated:Z

    goto :goto_0

    .line 3473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3803
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    invoke-static {p1, p0, v0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->selectContextMenu(Landroid/view/MenuItem;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    .line 3805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 811
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 813
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 814
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, action:Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 816
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->checkMode()Z

    move-result v1

    .line 817
    .local v1, check:Z
    if-eqz v1, :cond_0

    .line 818
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFinish:Z

    .line 999
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getPreContentView()Landroid/view/View;

    move-result-object v8

    .line 823
    .local v8, preView:Landroid/view/View;
    if-nez v8, :cond_8

    .line 824
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentViewLayoutId()I

    move-result v6

    .line 825
    .local v6, layoutResId:I
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/app/ContactsListActivity;->setContentView(I)V

    .line 851
    .end local v6           #layoutResId:I
    :goto_1
    new-instance v9, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    .line 865
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->handleFilterUIAndTitle()V

    .line 866
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->initFilterBox()V

    .line 870
    const-string v9, "ContactsListActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Called with action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-nez v9, :cond_1

    .line 874
    const v9, 0x8000004

    iput v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    .line 888
    .local v7, list:Lcom/htc/widget/HtcListView;
    iget v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v10, 0x2000

    and-int/2addr v9, v10

    const/high16 v10, 0x2000

    if-eq v9, v10, :cond_2

    .line 889
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 894
    :cond_2
    iget v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v10, 0x1000

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    .line 897
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->IsAddItemInSearchLayout()Z

    move-result v9

    if-nez v9, :cond_5

    .line 899
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 900
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0a002c

    const v10, 0x2080237

    const/4 v11, 0x0

    invoke-static {v4, v7, v9, v10, v11}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZ)Landroid/view/View;

    move-result-object v3

    .line 904
    .local v3, header:Landroid/view/View;
    const/4 v2, 0x0

    .line 905
    .local v2, compose:Landroid/view/View;
    instance-of v9, v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    if-eqz v9, :cond_3

    move-object v9, v3

    .line 906
    check-cast v9, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v9}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get1Button()Lcom/android/htccontacts/widget/HtcListItem1Button;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getButton()Landroid/widget/Button;

    move-result-object v2

    .line 910
    :cond_3
    if-eqz v2, :cond_4

    .line 911
    new-instance v9, Lcom/android/htccontacts/app/ContactsListActivity$2;

    invoke-direct {v9, p0, v7, v3}, Lcom/android/htccontacts/app/ContactsListActivity$2;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Lcom/htc/widget/HtcListView;Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    :cond_4
    new-instance v9, Lcom/android/htccontacts/app/ContactsListActivity$HeaderListItemCache;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/htccontacts/app/ContactsListActivity$HeaderListItemCache;-><init>(ZZ)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 924
    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 925
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mHeaderCreateNewItemExist:Z

    .line 931
    .end local v2           #compose:Landroid/view/View;
    .end local v3           #header:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->setAddItemOnSearchBox()V

    .line 953
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 958
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mJustCreated:Z

    .line 962
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mSyncEnabled:Z

    .line 981
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-nez v9, :cond_6

    .line 982
    new-instance v9, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v9}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 985
    :cond_6
    sget-object v9, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    if-nez v9, :cond_7

    .line 986
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    .line 989
    :cond_7
    new-instance v9, Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

    invoke-direct {v9}, Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;-><init>()V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFavoriteChangeReceiver:Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

    .line 990
    iget-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFavoriteChangeReceiver:Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/htccontacts/app/ContactsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 993
    new-instance v9, Lcom/android/htccontacts/util/SparseLongArray;

    invoke-direct {v9}, Lcom/android/htccontacts/util/SparseLongArray;-><init>()V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusArray:Lcom/android/htccontacts/util/SparseLongArray;

    .line 994
    new-instance v9, Lcom/android/htccontacts/util/SparseLongArray;

    invoke-direct {v9}, Lcom/android/htccontacts/util/SparseLongArray;-><init>()V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorArray:Lcom/android/htccontacts/util/SparseLongArray;

    .line 995
    new-instance v9, Lcom/android/htccontacts/util/SparseLongArray;

    invoke-direct {v9}, Lcom/android/htccontacts/util/SparseLongArray;-><init>()V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mImPresenceArray:Lcom/android/htccontacts/util/SparseLongArray;

    goto/16 :goto_0

    .line 828
    .end local v7           #list:Lcom/htc/widget/HtcListView;
    :cond_8
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/app/ContactsListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 3779
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 3781
    .local v2, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v5, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v5, v5, Lcom/htc/widget/HtcListView;

    if-eqz v5, :cond_0

    .line 3782
    iget-object v5, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v5, Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080700

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3791
    :cond_0
    iget v3, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 3793
    .local v3, itemPos:I
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 3794
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    .line 3795
    instance-of v5, v4, Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 3796
    check-cast v4, Landroid/database/Cursor;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-static {p1, p2, p3, v4, p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/database/Cursor;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    .line 3798
    .end local v2           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v3           #itemPos:I
    :cond_1
    :goto_0
    return-void

    .line 3786
    :catch_0
    move-exception v1

    .line 3787
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "ContactsListActivity"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1121
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 1123
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v2, :cond_0

    .line 1124
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1125
    iput-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v2, :cond_1

    .line 1131
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v2}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->destroyProcess()V

    .line 1134
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 1137
    .local v1, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->close()V

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1140
    .end local v1           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1141
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFavoriteChangeReceiver:Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

    if-eqz v2, :cond_3

    .line 1142
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFavoriteChangeReceiver:Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1145
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->clearCallbackOfCacheDrawable()V

    .line 1146
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    if-eqz v2, :cond_4

    .line 1147
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1148
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1149
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1151
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v2, :cond_5

    .line 1152
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1154
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->pauseIndicator()V

    .line 1156
    return-void
.end method

.method protected onFilterComplete(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3708
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    if-eqz v0, :cond_0

    .line 3709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    .line 3710
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->startIndicator(J)V

    .line 3712
    :cond_0
    return-void
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3628
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3630
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    .line 3631
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->handleCallKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3632
    const/4 v1, 0x1

    .line 3635
    .end local v0           #position:I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 22
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3246
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 3248
    .local v17, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3250
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x6fffffd3

    if-ne v2, v4, :cond_4

    .line 3252
    if-nez p3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mHeaderCreateNewItemExist:Z

    if-eqz v2, :cond_2

    .line 3253
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v18

    .line 3260
    .local v18, intent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x200

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3261
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 3263
    .local v15, extras:Landroid/os/Bundle;
    if-nez v15, :cond_0

    .line 3264
    new-instance v15, Landroid/os/Bundle;

    .end local v15           #extras:Landroid/os/Bundle;
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 3266
    .restart local v15       #extras:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3267
    const-string v4, "picker_mode"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v6, -0x8000

    and-int/2addr v2, v6

    const/high16 v6, -0x8000

    if-ne v2, v6, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v15, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3268
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 3269
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    .line 3355
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v18           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 3256
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v2

    sub-int p3, p3, v2

    .line 3257
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 3258
    .local v5, uri:Landroid/net/Uri;
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v18       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 3267
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v15       #extras:Landroid/os/Bundle;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 3270
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v18           #intent:Landroid/content/Intent;
    :cond_4
    const-wide/16 v6, -0x1

    cmp-long v2, p4, v6

    if-eqz v2, :cond_13

    .line 3272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mHeaderCreateNewItemExist:Z

    if-eqz v2, :cond_5

    .line 3275
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v2

    sub-int p3, p3, v2

    .line 3277
    :cond_5
    if-ltz p3, :cond_1

    .line 3280
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 3281
    .restart local v5       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, -0x8000

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    .line 3285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 3286
    .local v3, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v21

    .line 3289
    .local v21, uriSIM:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 3292
    invoke-static/range {v21 .. v21}, Lcom/android/htccontacts/util/ContactsUtils;->getOpenContactDetailIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 3295
    .end local v21           #uriSIM:Landroid/net/Uri;
    :cond_6
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3296
    .restart local v18       #intent:Landroid/content/Intent;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 3298
    .end local v3           #c:Landroid/database/Cursor;
    .end local v18           #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x33ffffba

    if-ne v2, v4, :cond_8

    .line 3299
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_2

    .line 3300
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x5fffffbf

    if-ne v2, v4, :cond_b

    .line 3301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 3302
    .restart local v3       #c:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 3303
    .local v13, contactId:J
    move-object/from16 v16, v5

    .line 3304
    .local v16, fixedUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 3314
    :cond_9
    :goto_3
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3315
    .restart local v18       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 3316
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    goto/16 :goto_2

    .line 3306
    .end local v18           #intent:Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 3307
    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3308
    const/4 v2, 0x6

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3309
    .local v19, lookup:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v13, v14, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_3

    .line 3317
    .end local v3           #c:Landroid/database/Cursor;
    .end local v13           #contactId:J
    .end local v16           #fixedUri:Landroid/net/Uri;
    .end local v19           #lookup:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x77ffffd8

    if-eq v2, v4, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x67ffffd6

    if-eq v2, v4, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x77ffffd5

    if-eq v2, v4, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x67ffffd4

    if-ne v2, v4, :cond_e

    .line 3321
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 3322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 3323
    .restart local v3       #c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_2

    .line 3325
    .end local v3           #c:Landroid/database/Cursor;
    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v9, v5

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_2

    .line 3327
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x3fffffce

    if-ne v2, v4, :cond_10

    .line 3328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 3330
    .restart local v3       #c:Landroid/database/Cursor;
    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_2

    .line 3332
    .end local v3           #c:Landroid/database/Cursor;
    :cond_f
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v9, v5

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_2

    .line 3334
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x3fffffc9

    if-eq v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x1fffffc8

    if-eq v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x1fffffcd

    if-ne v2, v4, :cond_12

    .line 3337
    :cond_11
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v9, v5

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_2

    .line 3340
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->signalError()V

    goto/16 :goto_2

    .line 3342
    .end local v5           #uri:Landroid/net/Uri;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    const/high16 v4, 0x1000

    if-ne v2, v4, :cond_16

    if-nez p3, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mHeaderCreateNewItemExist:Z

    if-eqz v2, :cond_16

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v20

    .line 3345
    .local v20, newContact:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 3346
    .restart local v15       #extras:Landroid/os/Bundle;
    if-nez v15, :cond_14

    .line 3347
    new-instance v15, Landroid/os/Bundle;

    .end local v15           #extras:Landroid/os/Bundle;
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 3349
    .restart local v15       #extras:Landroid/os/Bundle;
    :cond_14
    const-string v4, "picker_mode"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v6, -0x8000

    and-int/2addr v2, v6

    const/high16 v6, -0x8000

    if-ne v2, v6, :cond_15

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v15, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3350
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3351
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 3349
    :cond_15
    const/4 v2, 0x0

    goto :goto_4

    .line 3353
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v20           #newContact:Landroid/content/Intent;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->signalError()V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1113
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 1114
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->pauseIndicator()V

    .line 1115
    return-void
.end method

.method protected onQueryAndAdapterFinish(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3572
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    .line 3573
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    if-eqz v0, :cond_0

    .line 3574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    .line 3575
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->startIndicator(J)V

    .line 3577
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1003
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 1006
    const/4 v5, 0x1

    .line 1007
    .local v5, runQuery:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v4

    .line 1011
    .local v4, parent:Landroid/app/Activity;
    iget v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v7, 0x8000004

    if-ne v6, v7, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->setDefaultMode()V

    .line 1017
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v6, :cond_1

    .line 1018
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v6, v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setScrollState(I)V

    .line 1021
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1023
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 1024
    .local v2, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v2}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->enableObservers()V

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1027
    .end local v2           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_2
    iget-boolean v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    if-eqz v6, :cond_9

    .line 1028
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    .line 1029
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, filterText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1032
    iget-boolean v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstResuming:Z

    if-eqz v6, :cond_5

    .line 1033
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v6, :cond_4

    .line 1035
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1040
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1069
    .end local v0           #filterText:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->queryIpDialCursor(Landroid/app/Activity;)V

    .line 1070
    iput-boolean v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstResuming:Z

    .line 1071
    iput-boolean v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mJustCreated:Z

    .line 1074
    return-void

    .line 1038
    .restart local v0       #filterText:Ljava/lang/String;
    :cond_4
    new-instance v6, Lcom/android/htccontacts/app/ContactsListActivity$FirstResumeIdleHandler;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/app/ContactsListActivity$FirstResumeIdleHandler;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;)V

    iput-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFirstResumeIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    goto :goto_1

    .line 1042
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    .line 1043
    iput-boolean v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    goto :goto_2

    .line 1047
    :cond_6
    iget-boolean v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstResuming:Z

    if-nez v6, :cond_7

    .line 1048
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 1049
    .local v3, listView:Lcom/htc/widget/HtcListView;
    if-eqz v3, :cond_3

    .line 1051
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 1052
    iput-boolean v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    goto :goto_2

    .line 1056
    .end local v3           #listView:Lcom/htc/widget/HtcListView;
    :cond_7
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1057
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->clearFilterText()V

    .line 1059
    :cond_8
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    .line 1060
    iput-boolean v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    goto :goto_2

    .line 1065
    .end local v0           #filterText:Ljava/lang/String;
    :cond_9
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v6, v7}, Lcom/android/htccontacts/app/ContactsListActivity;->startIndicator(J)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->doOnResumeWithourRequery()V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 1221
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 1234
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_0

    .line 1236
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 1237
    .local v2, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 1240
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1242
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 1243
    .local v1, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->disableObservers()V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    .end local v1           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_1
    return-void
.end method

.method protected pauseIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x7d0

    .line 1172
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContactListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContactListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->pauseProcess()V

    .line 1179
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->clearQueue()V

    .line 1180
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setDoAddIndicatorRequest(Z)V

    .line 1184
    :cond_1
    return-void
.end method

.method protected recopyExtra(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "extras"

    .prologue
    .line 3717
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3718
    .local v4, newExtras:Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 3720
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #newExtras:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3721
    .restart local v4       #newExtras:Landroid/os/Bundle;
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3723
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3724
    .local v3, insertedPhone:Ljava/lang/String;
    const-string v5, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3726
    .local v1, extraPhone:Ljava/lang/String;
    const-string v5, "email"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3727
    .local v2, insertedEmail:Ljava/lang/String;
    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3729
    .local v0, extraEmail:Ljava/lang/String;
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 3730
    const-string v5, "phone"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3733
    :cond_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 3734
    const-string v5, "email"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    .end local v0           #extraEmail:Ljava/lang/String;
    .end local v1           #extraPhone:Ljava/lang/String;
    .end local v2           #insertedEmail:Ljava/lang/String;
    .end local v3           #insertedPhone:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method protected returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V
    .locals 16
    .parameter "cursor"
    .parameter "name"
    .parameter "uri"
    .parameter "id"
    .parameter "uriPerms"

    .prologue
    .line 3362
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 3365
    .local v7, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 3440
    :goto_0
    return-void

    .line 3369
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 3371
    const-string v14, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3377
    new-instance v11, Landroid/content/Intent;

    const-string v14, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3378
    .local v11, shortcutIntent:Landroid/content/Intent;
    const/high16 v14, 0x1420

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3381
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3382
    const-string v14, "mode"

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3384
    const-string v15, "exclude_mimes"

    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v11, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3386
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v14, v15}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3390
    .local v6, icon:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 3391
    const-string v14, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v7, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3427
    .end local v6           #icon:Landroid/graphics/Bitmap;
    :goto_1
    const/high16 v14, 0x400

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3428
    const-string v14, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v7, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3429
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3430
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/htccontacts/app/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 3431
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    goto :goto_0

    .line 3393
    .restart local v6       #icon:Landroid/graphics/Bitmap;
    :cond_1
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v15, 0x7f02002c

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 3400
    .end local v6           #icon:Landroid/graphics/Bitmap;
    .end local v11           #shortcutIntent:Landroid/content/Intent;
    :cond_2
    const-string v14, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3401
    .local v5, dataIdx:I
    const-string v14, "data2"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3402
    .local v13, typeIdx:I
    const-string v14, "contact_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3403
    .local v4, contactIdIdx:I
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3404
    .local v8, number:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 3408
    .local v12, type:I
    const-string v14, "android.intent.action.CALL"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3409
    const-string v10, "tel"

    .line 3419
    .local v10, scheme:Ljava/lang/String;
    :goto_2
    const/4 v14, 0x0

    invoke-static {v10, v8, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3420
    .local v9, phoneUri:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-direct {v11, v14, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3423
    .restart local v11       #shortcutIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3424
    .local v2, contactId:J
    const-string v15, "android.intent.extra.shortcut.ICON"

    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 3413
    .end local v2           #contactId:J
    .end local v9           #phoneUri:Landroid/net/Uri;
    .end local v10           #scheme:Ljava/lang/String;
    .end local v11           #shortcutIntent:Landroid/content/Intent;
    :cond_3
    const-string v10, "smsto"

    .restart local v10       #scheme:Ljava/lang/String;
    goto :goto_2

    .line 3433
    .end local v4           #contactIdIdx:I
    .end local v5           #dataIdx:I
    .end local v8           #number:Ljava/lang/String;
    .end local v10           #scheme:Ljava/lang/String;
    .end local v12           #type:I
    .end local v13           #typeIdx:I
    :cond_4
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3435
    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/htccontacts/app/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 3436
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3437
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected setAddItemOnSearchBox()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3856
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3858
    .local v0, createNewEnableOnSearchBox:Z
    :goto_0
    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 3859
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-nez v1, :cond_1

    .line 3883
    :goto_1
    return-void

    .end local v0           #createNewEnableOnSearchBox:Z
    .end local v1           #searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    :cond_0
    move v0, v2

    .line 3856
    goto :goto_0

    .line 3862
    .restart local v0       #createNewEnableOnSearchBox:Z
    .restart local v1       #searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    :cond_1
    if-eqz v0, :cond_2

    .line 3863
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderAddButton()Lcom/htc/widget/HeaderBarImage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 3864
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderAddButton()Lcom/htc/widget/HeaderBarImage;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/app/ContactsListActivity$3;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/app/ContactsListActivity$3;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 3881
    :cond_2
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderAddButton()Lcom/htc/widget/HeaderBarImage;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public setContactsItemListAdapterCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-nez v0, :cond_1

    .line 1543
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .line 1544
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    instance-of v0, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFavoriteChangeReceiver:Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;->setActivity(Lcom/android/htccontacts/app/ContactsListActivity;)V

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1548
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1552
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected setDefaultMode()V
    .locals 3

    .prologue
    .line 2841
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2844
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "Only contacts with phone number"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 2849
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->setEmptyText()V

    .line 2850
    return-void
.end method

.method protected setEmptyText()V
    .locals 4

    .prologue
    .line 2860
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v3, -0x33ffffba

    if-ne v2, v3, :cond_1

    .line 2891
    :cond_0
    :goto_0
    return-void

    .line 2864
    :cond_1
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2865
    .local v0, empty:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2868
    const/4 v1, 0x0

    .line 2870
    .local v1, gravity:I
    iget-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v2, :cond_2

    .line 2871
    const v2, 0x7f0a021e

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2872
    const/16 v1, 0x11

    .line 2888
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 2881
    :cond_2
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2882
    const v2, 0x7f0a0278

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2885
    :cond_3
    const v2, 0x7f0a0245

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public signalError()V
    .locals 2

    .prologue
    .line 3531
    const-string v0, "ContactsListActivity"

    const-string v1, "signalError"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    return-void
.end method

.method protected startIndicator()V
    .locals 2

    .prologue
    .line 1200
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->startIndicator(J)V

    .line 1201
    return-void
.end method

.method protected startIndicator(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContactListHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1192
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setDoAddIndicatorRequest(Z)V

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 19

    .prologue
    .line 1293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, 0x8000004

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x77ffffd8

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x67ffffd6

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x6fffffd3

    if-eq v1, v2, :cond_0

    .line 1295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1297
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v5

    .line 1300
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v9

    .line 1302
    .local v9, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->isEnableSectionIndexer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    invoke-static {v9}, Lcom/android/htccontacts/app/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 1307
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1436
    :goto_0
    return-void

    .line 1321
    :sswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    if-ne v1, v2, :cond_5

    .line 1322
    const v1, 0x8000004

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v1, v2, :cond_2

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v9

    .line 1326
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1327
    const/16 v18, 0x0

    .line 1342
    .local v18, isCursorPreloaded:Z
    if-nez v18, :cond_3

    .line 1344
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "100"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1345
    .local v4, queryUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    .end local v4           #queryUri:Landroid/net/Uri;
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    goto :goto_0

    .line 1351
    :cond_3
    const v1, 0x8000004

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v1, v2, :cond_4

    .line 1352
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->isEnableSectionIndexer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1353
    invoke-static {v9}, Lcom/android/htccontacts/app/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 1356
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3ea

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1365
    .end local v18           #isCursorPreloaded:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3ea

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1375
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1381
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQuery:Ljava/lang/String;

    .line 1382
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQuery:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v14, v5

    invoke-virtual/range {v10 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const-string v11, "starred=1"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const-string v11, "times_contacted > 0"

    const/4 v12, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times_contacted DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1409
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1414
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1419
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1424
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v13

    const-string v15, "kind=2"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v14, v5

    invoke-virtual/range {v10 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1431
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryAggregateId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v5

    invoke-virtual/range {v10 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1307
    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_0
        -0x77ffffd5 -> :sswitch_1
        -0x6fffffd3 -> :sswitch_0
        -0x67ffffd6 -> :sswitch_0
        -0x67ffffd4 -> :sswitch_1
        -0x5fffffbf -> :sswitch_3
        -0x3fffffce -> :sswitch_7
        -0x3fffffc9 -> :sswitch_8
        -0x33ffffba -> :sswitch_a
        -0x1fffffcd -> :sswitch_7
        -0x1fffffc8 -> :sswitch_9
        0x8 -> :sswitch_0
        0x3c -> :sswitch_2
        0x8000004 -> :sswitch_0
        0x8000014 -> :sswitch_4
        0x800001e -> :sswitch_5
        0xa000023 -> :sswitch_6
    .end sparse-switch
.end method

.method public wipeIndicatorCache()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/SparseLongArray;->clear()V

    .line 1254
    return-void
.end method

.method public wipePresenceCache()V
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mImPresenceArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/SparseLongArray;->clear()V

    .line 1258
    return-void
.end method

.method public wipeStatusCache()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/SparseLongArray;->clear()V

    .line 1250
    return-void
.end method
