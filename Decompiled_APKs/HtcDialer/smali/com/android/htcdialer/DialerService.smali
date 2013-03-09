.class public Lcom/android/htcdialer/DialerService;
.super Landroid/app/Service;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;,
        Lcom/android/htcdialer/DialerService$WorkingHandler;,
        Lcom/android/htcdialer/DialerService$BlackNumberColumnIndex;,
        Lcom/android/htcdialer/DialerService$EmailColumnIndex;,
        Lcom/android/htcdialer/DialerService$PhoneColumnIndex;,
        Lcom/android/htcdialer/DialerService$ContactColumnIndex;,
        Lcom/android/htcdialer/DialerService$CallLogColumnIndex;
    }
.end annotation


# static fields
.field private static final BLACK_NUMBER_PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final CACHE_DECLARE_SIZE:I = 0x0

.field private static final CALLLOGS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLLOG_CACHE_LIMIT:I = 0x1f4

.field private static final CONTACT_CACHE_LIMIT:I = 0x1388

.field private static final CONTACT_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTACT_PROJECTION_ORI:[Ljava/lang/String; = null

.field private static final CONTACT_PROJECTION_TMO:[Ljava/lang/String; = null

.field private static final DEFAULT_MY_CONTACT_CARD_ID:J = 0x1L

.field private static final DIALER_CALLLOGS_URI:Landroid/net/Uri; = null

.field private static final DIALER_CONTACTS_URI:Landroid/net/Uri; = null

.field private static final DIALER_EMAILS_URI:Landroid/net/Uri; = null

.field private static final DIALER_PHONES_URI:Landroid/net/Uri; = null

.field static final EMAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final FAKE_ID_BASE:J = 0x7fffffffffffd8efL

.field private static final LOAD_ALL:I = 0x2

.field private static final LOAD_CALLLOG:I = 0x3

.field private static final LOAD_DB:I = 0x0

.field private static final LOAD_FIRST:I = 0x1

.field private static final LOAD_INSERT_CALLLOG:I = 0x7

.field private static final LOAD_NAME_PATTERN:I = 0x6

.field private static final LOAD_UPDATE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final MAX_NUMBER_KEY_LENGTH:I = 0x0

.field private static final MESSAGE_INIT_PHOTO_UTILITY:I = 0x5

.field static final PHONE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DialerService"

.field private static final UPDATE_CONTACT_TYPE_DELETE:I = 0x1

.field private static final UPDATE_CONTACT_TYPE_INSERT:I = 0x0

.field private static final UPDATE_CONTACT_TYPE_MODIFY:I = 0x2

.field private static final UPDATE_LIMIT:I = 0x64

.field private static WAIT_TIME_DB:J

.field private static WAIT_TIME_LONG:J

.field private static WAIT_TIME_SHORT:J

.field private static WAIT_TIME_UI:J

.field private static final callLogComparatorByCount:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final callLogComparatorByDate:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final contactComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;"
        }
    .end annotation
.end field

.field public static isCacheUpdating:Z

.field public static isPreloadDone:Z

.field static mBTDockConnected:Z

.field private static mCallLogsBuf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;"
        }
    .end annotation
.end field

.field public static mCallLogsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;"
        }
    .end annotation
.end field

.field private static mContactsBuf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;"
        }
    .end annotation
.end field

.field public static mContactsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;"
        }
    .end annotation
.end field

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mEmailsBuf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mEmailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field private static mPhonesBuf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private static mPhonesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public static mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

.field private static mRefFilterBuf:[Lcom/android/htcdialer/search/SearchableObject;

.field private static mRefFilterBufCount:I

.field public static mRefFilterCount:I

.field public static mReference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;"
        }
    .end annotation
.end field

