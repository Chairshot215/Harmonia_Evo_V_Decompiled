.class public Lcom/android/htccontacts/ContactDetailCallHistoryActivity;
.super Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;,
        Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;,
        Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;,
        Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;,
        Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;
    }
.end annotation


# static fields
.field private static final BEARAR_COLUMN_INDEX:I = 0x6

.field private static final CALLS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final CALLS_PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_DURATION_COLUM_INDEX:I = 0x3

.field private static final CALL_LOG_ALL:I = 0x0

.field private static final CALL_LOG_INCOMING:I = 0x1

.field private static final CALL_LOG_MISSED:I = 0x3

.field private static final CALL_LOG_OUTGOING:I = 0x2

.field private static final CALL_PERSON_COLUMN_INDEX:I = 0x5

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field private static final CITY_ID_INDEX_CALL:I = 0x7

.field private static final CITY_ID_INDEX_CALL_PHONE:I = 0x9

.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final DATE_COLUMN_INDEX:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIALOG_VIEW_ALL:I = 0x0

.field private static final DIALOG_VIEW_INCOMING:I = 0x1

.field private static final DIALOG_VIEW_MISSED:I = 0x3

.field private static final DIALOG_VIEW_OUTGOING:I = 0x2

.field private static final ID_COLUMN_INDEX:I = 0x0

.field public static final IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x7da

.field private static final MENU_DELETE:I = 0x5

.field private static final MENU_EDIT:I = 0x4

.field private static final MENU_ITEM_DELETE:I = 0x2

.field private static final MENU_ITEM_DELETE_ALL:I = 0x3

.field private static final MENU_ITEM_DIAL_VT:I = 0x8

.field private static final MENU_ITEM_IP_DIAL:I = 0x7

.field private static final MENU_SAVE_TO_CONTACTS:I = 0x1

.field private static final MENU_VIEW:I = 0x6

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final PHONE_NAME_COLUMN_INDEX:I = 0x7

.field private static final PHONE_TYPE_COLUMN_INDEX:I = 0x8

.field protected static final QUERY_TOKEN:I = 0x0

.field protected static final SAVE_UNKNOWN_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactDetailCallHistoryActivity"

.field protected static final UPDATE_TOKEN:I = 0x1


# instance fields
.field private independent:Z

.field private independentChatCapability:I

.field private independentContactId:J

.field private independentMyPhonebookType:Z

.field private independentName:Ljava/lang/String;

.field private independentPhoto:Landroid/graphics/Bitmap;

.field private independentPresence:I

.field private independentSimType:Z

.field private independentUnknown:Z

.field private independentUnknownNumber:Ljava/lang/String;

.field private mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogType:I

.field private mCityIdWidth:I

.field private final mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContactId:J

.field private mContactType:I

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private mDurationText:Ljava/lang/String;

.field protected mEnterEmergencyMode:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

.field private mIpDialList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIs24HourFormat:Z

.field private mIsDirty:Z

.field private mIsPenddingDateChange:Z

.field private mIsPenddingTimeChange:Z

.field private mNeedDelay:Z

.field private mNumber:Ljava/lang/String;

.field private mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

.field private mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

.field mQueryIPDialHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;

