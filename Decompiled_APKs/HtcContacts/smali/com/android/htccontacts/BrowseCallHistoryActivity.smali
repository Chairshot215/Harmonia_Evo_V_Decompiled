.class public Lcom/android/htccontacts/BrowseCallHistoryActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$CallLogObserver;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;,
        Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ACCOUNT_NAME_INDEX:I = 0x0

.field private static final ACCOUNT_TYPE_COLUMN_INDEX:I = 0xb

.field private static final BEARER_COLUMN_INDEX:I = 0x10

.field private static final CALLER_NAME_COLUMN_INDEX:I = 0x5

.field private static final CALLER_NUMBERLABEL_COLUMN_INDEX:I = 0x7

.field private static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x6

.field private static final CALL_LOG_ALL:I = 0x0

.field private static final CALL_LOG_INCOMING:I = 0x1

.field private static final CALL_LOG_MISSED:I = 0x3

.field private static final CALL_LOG_OUTGOING:I = 0x2

.field protected static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field protected static final CALL_LOG_PROJECTION_WITH_PRESENCE:[Ljava/lang/String; = null

.field protected static final CALL_LOG_PROJECTION_WITH_SDN:[Ljava/lang/String; = null

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final CITY_ID_INDEX:I = 0x0

.field private static final CNAME:Ljava/lang/String; = "cname"

.field private static final CNAME_COLUMN_INDEX:I = 0x11

.field private static final CONTACT_CHAT_CAPABILITY_INDEX:I = 0x13

.field private static final CONTACT_ID_COLUMN_INDEX:I = 0xc

.field private static final CONTACT_LOOKUP_COLUMN_INDEX:I = 0xd

.field private static final CONTACT_PRESENCE_INDEX:I = 0x12

.field private static final CONTACT_SENDTOVOICEMAIL_INDEX:I = 0xe

.field private static final CONTACT_VIP_INDEX:I = 0xf

.field private static final DATE_COLUMN_INDEX:I = 0x2

.field private static final DIALOG_VIEW_ALL:I = 0x0

.field private static final DIALOG_VIEW_INCOMING:I = 0x1

.field private static final DIALOG_VIEW_MISSED:I = 0x3

.field private static final DIALOG_VIEW_OUTGOING:I = 0x2

.field private static final DISPLAY_NAME_COLUMN_INDEX:I = 0xa

.field private static final DURATION_COLUMN_INDEX:I = 0x3

.field static final ECLAIR_PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_COLUMN_INDEX:I = 0x0

.field public static final IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x7da

.field static final LABEL_COLUMN_INDEX:I = 0x3

.field static final MATCHED_NUMBER_COLUMN_INDEX:I = 0x4

.field private static final MENU_ADD_AS_BLACKLIST:I = 0x7

.field private static final MENU_ADD_TO_CONTACT:I = 0x8

.field private static final MENU_CHANGE_FONT_SIZE:I = 0xe

.field private static final MENU_HELP:I = 0xd

.field private static final MENU_ITEM_COPY_NUMBER:I = 0x9

.field private static final MENU_ITEM_DELETE:I = 0x1

.field private static final MENU_ITEM_DELETE_ALL:I = 0x2

.field private static final MENU_ITEM_DELETE_CALL_HISTORY:I = 0xc

.field private static final MENU_ITEM_DIAL_VT:I = 0xa

.field private static final MENU_ITEM_EDIT_NUMBER_BEFORE_CALL:I = 0x5

.field private static final MENU_ITEM_IP_DIAL:I = 0xb

.field private static final MENU_ITEM_VIEW:I = 0x4

.field private static final MENU_ITEM_VIEW_CONTACT:I = 0x3

.field private static final MENU_ITEM_VIEW_DETAIL_CALL_HISTORY:I = 0x6

.field private static final MSG_REQUERY_DELAYED:I = 0xc7

.field static final NAME_COLUMN_INDEX:I = 0x1

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field static final PERSON_ID_COLUMN_INDEX:I = 0x0

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_TYPE_COLUMN_INDEX:I = 0x2

.field private static final PHOTO_COLUMN_INDEX:I = 0x9

.field private static final QUERY_TOKEN:I = 0x35

.field private static final RAW_CONTACT_ID_COLUMN_INDEX:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BrowseCallHistoryActivity"

.field private static final UPDATE_TOKEN:I = 0x36

.field private static mIsFromBlockCallDelete:Z

.field private static mIsFromCallLogDelete:Z

.field private static misFromBlockCallView:Z


# instance fields
.field protected mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

.field private mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogType:I

.field private mCityIdWidth:I

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field mDeleteItem:Landroid/view/MenuItem;

.field private mDrawableDefaultPhoto:Landroid/graphics/drawable/Drawable;

.field private mDrawableDefaultPhotoSim:Landroid/graphics/drawable/Drawable;

.field private mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private mEmergencyNumbers:[Ljava/lang/String;

.field protected mEnterEmergencyMode:Z

.field private mFontSize:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

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

.field private mIsCurrent24HourFormat:Z

.field private mIsDeleteAction:Z

.field public mIsDirty:Z

.field protected mIsForegroundActivity:Z

.field private mIsPenddingDateChange:Z

.field private mIsPenddingTimeChange:Z

.field protected mQueryHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;

.field mQueryIPDialHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;

.field private mRecentCallDrawable:Landroid/graphics/drawable/Drawable;

.field mRecentCallsItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveToCotnactDialog:Landroid/app/Dialog;

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mUIHandler:Landroid/os/Handler;

.field mViewItem:Landroid/view/MenuItem;

.field private mVoiceCommandActivated:Z

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

.field private tempAdapterCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

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

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "city_id"

    aput-object v2, v0, v1

    :goto_0
    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 169
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x15

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

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "city_id"

    aput-object v2, v0, v1

    :goto_1
    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CALL_LOG_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    .line 217
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x14

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

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "city_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    :goto_2
    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CALL_LOG_PROJECTION_WITH_SDN:[Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    :goto_3
    sput v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CITY_ID_INDEX:I

    .line 284
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    sput v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->ACCOUNT_NAME_INDEX:I

    .line 288
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 296
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->ECLAIR_PHONES_PROJECTION:[Ljava/lang/String;

    .line 402
    sput-boolean v3, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromBlockCallDelete:Z

    .line 403
    sput-boolean v3, Lcom/android/htccontacts/BrowseCallHistoryActivity;->misFromBlockCallView:Z

    .line 404
    sput-boolean v3, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromCallLogDelete:Z

    .line 420
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void

    .line 125
    :cond_0
    const/16 v0, 0x12

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

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cname"

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 169
    :cond_1
    const/16 v0, 0x14

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

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 217
    :cond_2
    const/16 v0, 0x13

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

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "callType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    goto/16 :goto_2

    .line 283
    :cond_3
    const/16 v0, 0x12

    goto/16 :goto_3

    .line 284
    :cond_4
    const/16 v0, 0x12

    goto/16 :goto_4
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 345
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mFontSize:I

    .line 361
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 389
    iput-boolean v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDeleteAction:Z

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    .line 405
    iput-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDeleteItem:Landroid/view/MenuItem;

    .line 406
    iput-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mViewItem:Landroid/view/MenuItem;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    .line 652
    iput-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 682
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$2;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 692
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$3;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$4;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    .line 712
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$5;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    .line 721
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$6;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    .line 731
    iput-boolean v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mEnterEmergencyMode:Z

    .line 733
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$7;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    .line 1566
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    .line 1571
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$8;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mUIHandler:Landroid/os/Handler;

    .line 2458
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->updateTimeString()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromBlockCallDelete:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromCallLogDelete:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/BrowseCallHistoryActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mEmergencyNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/BrowseCallHistoryActivity;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupTimeViewsIfCityId(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/BrowseCallHistoryActivity;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupCityView(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/BrowseCallHistoryActivity;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupTimeViews(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDeleteAction:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/htccontacts/BrowseCallHistoryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDeleteAction:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mFontSize:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->resetEmptyView()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/htccontacts/BrowseCallHistoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->addContactToBlacklist(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->doDeleteAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private addContactToBlacklist(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 2516
    iget-object v7, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-nez v7, :cond_1

    .line 2533
    :cond_0
    :goto_0
    return-void

    .line 2518
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2519
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2520
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2521
    const/16 v7, 0xc

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2522
    .local v4, person_id:J
    const/16 v7, 0xb

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2523
    .local v0, accountType:Ljava/lang/String;
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2524
    .local v3, number:Ljava/lang/String;
    const-string v7, "com.anddroid.contacts.sim"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2525
    .local v2, isSim:Z
    :goto_1
    invoke-static {p0, v4, v5, v2, v3}, Lcom/htc/util/contacts/BlacklistUtils;->addContactToBlacklist(Landroid/content/Context;JZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2526
    const v7, 0x7f0a030c

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2528
    iget-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xc7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v2           #isSim:Z
    :cond_2
    move v2, v6

    .line 2524
    goto :goto_1
.end method

.method private callEntry(I)V
    .locals 13
    .parameter "position"

    .prologue
    const/4 v12, 0x1

    .line 2610
    if-gez p1, :cond_0

    .line 2614
    const/4 p1, 0x0

    .line 2616
    :cond_0
    iget-object v9, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 2617
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2618
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2619
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "-1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "-2"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "-3"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2698
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2626
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    iget-boolean v9, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mEnterEmergencyMode:Z

    invoke-static {v4, v9}, Lcom/android/htccontacts/util/PhoneUtils;->isEmergencyClickable(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2629
    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2638
    .local v1, callType:I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v4, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2640
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x1080

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2643
    const/16 v9, 0xc

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2644
    .local v5, personId:J
    const/16 v9, 0xa

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2645
    .local v8, sName:Ljava/lang/String;
    const/16 v9, 0x9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2646
    .local v7, photoId:Ljava/lang/String;
    const/16 v9, 0x11

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, cName:Ljava/lang/String;
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 2650
    const-string v9, "personId"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2652
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2653
    const-string v9, "name"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2656
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2657
    const-string v9, "hasPhoto"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2660
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2661
    const-string v9, "number"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2664
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2665
    const-string v9, "numberType"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2668
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2669
    const-string v9, "cname"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2673
    :cond_7
    const-string v9, "fromDialer"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2686
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2687
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2688
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2675
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2676
    const-string v9, "cname"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2678
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2679
    const-string v9, "number"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    :cond_b
    const-string v9, "fromDialer"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2691
    :cond_c
    invoke-static {v3}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method public static createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .parameter "date"
    .parameter "res"

    .prologue
    .line 2909
    move-object v1, p0

    .line 2910
    .local v1, result:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2912
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2913
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2914
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2924
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-object v1

    .line 2917
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "label"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 2875
    move-object v1, p0

    .line 2876
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2879
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2880
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2882
    const/16 v3, 0x2b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2888
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2890
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2901
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2905
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-object v1

    .line 2893
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2898
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .parameter "time"
    .parameter "res"

    .prologue
    .line 2928
    move-object v1, p0

    .line 2929
    .local v1, result:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2931
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2932
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2933
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2943
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-object v1

    .line 2936
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private createFontSizeDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2274
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private doConfirm()V
    .locals 4

    .prologue
    .line 2707
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a023f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a037f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a014f

    new-instance v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$13;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$13;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0152

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2720
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 2721
    return-void
.end method

.method private doDeleteAll()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2724
    const/4 v1, 0x0

    .line 2725
    .local v1, where:Ljava/lang/String;
    iget v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    if-eqz v2, :cond_0

    .line 2726
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "type"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2727
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    if-ne v2, v3, :cond_1

    .line 2728
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2739
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2741
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2747
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    .line 2748
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    .line 2749
    return-void

    .line 2730
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    if-ne v2, v4, :cond_2

    .line 2731
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2733
    :cond_2
    iget v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    if-ne v2, v5, :cond_3

    .line 2734
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2735
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2737
    :cond_3
    const-string v2, ">0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private editNumberWithIpDialPrefix(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 453
    iget-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 500
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 465
    iget-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 466
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v2           #ipDialNumber:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$1;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;Ljava/lang/String;)V

    .line 483
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v4, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 494
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

    .line 500
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "number"

    .prologue
    .line 2580
    const/4 v7, 0x0

    .line 2582
    .local v7, matchingNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    .line 2583
    .local v6, ci:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    if-eqz v6, :cond_3

    sget-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    if-eq v6, v0, :cond_3

    .line 2584
    iget-object v7, v6, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->number:Ljava/lang/String;

    .line 2601
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 2604
    :cond_1
    move-object p1, v7

    .line 2606
    :cond_2
    return-object p1

    .line 2587
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/BrowseCallHistoryActivity;->ECLAIR_PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2591
    .local v8, phonesCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2592
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2593
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2595
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2597
    .end local v8           #phonesCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCityIdWidth()I
    .locals 2

    .prologue
    .line 3020
    iget v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCityIdWidth:I

    if-nez v0, :cond_0

    .line 3021
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCityIdWidth:I

    .line 3024
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCityIdWidth:I

    return v0
.end method

.method private getIpDialItemCount()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1829
    const/4 v0, 0x0

    .line 1831
    .local v0, number:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-ne v1, v2, :cond_1

    .line 1832
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1840
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 1842
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    .line 1845
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object v1

    .line 1835
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initResourceDrawable()V
    .locals 3

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1820
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallDrawable:Landroid/graphics/drawable/Drawable;

    .line 1822
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20809b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 1823
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20809b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 1824
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20809b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 1825
    return-void
.end method

.method private launchEditIPDialActivity()V
    .locals 2

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method private queryIpDialCursor()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 427
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;

    .line 428
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;

    const/16 v1, 0x7da

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryIPDialHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private registerDateChangeReceiver()V
    .locals 2

    .prologue
    .line 2837
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2839
    .local v0, dateChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2840
    return-void
.end method

.method private registerDateFormatChangeReceiver()V
    .locals 2

    .prologue
    .line 2827
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2829
    .local v0, dateFormatChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2830
    return-void
.end method

.method private registerEmergencyModeChangeReceiver()V
    .locals 2

    .prologue
    .line 2866
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2868
    .local v0, emergencyModeChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2869
    return-void
.end method

.method private registerLocaleChangeReceiver()V
    .locals 2

    .prologue
    .line 2847
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2849
    .local v0, localeChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2850
    return-void
.end method

.method private registerTimeFormatChangeReceiver()V
    .locals 2

    .prologue
    .line 2760
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2762
    .local v0, timeFormatChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2763
    return-void
.end method

.method private registerTimeZoneChangeReceiver()V
    .locals 2

    .prologue
    .line 2857
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2859
    .local v0, timeZoneChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2860
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1850
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1852
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1855
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1858
    return-void
.end method

.method private setupCityView(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3
    .parameter "cache"
    .parameter "c"
    .parameter "number"

    .prologue
    .line 2999
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3002
    sget v1, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CITY_ID_INDEX:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3003
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3004
    iget-object v1, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 3017
    .end local v0           #cityId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3012
    .restart local v0       #cityId:Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupTimeViews(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V
    .locals 5
    .parameter "cache"
    .parameter "date"

    .prologue
    const/4 v2, 0x0

    .line 2948
    invoke-static {p0, p2, p3, v2}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 2949
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0, p2, p3, v2}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 2951
    .local v1, timeString:Ljava/lang/String;
    const-string v2, "BrowseCallHistoryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const-string v2, "BrowseCallHistoryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2955
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 2956
    iget-object v2, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 2961
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2962
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 2963
    iget-object v2, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 2968
    :goto_1
    return-void

    .line 2958
    :cond_0
    iget-object v2, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2965
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupTimeViewsIfCityId(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V
    .locals 8
    .parameter "cache"
    .parameter "date"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2971
    invoke-static {p0, p2, p3, v6}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0, p2, p3, v6}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    .line 2974
    .local v4, timeString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v5

    .line 2975
    .local v1, hasDate:Z
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 2977
    .local v2, hasTime:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2978
    if-eqz v2, :cond_2

    .line 2979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2980
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    iget-object v5, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 2994
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .end local v1           #hasDate:Z
    .end local v2           #hasTime:Z
    :cond_0
    move v1, v6

    .line 2974
    goto :goto_0

    .restart local v1       #hasDate:Z
    :cond_1
    move v2, v6

    .line 2975
    goto :goto_1

    .line 2985
    .restart local v2       #hasTime:Z
    :cond_2
    iget-object v5, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 2988
    :cond_3
    if-eqz v2, :cond_4

    .line 2989
    iget-object v5, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 2991
    :cond_4
    iget-object v5, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showConfirmBlockCallerDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 2500
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2502
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a02f8

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2503
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2504
    const v2, 0x104000a

    new-instance v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$12;

    invoke-direct {v3, p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$12;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2509
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2510
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2511
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 2512
    .local v1, d:Landroid/app/Dialog;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 2513
    return-void
.end method

.method private unregisterDateChangeReceiver()V
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2844
    return-void
.end method

.method private unregisterDateFormatChangeReceiver()V
    .locals 1

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2834
    return-void
.end method

.method private unregisterEmergencyModeChangeReceiver()V
    .locals 1

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2873
    return-void
.end method

.method private unregisterLocaleChangeReceiver()V
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2854
    return-void
.end method

.method private unregisterTimeFormatChangeReceiver()V
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2767
    return-void
.end method

.method private unregisterTimeZoneChangeReceiver()V
    .locals 1

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2864
    return-void
.end method

.method private updateTimeString()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2771
    iget-object v9, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    .line 2772
    iget-object v9, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    .line 2773
    .local v0, cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    iget-wide v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->date:J

    invoke-static {p0, v9, v10, v8}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 2774
    .local v1, dateString:Ljava/lang/String;
    iget-wide v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->date:J

    invoke-static {p0, v9, v10, v8}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    .line 2776
    .local v6, timeString:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v9, :cond_5

    .line 2778
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v7

    .line 2779
    .local v2, hasDate:Z
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move v3, v7

    .line 2781
    .local v3, hasTime:Z
    :goto_2
    if-eqz v2, :cond_3

    .line 2782
    if-eqz v3, :cond_2

    .line 2783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2784
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2786
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #hasDate:Z
    .end local v3           #hasTime:Z
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_0
    move v2, v8

    .line 2778
    goto :goto_1

    .restart local v2       #hasDate:Z
    :cond_1
    move v3, v8

    .line 2779
    goto :goto_2

    .line 2789
    .restart local v3       #hasTime:Z
    :cond_2
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2792
    :cond_3
    if-eqz v3, :cond_4

    .line 2793
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2795
    :cond_4
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2800
    .end local v2           #hasDate:Z
    .end local v3           #hasTime:Z
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2801
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 2802
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 2807
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2808
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    .line 2809
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2804
    :cond_6
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_3

    .line 2811
    :cond_7
    iget-object v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2819
    .end local v0           #cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    .end local v1           #dateString:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #timeString:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 2820
    iget-object v7, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    iget-object v8, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 2823
    :cond_9
    return-void
.end method


# virtual methods
.method protected addToContact(Ljava/lang/String;)V
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2425
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003c

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2427
    .local v1, handlerView:Landroid/view/View;
    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2428
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2430
    new-instance v2, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;Ljava/lang/String;)V

    .line 2432
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x7f07007c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2433
    .local v3, numbertext:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2435
    const v6, 0x7f07007d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2436
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2437
    const v6, 0x7f07007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2438
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2440
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2441
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f0a00e1

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2442
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2443
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2444
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2445
    new-instance v6, Lcom/android/htccontacts/BrowseCallHistoryActivity$11;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$11;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2451
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2453
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    .line 2454
    iget-object v6, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 2456
    return-void
.end method

.method editNumberBeforeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 442
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 447
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getCheckArray()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 555
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object v0
.end method

.method protected getQueryUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1862
    iget v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    packed-switch v0, :pswitch_data_0

    .line 1873
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1864
    :pswitch_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    goto :goto_0

    .line 1866
    :pswitch_1
    const-string v0, "content://call_log/calls_photo/incoming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1868
    :pswitch_2
    const-string v0, "content://call_log/calls_photo/outgoing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1870
    :pswitch_3
    const-string v0, "content://call_log/calls_photo/missed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1862
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleStuffAfterOnResume()V
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->onPreDraw()Z

    .line 1759
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/PhoneUtils;->getEmergencyNumbers()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mEmergencyNumbers:[Ljava/lang/String;

    .line 1760
    return-void
.end method

.method protected initListHeaderView()V
    .locals 0

    .prologue
    .line 1676
    return-void
.end method

.method protected isFromBlockCallDelete(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 547
    sput-boolean p1, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromBlockCallDelete:Z

    .line 548
    return-void
.end method

.method protected isFromBlockCallView(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 551
    sput-boolean p1, Lcom/android/htccontacts/BrowseCallHistoryActivity;->misFromBlockCallView:Z

    .line 552
    return-void
.end method

.method protected isFromCallLogDelete(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 417
    sput-boolean p1, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromCallLogDelete:Z

    .line 418
    return-void
.end method

.method public notifyDirty()V
    .locals 1

    .prologue
    .line 2752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    .line 2753
    return-void
.end method

.method public notifySocialNetworkDirty()V
    .locals 0

    .prologue
    .line 2756
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 23
    .parameter "item"

    .prologue
    .line 2299
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2305
    .local v14, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 2420
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/BaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v20

    .end local v14           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :goto_1
    return v20

    .line 2300
    :catch_0
    move-exception v10

    .line 2301
    .local v10, e:Ljava/lang/ClassCastException;
    const-string v20, "BrowseCallHistoryActivity"

    const-string v21, "bad menuInfoIn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2302
    const/16 v20, 0x0

    goto :goto_1

    .line 2307
    .end local v10           #e:Ljava/lang/ClassCastException;
    .restart local v14       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 2308
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2309
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2310
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2311
    .local v15, number:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->addToContact(Ljava/lang/String;)V

    goto :goto_0

    .line 2317
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v15           #number:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 2318
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 2319
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2320
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2321
    .local v7, contactId:J
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2322
    .local v4, accountType:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2323
    .restart local v15       #number:Ljava/lang/String;
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2324
    .local v13, lookupKey:Ljava/lang/String;
    const-string v20, "com.anddroid.contacts.sim"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v12, 0x1

    .line 2325
    .local v12, isSim:Z
    :goto_2
    const/4 v11, 0x0

    .line 2326
    .local v11, intent:Landroid/content/Intent;
    const-wide/16 v20, 0x0

    cmp-long v20, v7, v20

    if-lez v20, :cond_4

    .line 2329
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2330
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    invoke-static {v7, v8, v13}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2333
    .local v19, uriLookup:Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 2334
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "account_type"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "com.anddroid.contacts.sim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2338
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2346
    .end local v19           #uriLookup:Landroid/net/Uri;
    :goto_3
    if-eqz v11, :cond_2

    .line 2347
    const-string v20, "DefaultTab"

    const-string v21, "PEOPLE_DETAIL_CALL_HISTORY"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2348
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2351
    .end local v4           #accountType:Ljava/lang/String;
    .end local v7           #contactId:J
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #isSim:Z
    .end local v13           #lookupKey:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 2324
    .restart local v4       #accountType:Ljava/lang/String;
    .restart local v7       #contactId:J
    .restart local v13       #lookupKey:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2344
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v12       #isSim:Z
    :cond_4
    invoke-static {v15}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_3

    .line 2355
    .end local v4           #accountType:Ljava/lang/String;
    .end local v7           #contactId:J
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #isSim:Z
    .end local v13           #lookupKey:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 2356
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 2357
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2359
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2360
    .local v5, callLogId:J
    sget-object v20, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 2361
    .local v18, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_5

    .line 2362
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDeleteAction:Z

    .line 2365
    .end local v5           #callLogId:J
    .end local v18           #uri:Landroid/net/Uri;
    :cond_5
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 2369
    .end local v9           #cursor:Landroid/database/Cursor;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 2370
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2371
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2373
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2374
    .local v16, person_id:J
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2375
    .restart local v4       #accountType:Ljava/lang/String;
    const-string v20, "com.anddroid.contacts.sim"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v12, 0x1

    .line 2376
    .restart local v12       #isSim:Z
    :goto_4
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_0

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v12}, Lcom/android/htccontacts/util/ContactsUtils;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v11

    .line 2378
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v20, "DefaultTab"

    const-string v21, "PEOPLE_DETAIL_VIEW_DETAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2375
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #isSim:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 2387
    .end local v4           #accountType:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #person_id:J
    :pswitch_5
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->showConfirmBlockCallerDialog(I)V

    goto/16 :goto_0

    .line 2393
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 2394
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 2395
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2396
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2397
    .restart local v15       #number:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/htccontacts/util/ContactsUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 2401
    .end local v15           #number:Ljava/lang/String;
    :cond_7
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 2406
    .end local v9           #cursor:Landroid/database/Cursor;
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getIpDialItemCount()I

    move-result v20

    if-lez v20, :cond_8

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 2408
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2409
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2410
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2411
    .restart local v15       #number:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2414
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v15           #number:Ljava/lang/String;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->launchEditIPDialActivity()V

    goto/16 :goto_0

    .line 2305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 1608
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1611
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x17

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xda

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1616
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->setFontSize(Landroid/content/Context;)V

    .line 1617
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mFontSize:I

    .line 1620
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 1622
    .local v2, parent:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    .line 1624
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupContentView()V

    .line 1628
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1629
    .local v1, emptyTextView:Landroid/widget/TextView;
    const v3, 0x7f0a0379

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1631
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->initResourceDrawable()V

    .line 1636
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setDefaultKeyMode(I)V

    .line 1638
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->initListHeaderView()V

    .line 1640
    new-instance v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    .line 1641
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1642
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1644
    new-instance v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;

    .line 1646
    new-instance v3, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 1650
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerTimeFormatChangeReceiver()V

    .line 1651
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerDateFormatChangeReceiver()V

    .line 1652
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerDateChangeReceiver()V

    .line 1653
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerLocaleChangeReceiver()V

    .line 1654
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerTimeZoneChangeReceiver()V

    .line 1655
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->registerEmergencyModeChangeReceiver()V

    .line 1656
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "raw_contacts"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1659
    .local v0, CONTACT_URI:Landroid/net/Uri;
    new-instance v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallLogObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallLogObserver;-><init>(Landroid/os/Handler;Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    iput-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 1660
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1666
    const v3, 0x7f0a00db

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setGenericTitleBar(I)V

    .line 1667
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 33
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 1991
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    .local v20, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 1999
    .local v10, cursor:Landroid/database/Cursor;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2000
    .local v21, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mEmergencyNumbers:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2002
    .local v22, numberType:I
    const/16 v23, 0x0

    .line 2003
    .local v23, numberUri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 2004
    .local v19, isVoicemail:Z
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 2005
    const v28, 0x7f0a016e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2018
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getContactInfo(Ljava/lang/String;)Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    move-result-object v13

    .line 2019
    .local v13, info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    if-eqz v13, :cond_10

    sget-object v28, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    move-object/from16 v0, v28

    if-eq v13, v0, :cond_10

    const/4 v9, 0x1

    .line 2026
    .local v9, contactInfoPresent:Z
    :goto_1
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 2027
    .local v24, personId:J
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-lez v28, :cond_11

    const/4 v14, 0x1

    .line 2029
    .local v14, isContact:Z
    :goto_2
    const/16 v27, 0x0

    .line 2030
    .local v27, title:Ljava/lang/String;
    if-nez v9, :cond_0

    if-eqz v14, :cond_13

    .line 2031
    :cond_0
    if-eqz v9, :cond_12

    .line 2032
    iget-object v0, v13, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 2041
    :cond_1
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2043
    invoke-static/range {v22 .. v22}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v18

    .line 2045
    .local v18, isSpecialNumber:Z
    sget-boolean v28, Lcom/android/htccontacts/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v28, :cond_14

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    const/4 v15, 0x1

    .line 2047
    .local v15, isN11Number:Z
    :goto_4
    sget-boolean v28, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v28, :cond_2

    if-eqz v23, :cond_2

    if-nez v19, :cond_2

    if-nez v18, :cond_2

    if-nez v15, :cond_2

    .line 2049
    const/16 v28, 0x0

    const/16 v29, 0xa

    const/16 v30, 0x0

    const v31, 0x7f0a03ca

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/PhoneUtils;->callIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2054
    :cond_2
    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x0

    const v31, 0x7f0a0381

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2058
    if-eqz v23, :cond_3

    if-nez v19, :cond_3

    if-nez v18, :cond_3

    if-nez v15, :cond_3

    .line 2059
    invoke-static/range {v21 .. v21}, Lcom/htc/util/phone/DialUtils;->createEditBeforeCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 2060
    .local v11, dialerEditor:Landroid/content/Intent;
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0x7f0a018e

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v28

    const v29, 0x108003e

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2068
    .end local v11           #dialerEditor:Landroid/content/Intent;
    :cond_3
    const/16 v17, 0x0

    .line 2071
    .local v17, isSimContact:Z
    if-eqz v14, :cond_15

    .line 2072
    const/16 v28, 0x0

    const/16 v29, 0x3

    const/16 v30, 0x0

    const v31, 0x7f0a0130

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2085
    :cond_4
    :goto_5
    if-eqz v23, :cond_5

    if-nez v19, :cond_5

    if-nez v18, :cond_5

    if-nez v15, :cond_5

    .line 2087
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0x7f0a018d

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v28

    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.SENDTO"

    const-string v31, "smsto"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v28

    const v29, 0x1080050

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2096
    :cond_5
    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const v31, 0x7f0a037d

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v28

    const v29, 0x108003c

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2104
    if-nez v9, :cond_6

    if-nez v14, :cond_6

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    if-nez v19, :cond_6

    if-nez v17, :cond_6

    if-nez v15, :cond_6

    if-nez v18, :cond_6

    .line 2112
    const/16 v28, 0x0

    const/16 v29, 0x8

    const/16 v30, 0x0

    const v31, 0x7f0a00e1

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2124
    :cond_6
    if-eqz v23, :cond_8

    if-nez v19, :cond_8

    if-nez v18, :cond_8

    if-nez v15, :cond_8

    .line 2125
    const/16 v28, 0xe

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2126
    .local v5, SendToVoicemail:I
    const/4 v6, 0x0

    .line 2127
    .local v6, Vip:I
    const/16 v16, 0x0

    .line 2128
    .local v16, isSIMSDN:Z
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 2129
    sget v28, Lcom/android/htccontacts/BrowseCallHistoryActivity;->ACCOUNT_NAME_INDEX:I

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2130
    .local v7, accountName:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/16 v16, 0x0

    .line 2132
    .end local v7           #accountName:Ljava/lang/String;
    :cond_7
    :goto_6
    sget-boolean v28, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v28, :cond_17

    const v26, 0x7f0a0355

    .line 2135
    .local v26, stringRes:I
    :goto_7
    move/from16 v0, v16

    invoke-static {v6, v5, v0}, Lcom/htc/util/contacts/BlacklistUtils;->couldAddToBlockCaller(IIZ)Z

    move-result v28

    if-eqz v28, :cond_8

    sget-boolean v28, Lcom/android/htccontacts/BrowseCallHistoryActivity;->misFromBlockCallView:Z

    if-nez v28, :cond_8

    .line 2136
    const/16 v28, 0x0

    const/16 v29, 0x7

    const/16 v30, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2142
    .end local v5           #SendToVoicemail:I
    .end local v6           #Vip:I
    .end local v16           #isSIMSDN:Z
    .end local v26           #stringRes:I
    :cond_8
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_9

    if-nez v18, :cond_9

    .line 2143
    const/16 v28, 0x0

    const/16 v29, 0x9

    const/16 v30, 0x9

    const v31, 0x7f0a0310

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2152
    :cond_9
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v28

    if-nez v28, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v28

    if-nez v28, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v28

    if-nez v28, :cond_a

    sget-short v28, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 2156
    :cond_a
    const/16 v28, 0x0

    const/16 v29, 0xb

    const/16 v30, 0xb

    const v31, 0x7f0a0391

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2160
    .end local v9           #contactInfoPresent:Z
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    .end local v14           #isContact:Z
    .end local v15           #isN11Number:Z
    .end local v17           #isSimContact:Z
    .end local v18           #isSpecialNumber:Z
    .end local v19           #isVoicemail:Z
    .end local v20           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #numberType:I
    .end local v23           #numberUri:Landroid/net/Uri;
    .end local v24           #personId:J
    .end local v27           #title:Ljava/lang/String;
    :cond_b
    :goto_8
    return-void

    .line 1992
    :catch_0
    move-exception v12

    .line 1993
    .local v12, e:Ljava/lang/ClassCastException;
    const-string v28, "BrowseCallHistoryActivity"

    const-string v29, "bad menuInfoIn"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2006
    .end local v12           #e:Ljava/lang/ClassCastException;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v19       #isVoicemail:Z
    .restart local v20       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v21       #number:Ljava/lang/String;
    .restart local v22       #numberType:I
    .restart local v23       #numberUri:Landroid/net/Uri;
    :cond_c
    const-string v28, "-2"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2007
    const v28, 0x7f0a0187

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 2008
    :cond_d
    const-string v28, "-3"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 2009
    const v28, 0x7f0a0188

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 2010
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 2011
    const v28, 0x7f0a0189

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2012
    const-string v28, "voicemail:x"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 2013
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2015
    :cond_f
    const-string v28, "tel"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_0

    .line 2019
    .restart local v13       #info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2027
    .restart local v9       #contactInfoPresent:Z
    .restart local v24       #personId:J
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2034
    .restart local v14       #isContact:Z
    .restart local v27       #title:Ljava/lang/String;
    :cond_12
    if-eqz v10, :cond_1

    .line 2035
    const/16 v28, 0xa

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_3

    .line 2039
    :cond_13
    move-object/from16 v27, v21

    goto/16 :goto_3

    .line 2045
    .restart local v18       #isSpecialNumber:Z
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2074
    .restart local v15       #isN11Number:Z
    .restart local v17       #isSimContact:Z
    :cond_15
    const/4 v8, 0x0

    .line 2076
    .local v8, cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    :try_start_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    move-object v8, v0

    .line 2077
    if-eqz v8, :cond_4

    iget-wide v0, v8, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mRecordNumber:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_4

    .line 2078
    const/16 v28, 0x0

    const/16 v29, 0x3

    const/16 v30, 0x0

    const v31, 0x7f0a0130

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2079
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 2130
    .end local v8           #cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    .restart local v5       #SendToVoicemail:I
    .restart local v6       #Vip:I
    .restart local v7       #accountName:Ljava/lang/String;
    .restart local v16       #isSIMSDN:Z
    :cond_16
    const-string v28, "SIM_SDN"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    goto/16 :goto_6

    .line 2132
    .end local v7           #accountName:Ljava/lang/String;
    :cond_17
    const v26, 0x7f0a030b

    goto/16 :goto_7

    .line 2081
    .end local v5           #SendToVoicemail:I
    .end local v6           #Vip:I
    .end local v16           #isSIMSDN:Z
    .restart local v8       #cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    :catch_1
    move-exception v28

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 1928
    const/4 v0, 0x4

    const v1, 0x7f0a013a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mViewItem:Landroid/view/MenuItem;

    .line 1930
    const v0, 0x7f0a03c3

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDeleteItem:Landroid/view/MenuItem;

    .line 1935
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v0, :cond_0

    .line 1936
    const/4 v0, 0x7

    const v1, 0x7f0a02f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1940
    :cond_0
    const/16 v0, 0xd

    const v1, 0x7f0a03c7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1943
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xda

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1947
    :cond_1
    const/16 v0, 0xe

    const v1, 0x7f0a03e5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1949
    :cond_2
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1950
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1778
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 1780
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1782
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1783
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1784
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1785
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1792
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1796
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1798
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    .line 1799
    .local v2, item:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->clean()V

    .line 1796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1802
    .end local v2           #item:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1805
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->finish()V

    .line 1808
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterTimeFormatChangeReceiver()V

    .line 1809
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterDateFormatChangeReceiver()V

    .line 1810
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterDateChangeReceiver()V

    .line 1811
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterLocaleChangeReceiver()V

    .line 1812
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterTimeZoneChangeReceiver()V

    .line 1813
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->unregisterEmergencyModeChangeReceiver()V

    .line 1814
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1816
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 2538
    packed-switch p1, :pswitch_data_0

    .line 2555
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 2540
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 2541
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 2543
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2544
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2546
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceCommandActivated:Z

    .line 2547
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2548
    :catch_0
    move-exception v2

    .line 2549
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceCommandActivated:Z

    goto :goto_0

    .line 2538
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2560
    packed-switch p1, :pswitch_data_0

    .line 2567
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2562
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceCommandActivated:Z

    if-nez v0, :cond_0

    .line 2563
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->callEntry(I)V

    .line 2565
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2560
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2703
    invoke-direct {p0, p3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->callEntry(I)V

    .line 2704
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2270
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 2167
    :pswitch_1
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[BrowseCallHistoryActivity]Delete All"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->doConfirm()V

    goto :goto_0

    .line 2173
    :pswitch_2
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[BrowseCallHistoryActivity]View Contact"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2175
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2176
    const-string v3, "DefaultTab"

    const-string v4, "PEOPLE_DETAIL_VIEW_DETAIL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2177
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2182
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[BrowseCallHistoryActivity]View settings"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a013a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060005

    iget v5, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    new-instance v6, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2238
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 2242
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_4
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[BrowseCallHistoryActivity]Add as blacklist"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2245
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.blacklist.HtcEnterBlacklistPwActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2247
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2253
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2254
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.HtcDeleteCallHistoryActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2261
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getHelpIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2262
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2266
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_7
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createFontSizeDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 2164
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1764
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 1765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsForegroundActivity:Z

    .line 1767
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->stopRequestProcessing()V

    .line 1768
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1955
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCount()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    .line 1957
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 1959
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDeleteItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    .line 1960
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1962
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mViewItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 1963
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mViewItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1978
    :cond_3
    :goto_0
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1979
    .local v0, menuItem:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1980
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1984
    :goto_1
    return v5

    .line 1966
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDeleteItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 1967
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1982
    .restart local v0       #menuItem:Landroid/view/MenuItem;
    :cond_5
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 1591
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1592
    const-string v0, "call_log_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    .line 1593
    const-string v0, "adapter_count"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    .line 1594
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1681
    const-string v2, "BrowseCallHistoryActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1687
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v0

    .line 1688
    .local v0, fontSize:I
    iget v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mFontSize:I

    if-eq v2, v0, :cond_1

    .line 1689
    iput v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mFontSize:I

    .line 1690
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 1691
    .local v1, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->updateResource()V

    .line 1692
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->resetEmptyView()V

    .line 1693
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v2, :cond_1

    .line 1694
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1699
    .end local v0           #fontSize:I
    .end local v1           #mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-nez v2, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1702
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->queryIpDialCursor()V

    .line 1704
    :cond_3
    iput-boolean v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mVoiceCommandActivated:Z

    .line 1705
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsForegroundActivity:Z

    .line 1712
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getVoiceMailNumber()Ljava/lang/String;

    .line 1714
    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    if-eqz v2, :cond_5

    .line 1716
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v2, :cond_4

    .line 1717
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->clearCache()V

    .line 1720
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    .line 1722
    iput-boolean v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    .line 1725
    :cond_5
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 1741
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->updateTimeString()V

    .line 1744
    sput-boolean v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromBlockCallDelete:Z

    .line 1745
    sput-boolean v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->misFromBlockCallView:Z

    .line 1748
    sput-boolean v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsFromCallLogDelete:Z

    .line 1749
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1598
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1599
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    .line 1602
    :cond_0
    const-string v0, "call_log_type"

    iget v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1603
    const-string v0, "adapter_count"

    iget-wide v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->tempAdapterCount:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1604
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1772
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 1773
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->cleanManagedDialog()V

    .line 1774
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 1670
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setContentView(I)V

    .line 1671
    return-void
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 1878
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->setLoading(Z)V

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;->cancelOperation(I)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getQueryUri()Landroid/net/Uri;

    move-result-object v3

    .line 1885
    .local v3, queryUri:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CALL_LOG_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    .line 1889
    .local v4, PROJECTION:[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;

    const-string v7, "date DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    :cond_1
    return-void

    .line 1885
    .end local v4           #PROJECTION:[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CALL_LOG_PROJECTION_WITH_SDN:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/htccontacts/BrowseCallHistoryActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