.field private static mReferenceBuf:[Lcom/android/htcdialer/search/SearchableObject;

.field private static mReferenceBufCount:I

.field private static mRegisteredHandler:Landroid/os/Handler;

.field private static mSortedContacts:[Lcom/android/htcdialer/search/SearchableContact;

.field private static mThread:Landroid/os/HandlerThread;

.field private static final mUpdateInfo:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ACTION_LOCATIONS_NAVI_ON:Ljava/lang/String;

.field private final ACTION_TIMEFORMAT_CHANGED:Ljava/lang/String;

.field private final ACTION_TIME_SET:Ljava/lang/String;

.field private final CORRUPT_COUNT:Ljava/lang/String;

.field private final IS_NAVI_ON:Ljava/lang/String;

.field private final mBinder:Lcom/htc/service/dialer/IDialerService$Stub;

.field private mCacheUpdateLock:Ljava/lang/Object;

.field mDockState:I

.field private mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

.field private mReceiver:Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    sput-object v4, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    .line 87
    sput-object v4, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    .line 88
    sput-object v4, Lcom/android/htcdialer/DialerService;->mRegisteredHandler:Landroid/os/Handler;

    .line 89
    sput-object v4, Lcom/android/htcdialer/DialerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_UI:J

    .line 96
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_SHORT:J

    .line 97
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_LONG:J

    .line 98
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_DB:J

    .line 115
    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2ee0

    :goto_0
    sput v0, Lcom/android/htcdialer/DialerService;->CACHE_DECLARE_SIZE:I

    .line 117
    sget v0, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    sput v0, Lcom/android/htcdialer/DialerService;->MAX_NUMBER_KEY_LENGTH:I

    .line 121
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/DialerService;->mUpdateInfo:Ljava/util/LinkedHashMap;

    .line 123
    sput-boolean v3, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    .line 127
    sput-boolean v3, Lcom/android/htcdialer/DialerService;->mBTDockConnected:Z

    .line 130
    new-instance v0, Lcom/android/htcdialer/DialerService$1;

    invoke-direct {v0}, Lcom/android/htcdialer/DialerService$1;-><init>()V

    sput-object v0, Lcom/android/htcdialer/DialerService;->callLogComparatorByDate:Ljava/util/Comparator;

    .line 142
    new-instance v0, Lcom/android/htcdialer/DialerService$2;

    invoke-direct {v0}, Lcom/android/htcdialer/DialerService$2;-><init>()V

    sput-object v0, Lcom/android/htcdialer/DialerService;->callLogComparatorByCount:Ljava/util/Comparator;

    .line 181
    new-instance v0, Lcom/android/htcdialer/DialerService$3;

    invoke-direct {v0}, Lcom/android/htcdialer/DialerService$3;-><init>()V

    sput-object v0, Lcom/android/htcdialer/DialerService;->contactComparator:Ljava/util/Comparator;

    .line 201
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dialer/contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->DIALER_CONTACTS_URI:Landroid/net/Uri;

    .line 203
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dialer/calllogs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->DIALER_CALLLOGS_URI:Landroid/net/Uri;

    .line 205
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dialer/phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->DIALER_PHONES_URI:Landroid/net/Uri;

    .line 207
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dialer/emails"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->DIALER_EMAILS_URI:Landroid/net/Uri;

    .line 210
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "city_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contactTimes"

    aput-object v2, v0, v1

    :goto_1
    sput-object v0, Lcom/android/htcdialer/DialerService;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    .line 228
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "starred"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION_ORI:[Ljava/lang/String;

    .line 234
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "starred"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION_TMO:[Ljava/lang/String;

    .line 240
    sget-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION_TMO:[Ljava/lang/String;

    :goto_2
    sput-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 254
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/DialerService;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 268
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/htcdialer/DialerService;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 278
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/htcdialer/DialerService;->BLACK_NUMBER_PROJECTION:[Ljava/lang/String;

    .line 287
    sput-boolean v3, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 290
    sput-object v4, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 291
    sput-object v4, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/android/htcdialer/DialerService;->CACHE_DECLARE_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    .line 294
    sget v0, Lcom/android/htcdialer/DialerService;->CACHE_DECLARE_SIZE:I

    new-array v0, v0, [Lcom/android/htcdialer/search/SearchableObject;

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 295
    sput v3, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 298
    sput-object v4, Lcom/android/htcdialer/DialerService;->mCallLogsBuf:Ljava/util/HashMap;

    .line 299
    sput-object v4, Lcom/android/htcdialer/DialerService;->mContactsBuf:Ljava/util/HashMap;

    .line 300
    sput-object v4, Lcom/android/htcdialer/DialerService;->mPhonesMap:Ljava/util/HashMap;

    .line 301
    sput-object v4, Lcom/android/htcdialer/DialerService;->mPhonesBuf:Ljava/util/HashMap;

    .line 302
    sput-object v4, Lcom/android/htcdialer/DialerService;->mEmailsMap:Ljava/util/HashMap;

    .line 303
    sput-object v4, Lcom/android/htcdialer/DialerService;->mEmailsBuf:Ljava/util/HashMap;

    .line 304
    sget v0, Lcom/android/htcdialer/DialerService;->CACHE_DECLARE_SIZE:I

    new-array v0, v0, [Lcom/android/htcdialer/search/SearchableObject;

    sput-object v0, Lcom/android/htcdialer/DialerService;->mReferenceBuf:[Lcom/android/htcdialer/search/SearchableObject;

    .line 305
    sget v0, Lcom/android/htcdialer/DialerService;->CACHE_DECLARE_SIZE:I

    new-array v0, v0, [Lcom/android/htcdialer/search/SearchableObject;

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilterBuf:[Lcom/android/htcdialer/search/SearchableObject;

    .line 306
    sput v3, Lcom/android/htcdialer/DialerService;->mReferenceBufCount:I

    .line 307
    sput v3, Lcom/android/htcdialer/DialerService;->mRefFilterBufCount:I

    .line 308
    sput-object v4, Lcom/android/htcdialer/DialerService;->mSortedContacts:[Lcom/android/htcdialer/search/SearchableContact;

    return-void

    .line 115
    :cond_0
    const v0, 0x8ca0

    goto/16 :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contactTimes"

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 240
    :cond_2
    sget-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION_ORI:[Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    const-string v0, "corrupt_count"

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->CORRUPT_COUNT:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/DialerService;->mDockState:I

    .line 312
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;

    .line 316
    const-string v0, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->ACTION_LOCATIONS_NAVI_ON:Ljava/lang/String;

    .line 318
    const-string v0, "android.intent.action.TIMEFORMAT_CHANGED"

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->ACTION_TIMEFORMAT_CHANGED:Ljava/lang/String;

    .line 320
    const-string v0, "android.intent.action.TIME_SET"

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->ACTION_TIME_SET:Ljava/lang/String;

    .line 322
    const-string v0, "isNaviOn"

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->IS_NAVI_ON:Ljava/lang/String;

    .line 1219
    new-instance v0, Lcom/android/htcdialer/DialerService$4;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/DialerService$4;-><init>(Lcom/android/htcdialer/DialerService;)V

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->mBinder:Lcom/htc/service/dialer/IDialerService$Stub;

    .line 1612
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContactsBuf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mContactsBuf:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mPhonesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mPhonesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$102(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/htcdialer/DialerService;->mReferenceBufCount:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput p0, Lcom/android/htcdialer/DialerService;->mReferenceBufCount:I

    return p0
.end method

.method static synthetic access$1208()I
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/android/htcdialer/DialerService;->mReferenceBufCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/htcdialer/DialerService;->mReferenceBufCount:I

    return v0
.end method

.method static synthetic access$1300()[Lcom/android/htcdialer/search/SearchableObject;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReferenceBuf:[Lcom/android/htcdialer/search/SearchableObject;

    return-object v0
.end method

.method static synthetic access$1400()[Lcom/android/htcdialer/search/SearchableObject;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mRefFilterBuf:[Lcom/android/htcdialer/search/SearchableObject;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/htcdialer/DialerService;->mRefFilterBufCount:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput p0, Lcom/android/htcdialer/DialerService;->mRefFilterBufCount:I

    return p0
.end method

.method static synthetic access$1508()I
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/android/htcdialer/DialerService;->mRefFilterBufCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/htcdialer/DialerService;->mRefFilterBufCount:I

    return v0
.end method

.method static synthetic access$1600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mPhonesBuf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mPhonesBuf:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;J)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/DialerService;->deletePhonesBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mEmailsBuf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mEmailsBuf:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;J)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/DialerService;->deleteEmailsBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/htcdialer/DialerService;->loadBlackNumber(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mEmailsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mEmailsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->DIALER_CONTACTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->CONTACT_PROJECTION_TMO:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->DIALER_PHONES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->DIALER_EMAILS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->DIALER_CALLLOGS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->callLogComparatorByCount:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_DB:J

    return-wide v0
.end method

.method static synthetic access$3000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->callLogComparatorByDate:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->contactComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_UI:J

    return-wide v0
.end method

.method static synthetic access$3400()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_LONG:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/htcdialer/DialerService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/htcdialer/DialerService;->createDialerIntentFromBroadcast(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/android/htcdialer/DialerService;->WAIT_TIME_SHORT:J

    return-wide v0
.end method

.method static synthetic access$500()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mUpdateInfo:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htcdialer/DialerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService;->preparePhotoUtility()V

    return-void
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsBuf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mCallLogsBuf:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()[Lcom/android/htcdialer/search/SearchableContact;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/htcdialer/DialerService;->mSortedContacts:[Lcom/android/htcdialer/search/SearchableContact;

    return-object v0
.end method

.method static synthetic access$902([Lcom/android/htcdialer/search/SearchableContact;)[Lcom/android/htcdialer/search/SearchableContact;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/htcdialer/DialerService;->mSortedContacts:[Lcom/android/htcdialer/search/SearchableContact;

    return-object p0
.end method

.method private createDialerIntentFromBroadcast(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .parameter "intent"

    .prologue
    .line 1712
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.util.phone.DialUtils.QWERTY.action_key_event"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v0, dialIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1714
    const-string v2, "key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1715
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1716
    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    :cond_0
    const-string v2, "long_press"

    const-string v3, "long_press"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1721
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1723
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private deleteEmailsBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;
    .locals 4
    .parameter
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1496
    .local p1, emailsBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1497
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1498
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1499
    .local v0, id:J
    cmp-long v3, v0, p2

    if-nez v3, :cond_0

    .line 1500
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1503
    .end local v0           #id:J
    :cond_1
    return-object p1
.end method

.method private deletePhonesBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;
    .locals 10
    .parameter
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    .prologue
    .local p1, phonesBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 1471
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1472
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<[J>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1474
    .local v1, info:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1475
    aget-wide v4, v1, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 1477
    aget-wide v4, v1, v0

    cmp-long v4, v4, p2

    if-nez v4, :cond_4

    .line 1478
    array-length v4, v1

    if-eq v4, v7, :cond_1

    array-length v4, v1

    if-le v4, v7, :cond_2

    aget-wide v4, v1, v7

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 1479
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1481
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .local v3, j:I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 1482
    add-int/lit8 v4, v3, -0x1

    aget-wide v5, v1, v3

    aput-wide v5, v1, v4

    .line 1481
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1484
    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aput-wide v8, v1, v4

    goto :goto_0

    .line 1474
    .end local v3           #j:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1490
    .end local v0           #i:I
    .end local v1           #info:[J
    :cond_5
    return-object p1
.end method

.method public static getCallLogSortIndex(Ljava/util/HashMap;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1591
    .local p0, callLogs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableCallLog;>;"
    const-wide/16 v4, 0x0

    .line 1593
    .local v4, time:J
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 1594
    .local v3, size:I
    if-nez v3, :cond_1

    .line 1595
    const/4 v2, 0x0

    .line 1608
    :cond_0
    return-object v2

    .line 1597
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v3, [Lcom/android/htcdialer/search/SearchableCallLog;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableCallLog;

    .line 1598
    .local v0, array:[Lcom/android/htcdialer/search/SearchableCallLog;
    sget-object v6, Lcom/android/htcdialer/DialerService;->callLogComparatorByDate:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1599
    new-array v2, v3, [J

    .line 1600
    .local v2, index:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1601
    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    aput-wide v6, v2, v1

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 1556
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1557
    const/4 p0, 0x0

    .line 1570
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1559
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/android/htcdialer/DialerService;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1560
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, pureNumber:Ljava/lang/String;
    sget v0, Lcom/android/htcdialer/DialerService;->MAX_NUMBER_KEY_LENGTH:I

    .line 1562
    .local v0, defaultLength:I
    sget v2, Lcom/android/htcdialer/DialerService;->MAX_NUMBER_KEY_LENGTH:I

    if-ne v3, v2, :cond_3

    .line 1563
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x36

    if-eq v2, v3, :cond_3

    .line 1565
    :cond_2
    const/16 v0, 0x8

    .line 1568
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isBTDockConnected()Z
    .locals 1

    .prologue
    .line 1731
    sget-boolean v0, Lcom/android/htcdialer/DialerService;->mBTDockConnected:Z

    return v0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    .line 1577
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1578
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1579
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1580
    .local v0, c:C
    const/16 v3, 0x61

    if-gt v3, v0, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-gt v3, v0, :cond_2

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_2

    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1582
    const/4 v3, 0x0

    .line 1585
    .end local v0           #c:C
    :goto_1
    return v3

    .line 1578
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1585
    .end local v0           #c:C
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private loadBlackNumber(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    .prologue
    .line 1510
    .local p1, phoneBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v11, 0x0

    .line 1511
    .local v11, time:J
    if-eqz p1, :cond_6

    sget-boolean v0, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v0, :cond_6

    .line 1514
    :cond_0
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/DialerService;->deletePhonesBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 1517
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htcdialer/DialerService;->BLACK_NUMBER_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1519
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 1520
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1521
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1522
    .local v8, numberKey:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1524
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 1525
    .local v9, oldInfo:[J
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v9, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1526
    const/4 v10, -0x1

    .line 1527
    .local v10, pivot:I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    aget-wide v0, v9, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1528
    const-wide/16 v0, -0x1

    aput-wide v0, v9, v10

    goto :goto_0

    .line 1530
    .end local v10           #pivot:I
    :cond_3
    array-length v0, v9

    mul-int/lit8 v0, v0, 0x2

    new-array v7, v0, [J

    .line 1531
    .local v7, newInfo:[J
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, v9

    invoke-static {v9, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1532
    array-length v0, v9

    const-wide/16 v1, -0x1

    aput-wide v1, v7, v0

    .line 1533
    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1536
    .end local v7           #newInfo:[J
    .end local v9           #oldInfo:[J
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    invoke-virtual {p1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1542
    .end local v8           #numberKey:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1550
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_6
    return-object p1
.end method

.method public static notifyUpdateNamePattern()V
    .locals 4

    .prologue
    .line 1214
    sget-object v0, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1215
    sget-object v0, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/htcdialer/DialerService;->WAIT_TIME_SHORT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1217
    :cond_0
    return-void
.end method

.method private preparePhotoUtility()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/htcdialer/DialerService;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    if-nez v0, :cond_0

    .line 1202
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getUtility()Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    .line 1204
    :cond_0
    return-void
.end method

.method public static registerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 330
    sput-object p0, Lcom/android/htcdialer/DialerService;->mRegisteredHandler:Landroid/os/Handler;

    .line 331
    return-void
.end method

.method private releasePhotoUtility()V
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/htcdialer/DialerService;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/htcdialer/DialerService;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-virtual {v0, p0}, Lcom/android/htcdialer/util/PhotoUtils;->releaseontactPhotoCache(Lcom/android/htcdialer/DialerService;)V

    .line 1209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/DialerService;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    .line 1211
    :cond_0
    return-void
.end method

.method public static unregisterHandler()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRegisteredHandler:Landroid/os/Handler;

    .line 335
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/htcdialer/DialerService;->mBinder:Lcom/htc/service/dialer/IDialerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 340
    const-string v1, "DialerService"

    const-string v2, "DialerService start !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 344
    sget-object v1, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HtcDialerServiceThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    .line 347
    sget-object v1, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 348
    new-instance v1, Lcom/android/htcdialer/DialerService$WorkingHandler;

    sget-object v2, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/htcdialer/DialerService$WorkingHandler;-><init>(Lcom/android/htcdialer/DialerService;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    .line 350
    sget-object v1, Lcom/android/htcdialer/DialerService;->mUpdateInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 353
    sget-object v1, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    sget-object v1, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/htcdialer/DialerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    new-instance v1, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;-><init>(Lcom/android/htcdialer/DialerService;)V

    iput-object v1, p0, Lcom/android/htcdialer/DialerService;->mReceiver:Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;

    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_CHECK_CONTACT_DB_CORRUPT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.util.phone.DialUtils.QWERTY.action_key_event"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/htcdialer/DialerService;->mReceiver:Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htcdialer/DialerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 380
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService;->releasePhotoUtility()V

    .line 382
    sget-object v0, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/android/htcdialer/DialerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 385
    :cond_0
    return-void
.end method