.field private mSaveToCotnactDialog:Landroid/app/Dialog;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const-string v0, "content://call_log/calls_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->CALLS_CONTENT_URI:Landroid/net/Uri;

    .line 106
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "city_id"

    aput-object v2, v0, v1

    :goto_0
    sput-object v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->CALLS_PHONES_PROJECTION:[Ljava/lang/String;

    .line 136
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "city_id"

    aput-object v2, v0, v1

    :goto_1
    sput-object v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 247
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void

    .line 106
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "callType"

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursorLock:Ljava/lang/Object;

    .line 218
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    .line 221
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    .line 253
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    .line 254
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentContactId:J

    .line 255
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentName:Ljava/lang/String;

    .line 256
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentPhoto:Landroid/graphics/Bitmap;

    .line 257
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentSimType:Z

    .line 258
    iput v4, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentPresence:I

    .line 259
    iput v4, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentChatCapability:I

    .line 260
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentMyPhonebookType:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    .line 262
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCacheList:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$2;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$3;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    .line 412
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$4;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    .line 422
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$5;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    .line 432
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$6;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    .line 442
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$7;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 451
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mEnterEmergencyMode:Z

    .line 453
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$8;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    .line 1553
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->updateTimeString()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIs24HourFormat:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setupTimeViewsIfCityId(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setupCityView(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setupTimeViews(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDurationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->resetNewCallsFlag()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCacheList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    return v0
.end method

.method private callEntry(I)V
    .locals 14
    .parameter "position"

    .prologue
    .line 1678
    if-gez p1, :cond_0

    .line 1682
    const/4 p1, 0x0

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1686
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1687
    .local v11, number:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1688
    .local v10, intent:Landroid/content/Intent;
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mEnterEmergencyMode:Z

    invoke-static {v11, v0}, Lcom/android/htccontacts/util/PhoneUtils;->isEmergencyClickable(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1747
    .end local v11           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1691
    .restart local v11       #number:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1697
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "number"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1698
    .local v13, selection:Ljava/lang/StringBuilder;
    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1700
    .local v12, personUrl:Landroid/net/Uri;
    const-string v0, "phones"

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1701
    .local v1, phoneUrl:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1702
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1703
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1704
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1705
    .local v8, id:J
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1707
    .end local v8           #id:J
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1729
    .end local v1           #phoneUrl:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #personUrl:Landroid/net/Uri;
    .end local v13           #selection:Ljava/lang/StringBuilder;
    :cond_5
    :goto_1
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1730
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1731
    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1732
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1713
    :cond_7
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 1714
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v7, :cond_5

    .line 1716
    const-string v0, "personId"

    iget-wide v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    iget-object v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1719
    const-string v0, "name"

    iget-object v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    :cond_8
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1723
    const-string v0, "hasPhoto"

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1735
    .end local v7           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_9
    invoke-static {v10}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1743
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #number:Ljava/lang/String;
    :cond_a
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1744
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1745
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private callTypeSelectionString(I)Ljava/lang/String;
    .locals 3
    .parameter "callType"

    .prologue
    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .local v0, callTypeSelection:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 823
    :cond_0
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 1589
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1590
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1592
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1593
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1594
    const v1, 0x7f0a014f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1595
    const v1, 0x7f0a0152

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1597
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1598
    return-void
.end method

.method private editNumberWithIpDialPrefix(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 292
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 341
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 305
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v2           #ipDialNumber:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$1;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Ljava/lang/String;)V

    .line 324
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v4, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x2090007

    invoke-direct {v7, p0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 341
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private getCityIdWidth()I
    .locals 2

    .prologue
    .line 1851
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCityIdWidth:I

    if-nez v0, :cond_0

    .line 1852
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCityIdWidth:I

    .line 1855
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCityIdWidth:I

    return v0
.end method

.method private getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 7

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v6

    .line 1970
    .local v6, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v2

    iget-object v3, v6, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getIpDialItemCount()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 2
    .parameter "day"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIs24HourFormat:Z

    invoke-static {v0, v1, p1, p2}, Lcom/htc/util/contacts/TimeUtils;->getFormatTime(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchEditIPDialActivity()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    return-void
.end method

.method private prepareQueryParameters()V
    .locals 7

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 782
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 785
    :cond_0
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 786
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    .line 814
    :cond_1
    :goto_0
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mUri:Landroid/net/Uri;

    .line 815
    return-void

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v5, v5, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v3, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 791
    .local v3, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 792
    .local v4, size:I
    if-lez v4, :cond_1

    .line 794
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 796
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v2, v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 797
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 798
    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    goto :goto_0

    .line 794
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private queryIpDialCursor()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 266
    new-instance v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;

    .line 267
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;

    const/16 v1, 0x7da

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$QueryIPDialHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private registerDateChangeReceiver()V
    .locals 2

    .prologue
    .line 1922
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1924
    .local v0, dateChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1925
    return-void
.end method

.method private registerDateFormatChangeReceiver()V
    .locals 2

    .prologue
    .line 1912
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v0, dateFormatChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1915
    return-void
.end method

.method private registerEmergencyModeChangeReceiver()V
    .locals 2

    .prologue
    .line 1951
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v0, emergencyModeChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1954
    return-void
.end method

.method private registerLocaleChangeReceiver()V
    .locals 2

    .prologue
    .line 1932
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v0, localeChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1935
    return-void
.end method

.method private registerTimeFormatChangeReceiver()V
    .locals 2

    .prologue
    .line 1762
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v0, timeFormatChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1765
    return-void
.end method

.method private registerTimeZoneChangeReceiver()V
    .locals 2

    .prologue
    .line 1942
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1944
    .local v0, timeZoneChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1945
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 938
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 939
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v3, "0"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 943
    const-string v0, " AND new=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x4

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 947
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 952
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    const-string v0, "number"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    aput-object v11, v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 981
    :cond_2
    :goto_0
    return-void

    .line 963
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 964
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v7, :cond_2

    .line 965
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIdsString()Ljava/lang/String;

    move-result-object v8

    .line 966
    .local v8, sRawIds:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 967
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string v0, "raw_contact_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const-string v0, " IN "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const/16 v0, 0x28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupCityView(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3
    .parameter "views"
    .parameter "c"
    .parameter "number"

    .prologue
    .line 1823
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1826
    const-string v0, ""

    .line 1827
    .local v0, cityId:Ljava/lang/String;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1830
    :cond_0
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1834
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1835
    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 1846
    .end local v0           #cityId:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1832
    .restart local v0       #cityId:Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1842
    :cond_3
    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupTimeViews(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V
    .locals 4
    .parameter "views"
    .parameter "date"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1774
    invoke-static {p0, p2, p3, v2}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 1775
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0, p2, p3, v2}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 1778
    .local v1, timeString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1779
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 1785
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1786
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1787
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 1792
    :goto_1
    return-void

    .line 1782
    :cond_0
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1789
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupTimeViewsIfCityId(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V
    .locals 8
    .parameter "views"
    .parameter "date"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1795
    invoke-static {p0, p2, p3, v6}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 1796
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0, p2, p3, v6}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    .line 1798
    .local v4, timeString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v5

    .line 1799
    .local v1, hasDate:Z
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 1801
    .local v2, hasTime:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1802
    if-eqz v2, :cond_2

    .line 1803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1804
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 1818
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .end local v1           #hasDate:Z
    .end local v2           #hasTime:Z
    :cond_0
    move v1, v6

    .line 1798
    goto :goto_0

    .restart local v1       #hasDate:Z
    :cond_1
    move v2, v6

    .line 1799
    goto :goto_1

    .line 1809
    .restart local v2       #hasTime:Z
    :cond_2
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 1812
    :cond_3
    if-eqz v2, :cond_4

    .line 1813
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 1815
    :cond_4
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private startAsyncQuery()V
    .locals 11

    .prologue
    const/4 v1, 0x2

    .line 834
    const-string v8, ""

    .line 836
    .local v8, callTypeString:Ljava/lang/String;
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I

    packed-switch v0, :pswitch_data_0

    .line 857
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->prepareQueryParameters()V

    .line 862
    :goto_0
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 865
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 883
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const-string v0, "number"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v0, ",\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v0, "\')"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 892
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->CALLS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 839
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->prepareQueryParameters()V

    goto :goto_0

    .line 844
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->callTypeSelectionString(I)Ljava/lang/String;

    move-result-object v8

    .line 845
    goto :goto_0

    .line 849
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->callTypeSelectionString(I)Ljava/lang/String;

    move-result-object v8

    .line 850
    goto :goto_0

    .line 854
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->callTypeSelectionString(I)Ljava/lang/String;

    move-result-object v8

    .line 855
    goto :goto_0

    .line 899
    .restart local v9       #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 906
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .restart local v9       #selection:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v0, "="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentContactId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-nez v0, :cond_6

    .line 910
    iget-wide v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentContactId:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 916
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 917
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 918
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :cond_5
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10

    .line 924
    :try_start_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 925
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->CALLS_PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    monitor-exit v10

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 912
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private unregisterDateChangeReceiver()V
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1929
    return-void
.end method

.method private unregisterDateFormatChangeReceiver()V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1919
    return-void
.end method

.method private unregisterEmergencyModeChangeReceiver()V
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1958
    return-void
.end method

.method private unregisterLocaleChangeReceiver()V
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1939
    return-void
.end method

.method private unregisterTimeFormatChangeReceiver()V
    .locals 1

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1769
    return-void
.end method

.method private unregisterTimeZoneChangeReceiver()V
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1949
    return-void
.end method

.method private updateTimeString()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1860
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCacheList:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    .line 1861
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;

    .line 1862
    .local v1, entry:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;
    iget-wide v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->date:J

    invoke-static {p0, v9, v10, v8}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, dateString:Ljava/lang/String;
    iget-wide v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->date:J

    invoke-static {p0, v9, v10, v8}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    .line 1864
    .local v6, timeString:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v9, :cond_5

    .line 1866
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v7

    .line 1867
    .local v2, hasDate:Z
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move v3, v7

    .line 1869
    .local v3, hasTime:Z
    :goto_2
    if-eqz v2, :cond_3

    .line 1870
    if-eqz v3, :cond_2

    .line 1871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1872
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #hasDate:Z
    .end local v3           #hasTime:Z
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_0
    move v2, v8

    .line 1866
    goto :goto_1

    .restart local v2       #hasDate:Z
    :cond_1
    move v3, v8

    .line 1867
    goto :goto_2

    .line 1877
    .restart local v3       #hasTime:Z
    :cond_2
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1880
    :cond_3
    if-eqz v3, :cond_4

    .line 1881
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1883
    :cond_4
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1887
    .end local v2           #hasDate:Z
    .end local v3           #hasTime:Z
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1888
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 1894
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1895
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    .line 1896
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1891
    :cond_6
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_3

    .line 1898
    :cond_7
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1904
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #entry:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #timeString:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1905
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 1908
    :cond_9
    return-void
.end method


# virtual methods
.method addToContact(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 1413
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1415
    .local v1, handlerView:Landroid/view/View;
    new-instance v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Ljava/lang/String;)V

    .line 1417
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x7f07007c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1418
    .local v3, numbertext:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    const v6, 0x7f07007d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1421
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1422
    const v6, 0x7f07007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1423
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1425
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1426
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f0a00e1

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1427
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1428
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1429
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1430
    new-instance v6, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$11;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$11;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1436
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1438
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    .line 1439
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1441
    return-void
.end method

.method public afterDelete(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 1980
    return-void
.end method

.method public beforeDelete()V
    .locals 0

    .prologue
    .line 1984
    return-void
.end method

.method editNumberBeforeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1961
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 1962
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-wide v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 1963
    .local v0, contactId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1965
    .local v3, contactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v4
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 750
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 776
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 754
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v4, 0x2f1

    if-ne v4, p1, :cond_3

    .line 756
    const-string v4, "pure_flickr"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 758
    .local v0, bPureFlickr:Z
    const-string v4, "rollback_contact"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 760
    .local v1, bShouldRollBack:Z
    if-eq v5, v0, :cond_1

    if-ne v5, v1, :cond_2

    .line 761
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 762
    .local v3, uriFixed:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 764
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/HtcContactInfo;->forceContactChange(Landroid/net/Uri;)V

    .line 775
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v3           #uriFixed:Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 767
    :cond_3
    if-ne v5, p1, :cond_2

    .line 768
    if-eqz p3, :cond_2

    .line 769
    const-string v4, "DefaultTab"

    const-string v5, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->finish()V

    goto :goto_1
.end method

.method public onContactChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "infoReadyType"

    .prologue
    const/4 v5, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    .line 512
    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 514
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, "CONTACT_INFO_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->prepareQueryParameters()V

    .line 516
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    if-nez v1, :cond_2

    .line 517
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V

    .line 518
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->resetNewCallsFlag()V

    .line 529
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    .line 532
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_1
    return-void

    .line 520
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_2
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    .line 521
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$10;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$10;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    const-wide/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1606
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    .local v2, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1639
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    .end local v2           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_1
    :goto_1
    return v6

    .line 1607
    :catch_0
    move-exception v1

    .line 1608
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v6, "ContactDetailCallHistoryActivity"

    const-string v8, "bad menuInfoIn"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 1609
    goto :goto_1

    .line 1614
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :sswitch_0
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;

    iget v9, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1615
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1617
    .local v4, tmpId:J
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calls._id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 1619
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V

    goto :goto_1

    .line 1626
    .end local v4           #tmpId:J
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getIpDialItemCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 1627
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1628
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1629
    iget v7, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1630
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1631
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 1634
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->launchEditIPDialActivity()V

    goto :goto_0

    .line 1612
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 554
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 556
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setContentView(I)V

    .line 559
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 560
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 561
    const-string v2, "independent"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    .line 562
    const-string v2, "_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentContactId:J

    .line 563
    const-string v2, "independentName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentName:Ljava/lang/String;

    .line 564
    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentPhoto:Landroid/graphics/Bitmap;

    .line 565
    const-string v2, "SimType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentSimType:Z

    .line 566
    const-string v2, "Presence"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentPresence:I

    .line 567
    const-string v2, "ChatCapability"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentChatCapability:I

    .line 568
    const-string v2, "MyPhonebookType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentMyPhonebookType:Z

    .line 569
    const-string v2, "independentUnknown"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    .line 570
    const-string v2, "independentUnknownNumber"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setTitleBar()V

    .line 586
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 587
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->setDefaultTitleVisibility(I)V

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 600
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 601
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v2, 0x7f0a0379

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 607
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContactType()I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    .line 612
    :cond_2
    new-instance v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;

    .line 613
    new-instance v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    .line 614
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 615
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setListLoading()V

    .line 620
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20809b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20809b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 622
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20809b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 623
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDurationText:Ljava/lang/String;

    .line 627
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerTimeFormatChangeReceiver()V

    .line 628
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerDateFormatChangeReceiver()V

    .line 629
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerDateChangeReceiver()V

    .line 630
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerLocaleChangeReceiver()V

    .line 631
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerTimeZoneChangeReceiver()V

    .line 632
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->registerEmergencyModeChangeReceiver()V

    .line 633
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 1323
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    .local v5, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 1330
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    const/4 v10, 0x0

    .line 1331
    .local v10, unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v11, v12, :cond_0

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1334
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v10

    .line 1336
    :cond_1
    if-nez v1, :cond_2

    if-eqz v10, :cond_2

    .line 1337
    move-object v1, v10

    .line 1339
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    iget v12, v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1341
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1342
    .local v7, number:Ljava/lang/String;
    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v7, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1346
    .local v8, numberUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1347
    .local v9, title:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1349
    .local v6, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v11, :cond_a

    .line 1362
    :cond_3
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1363
    move-object v9, v6

    .line 1367
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1370
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->getNumberType()I

    move-result v11

    invoke-static {v11}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    if-eqz v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/android/htccontacts/util/ContactsUtils;->getNumberType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1372
    :cond_5
    sget-boolean v11, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v11, :cond_6

    .line 1374
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f0a03ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v7, v12}, Lcom/android/htccontacts/util/PhoneUtils;->callIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1379
    :cond_6
    invoke-static {v7}, Lcom/htc/util/phone/DialUtils;->createEditBeforeCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1381
    .local v4, editB4CallIntent:Landroid/content/Intent;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f0a018e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v11

    const v12, 0x108003e

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1387
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f0a018d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SENDTO"

    const-string v14, "sms"

    const/4 v15, 0x0

    invoke-static {v14, v7, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v11

    const v12, 0x1080050

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1394
    .end local v4           #editB4CallIntent:Landroid/content/Intent;
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const v14, 0x7f0a037d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const v12, 0x108003c

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1402
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v11

    if-nez v11, :cond_8

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 1405
    :cond_8
    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x7

    const v14, 0x7f0a0391

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1409
    .end local v1           #contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v5           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #numberUri:Landroid/net/Uri;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    :cond_9
    :goto_2
    return-void

    .line 1324
    :catch_0
    move-exception v3

    .line 1325
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v11, "ContactDetailCallHistoryActivity"

    const-string v12, "bad menuInfoIn"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1352
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v1       #contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v5       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    .restart local v8       #numberUri:Landroid/net/Uri;
    .restart local v9       #title:Ljava/lang/String;
    .restart local v10       #unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    :cond_a
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v11, v12, :cond_b

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1355
    const/4 v11, 0x7

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1357
    :cond_b
    if-eqz v1, :cond_3

    .line 1358
    iget-object v6, v1, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1365
    :cond_c
    move-object v9, v7

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1246
    const v0, 0x7f0a022d

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080331

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1248
    const v0, 0x7f0a023f

    invoke-interface {p1, v2, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1251
    const/4 v0, 0x6

    const v1, 0x7f0a013a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1252
    const/4 v0, 0x4

    const v1, 0x7f0a013c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1254
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1255
    return v3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 724
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDestroy()V

    .line 726
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 732
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 735
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterTimeFormatChangeReceiver()V

    .line 736
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterDateFormatChangeReceiver()V

    .line 737
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterDateChangeReceiver()V

    .line 738
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterLocaleChangeReceiver()V

    .line 739
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterTimeZoneChangeReceiver()V

    .line 740
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->unregisterEmergencyModeChangeReceiver()V

    .line 741
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 742
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->beforeDelete()V

    .line 744
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 746
    :cond_1
    return-void
.end method

.method public onDetailInfoInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 481
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDetailInfoInit()V

    .line 482
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    if-ne v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->resetNewCallsFlag()V

    .line 486
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->prepareQueryParameters()V

    .line 487
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    if-nez v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V

    .line 489
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->resetNewCallsFlag()V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    .line 492
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$9;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$9;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1656
    packed-switch p1, :pswitch_data_0

    .line 1660
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1658
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1656
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1645
    packed-switch p1, :pswitch_data_0

    .line 1651
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1647
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    .line 1648
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->callEntry(I)V

    goto :goto_0

    .line 1645
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 1751
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 1755
    .local v0, canDiale:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1756
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNeedDelay:Z

    .line 1757
    invoke-direct {p0, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->callEntry(I)V

    .line 1759
    :cond_0
    return-void

    .line 1751
    .end local v0           #canDiale:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1549
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 1490
    :pswitch_1
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailCallHistoryActivity]Save to contacts"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->addToContact(Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    :pswitch_2
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailCallHistoryActivity]Delete all call history"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const v3, 0x7f0a037f

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v3, v4}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1503
    :pswitch_3
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailCallHistoryActivity]Edit contact"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1505
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1510
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailCallHistoryActivity]Delete contact"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1512
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 1513
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 1518
    .end local v0           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_5
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailCallHistoryActivity]View settings"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a013a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060005

    iget v5, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I

    new-instance v6, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 1487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 719
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onPause()V

    .line 720
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1262
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 1263
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    const/4 v6, 0x0

    .line 1264
    .local v6, unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    const/4 v8, 0x2

    iget v9, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I

    if-eq v10, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1267
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v6

    .line 1269
    :cond_1
    if-nez v1, :cond_2

    if-eqz v6, :cond_2

    .line 1270
    move-object v1, v6

    .line 1272
    :cond_2
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1273
    .local v5, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1278
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1280
    if-eqz v1, :cond_3

    .line 1282
    iget-object v8, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 1284
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v8, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 1286
    iget-object v8, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 1288
    .local v2, contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v8, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->getNumberType()I

    move-result v8

    invoke-static {v8}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1291
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1302
    .end local v2           #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v4           #i:I
    :cond_3
    :goto_1
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1303
    .local v3, delete:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_7

    .line 1304
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1309
    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->isAllSocialNetworkAccountTyupe()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1310
    .local v0, bEditable:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    if-eqz v8, :cond_4

    .line 1311
    const/4 v0, 0x0

    .line 1313
    :cond_4
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1316
    return v7

    .line 1284
    .end local v0           #bEditable:Z
    .end local v3           #delete:Landroid/view/MenuItem;
    .restart local v2       #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .restart local v4       #i:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1299
    .end local v2           #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v4           #i:I
    :cond_6
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1306
    .restart local v3       #delete:Landroid/view/MenuItem;
    :cond_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    move v0, v7

    .line 1309
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 469
    const-string v0, "call_log_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I

    .line 470
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    .line 637
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onResume()V

    .line 638
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->queryIpDialCursor()V

    .line 643
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z

    if-eqz v0, :cond_3

    .line 666
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->prepareQueryParameters()V

    .line 668
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V

    .line 672
    :cond_2
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z

    if-eqz v0, :cond_3

    .line 673
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V

    .line 674
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentName:Ljava/lang/String;

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentPresence:I

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentChatCapability:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getTitleString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentPhoto:Landroid/graphics/Bitmap;

    iget-boolean v7, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentSimType:Z

    iget-boolean v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentMyPhonebookType:Z

    iget-boolean v9, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    .line 693
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->updateTimeString()V

    .line 694
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 475
    const-string v0, "call_log_type"

    iget v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 703
    if-eqz p1, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->resetNewCallsFlag()V

    .line 706
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 707
    .local v1, telephonyBinder:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 708
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v1           #telephonyBinder:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ContactDetailCallHistoryActivity"

    const-string v3, "Failed to clear missed calls notification due to remote excetpion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 543
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 544
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 545
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 549
    :cond_0
    return-void
.end method
