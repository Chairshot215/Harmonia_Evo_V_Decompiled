.class public Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.super Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$CONCRETE_COLUMNS;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$ACC_COLUMNS;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MSG_COLUMNS;,
        Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailTable;
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

.field protected static final CALL_LOG_QUERY_TOKEN:I = 0x0

.field protected static final CALL_LOG_UPDATE_TOKEN:I = 0x1

.field private static final CALL_PERSON_COLUMN_INDEX:I = 0x5

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field private static final CITY_ID_INDEX_CALL:I = 0x7

.field private static final CITY_ID_INDEX_CALL_PHONE:I = 0x9

.field private static final CONTACTS_CHANGED_MESSAGE:I = 0xa

.field private static final CONTEXT_MENU_CLEAN_FLAG:I = 0xd3

.field private static final CONTEXT_MENU_DELETE:I = 0xc9

.field private static final CONTEXT_MENU_FLAG_THIS_MESSAGE:I = 0xce

.field private static final CONTEXT_MENU_FORWARD:I = 0xd1

.field private static final CONTEXT_MENU_ITEM_DELETE:I = 0x66

.field private static final CONTEXT_MENU_ITEM_IP_DIAL:I = 0x65

.field private static final CONTEXT_MENU_MARK_READ:I = 0xd2

.field private static final CONTEXT_MENU_MARK_UNREAD:I = 0xcd

.field private static final CONTEXT_MENU_MOVE_TO:I = 0xcc

.field private static final CONTEXT_MENU_OEPN:I = 0xca

.field private static final CONTEXT_MENU_REPLY:I = 0xcf

.field private static final CONTEXT_MENU_REPLY_ALL:I = 0xd0

.field private static final CONTEXT_MENU_SEE_CONVERSATION:I = 0xcb

.field private static final DATE_COLUMN_INDEX:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIALOG_ADD_EMAIL:I = 0x1388

.field private static final DIALOG_PICK_EMAIL:I = 0x1389

.field private static final DIALOG_VIEW_ALL:I = 0x0

.field private static final DIALOG_VIEW_INCOMING:I = 0x1

.field private static final DIALOG_VIEW_MISSED:I = 0x3

.field private static final DIALOG_VIEW_OUTGOING:I = 0x2

.field private static final IDX_ACCOUNT:I = 0x7

.field private static final IDX_DATE:I = 0x4

.field private static final IDX_FLAG:I = 0x6

.field private static final IDX_FROM:I = 0x1

.field private static final IDX_FROM_EMAIL:I = 0x2

.field private static final IDX_GROUP:I = 0xa

.field private static final IDX_ID:I = 0x0

.field private static final IDX_IMPORTANCE:I = 0xd

.field private static final IDX_INCLUDE_ATTACHMENT:I = 0xb

.field private static final IDX_MAILBOX_ID:I = 0x8

.field private static final IDX_MAIL_ACT:I = 0xc

.field private static final IDX_MESSAGE_CLASS:I = 0xe

.field private static final IDX_PROVIDER:I = 0xf

.field private static final IDX_READ:I = 0x5

.field private static final IDX_SUBJECT:I = 0x3

.field private static final IDX_SUBJECT_TYPE:I = 0x9

.field private static final ID_COLUMN_INDEX:I = 0x0

.field public static final IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x7da

.field private static final MAIL_PROJECTIONS:[Ljava/lang/String; = null

.field private static final MAIL_QUERY_TOKEN:I = 0x2

.field private static final MAX_ENTRY:I = 0x3

.field private static final MENU_EDIT:I = 0x2

.field private static final MENU_SAVE_TO_CONTACTS:I = 0x1

.field private static final MESSAGE_MAX_ENTRY:I = 0x1

.field protected static final MESSAGE_QUERY_TOKEN:I = 0x14

.field private static final MESSAGE_TYPE_MMS:Ljava/lang/String; = "mms"

.field private static final MESSAGE_TYPE_SMS:Ljava/lang/String; = "sms"

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final PHONE_NAME_COLUMN_INDEX:I = 0x7

.field private static final PHONE_TYPE_COLUMN_INDEX:I = 0x8

.field protected static final SAVE_UNKNOWN_CONTACT:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final limitQueyCount:Ljava/lang/String; = "4"

.field private static nDelayRefreshMail:I


# instance fields
.field private mAddEditText:Landroid/widget/EditText;

.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

.field private mCallLogType:I

.field private mCityIdWidth:I

.field private mContactId:J

.field private mContactType:I

.field private mContentObserverMail:Landroid/database/ContentObserver;

.field private final mCursorLock:Ljava/lang/Object;

.field private mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private mDurationText:Ljava/lang/String;

.field private mEmptyTextView:Landroid/widget/TextView;

.field protected mEnterEmergencyMode:Z

.field protected mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

.field mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverForTimeFormatChange:Landroid/content/BroadcastReceiver;

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

.field public mIsContactDirty:Z

.field private mIsDirty:Z

.field public mIsMailDirty:Z

.field private mIsPenddingTimeChange:Z

.field protected mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

.field private mMailCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;",
            ">;"
        }
    .end annotation
.end field

.field private mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

.field private mMailListQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;

.field private mMailWhereClause:Ljava/lang/String;

.field private mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

.field private mMessageCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageCursor:Landroid/database/Cursor;

.field private mMessageObserver:Landroid/database/ContentObserver;

.field private mMessageQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;

.field private mNeedDelay:Z

.field private mNumber:Ljava/lang/String;

.field private mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

.field mQueryIPDialHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;

.field private mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

.field private mRecentCallCursor:Landroid/database/Cursor;

.field private mSaveToCotnactDialog:Landroid/app/Dialog;

.field private mShowAddEmail:Z

.field private mShowSendEmail:Z

.field private mThreadCountChangeListener:Landroid/content/BroadcastReceiver;

.field private mUri:Landroid/net/Uri;

.field private mWhereClause:Ljava/lang/String;

.field private mbContentObserverMailRegistered:Z

.field private mrRefreshMail:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const-string v0, "ContactDetailCommunicationActivity"

    sput-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    .line 116
    const-string v0, "content://call_log/calls_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->CALLS_CONTENT_URI:Landroid/net/Uri;

    .line 122
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
    sput-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->CALLS_PHONES_PROJECTION:[Ljava/lang/String;

    .line 151
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
    sput-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 218
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "messages._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "messages._from AS _from"

    aput-object v1, v0, v4

    const-string v1, "messages._fromEmail AS _fromEmail"

    aput-object v1, v0, v5

    const-string v1, "messages._subject AS _subject"

    aput-object v1, v0, v6

    const-string v1, "messages._internaldate AS _date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messages._read AS _read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messages._flags AS _flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "messages._account AS _account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "messages._mailboxId AS _mailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messages._subjtype AS _subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "messages._group AS _group"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messages._incAttachment AS _incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "messages._mailAct AS _mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "messages._importance AS _importance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "messages._messageClassInt AS _messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "accounts._provider AS _provider"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->MAIL_PROJECTIONS:[Ljava/lang/String;

    .line 367
    const/16 v0, 0x64

    sput v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->nDelayRefreshMail:I

    .line 401
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void

    .line 122
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

    goto/16 :goto_0

    .line 151
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

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;-><init>()V

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCursorLock:Ljava/lang/Object;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    .line 369
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCacheList:Ljava/util/ArrayList;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCacheList:Ljava/util/ArrayList;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailCacheList:Ljava/util/ArrayList;

    .line 506
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$2;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 522
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageObserver:Landroid/database/ContentObserver;

    .line 2900
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mThreadCountChangeListener:Landroid/content/BroadcastReceiver;

    .line 2920
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$9;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$9;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForTimeFormatChange:Landroid/content/BroadcastReceiver;

    .line 2930
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$10;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$10;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    .line 2940
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$11;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$11;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    .line 2950
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$12;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$12;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    .line 2960
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$13;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$13;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    .line 2969
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mEnterEmergencyMode:Z

    .line 2971
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$14;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$14;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    .line 3134
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->resetNewCallsFlag()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailWhereClause:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailWhereClause:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->rebuildEntries()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCacheList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startCallLogQuery()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIs24HourFormat:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setupTimeViewsIfCityId(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setupCityView(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setupTimeViews(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDurationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailCacheList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->updateTimeString()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCacheList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startMessageAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mrRefreshMail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->nDelayRefreshMail:I

    return v0
.end method

.method private callEntry(I)V
    .locals 14
    .parameter "position"

    .prologue
    .line 2648
    if-gez p1, :cond_0

    .line 2649
    const/4 p1, 0x0

    .line 2652
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2653
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2654
    .local v11, number:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2655
    .local v10, intent:Landroid/content/Intent;
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v0, v2, :cond_6

    .line 2657
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "number"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v13, selection:Ljava/lang/StringBuilder;
    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 2660
    .local v12, personUrl:Landroid/net/Uri;
    const-string v0, "phones"

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2661
    .local v1, phoneUrl:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 2662
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2663
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2664
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2665
    .local v8, id:J
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2667
    .end local v8           #id:J
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2689
    .end local v1           #phoneUrl:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #personUrl:Landroid/net/Uri;
    .end local v13           #selection:Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2691
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2692
    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2693
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    .line 2708
    .end local v11           #number:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 2673
    .restart local v11       #number:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 2674
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v7, :cond_3

    .line 2676
    const-string v0, "personId"

    iget-wide v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2678
    iget-object v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2679
    const-string v0, "name"

    iget-object v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    :cond_7
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2683
    const-string v0, "hasPhoto"

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 2696
    .end local v7           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_8
    invoke-static {v10}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_1

    .line 2704
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #number:Ljava/lang/String;
    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2705
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2706
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private callEntry(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;)V
    .locals 14
    .parameter "cache"

    .prologue
    .line 2600
    iget-object v11, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->number:Ljava/lang/String;

    .line 2601
    .local v11, number:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2602
    .local v10, intent:Landroid/content/Intent;
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mEnterEmergencyMode:Z

    invoke-static {v11, v0}, Lcom/android/htccontacts/util/PhoneUtils;->isEmergencyClickable(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2645
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v0, v2, :cond_2

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v0, v2, :cond_6

    .line 2606
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "number"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2607
    .local v13, selection:Ljava/lang/StringBuilder;
    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 2609
    .local v12, personUrl:Landroid/net/Uri;
    const-string v0, "phones"

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2610
    .local v1, phoneUrl:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 2611
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2612
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2613
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2614
    .local v8, id:J
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2616
    .end local v8           #id:J
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2633
    .end local v1           #phoneUrl:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #personUrl:Landroid/net/Uri;
    .end local v13           #selection:Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2635
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2636
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2637
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 2621
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 2622
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v7, :cond_4

    .line 2623
    const-string v0, "personId"

    iget-wide v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    iget-object v0, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2625
    const-string v0, "name"

    iget-object v2, v7, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2627
    :cond_7
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2628
    const-string v0, "hasPhoto"

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2640
    .end local v7           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_8
    invoke-static {v10}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method private callTypeSelectionString(I)Ljava/lang/String;
    .locals 3
    .parameter "callType"

    .prologue
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    .local v0, callTypeSelection:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v1, v2, :cond_1

    .line 1132
    :cond_0
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 2471
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2472
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2475
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2476
    const v1, 0x7f0a014f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2477
    const v1, 0x7f0a0152

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2479
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 2480
    return-void
.end method

.method private editNumberWithIpDialPrefix(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 435
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 464
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 438
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 439
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v2           #ipDialNumber:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Ljava/lang/String;)V

    .line 454
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v4, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 459
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

    .line 464
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private getCityIdWidth()I
    .locals 2

    .prologue
    .line 2827
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCityIdWidth:I

    if-nez v0, :cond_0

    .line 2828
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCityIdWidth:I

    .line 2831
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCityIdWidth:I

    return v0
.end method

.method private getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 7

    .prologue
    .line 3044
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v6

    .line 3045
    .local v6, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 468
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDraft(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Z
    .locals 1
    .parameter "cache"

    .prologue
    .line 934
    iget-boolean v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->isDraft:Z

    .line 936
    .local v0, isDraft:Z
    return v0
.end method

.method private launchEditIPDialActivity()V
    .locals 2

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method private prepareQueryParameters()V
    .locals 8

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 1103
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v5, v6, :cond_1

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v5, v5, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v3, v5, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 1108
    .local v3, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1109
    .local v4, size:I
    if-lez v4, :cond_1

    .line 1111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1113
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v2, v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 1114
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1115
    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    .line 1122
    .end local v1           #i:I
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .end local v4           #size:I
    :cond_1
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mUri:Landroid/net/Uri;

    .line 1124
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "limit"

    const-string v7, "4"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mUri:Landroid/net/Uri;

    .line 1125
    return-void

    .line 1111
    .restart local v1       #i:I
    .restart local v2       #number:Ljava/lang/String;
    .restart local v3       #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .restart local v4       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private queryIpDialCursor()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 407
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;

    .line 408
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mQueryIPDialHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;

    const/16 v1, 0x7da

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private rebuildEntries()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mShowAddEmail:Z

    .line 873
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mShowSendEmail:Z

    .line 874
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 875
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->buildQueryString()V

    .line 877
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startQueryMail()V

    .line 879
    :cond_0
    return-void
.end method

.method private registerDateTimeLocaleChangeReceiver()V
    .locals 7

    .prologue
    .line 2996
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2998
    .local v4, timeFormatChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForTimeFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3000
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3002
    .local v5, timeZoneChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3004
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3006
    .local v1, dateFormatChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3008
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3010
    .local v0, dateChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3012
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3014
    .local v3, localeChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3016
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3018
    .local v2, emergencyModeChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3019
    return-void
.end method

.method private registerThreadCountChangeReceiver()V
    .locals 2

    .prologue
    .line 2985
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ThreadCountUpdate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2988
    .local v0, threadCountChangeIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mThreadCountChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2989
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1227
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1228
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v3, "0"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1232
    const-string v0, " AND new=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x4

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v0, v3, :cond_2

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1237
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    const-string v0, "number"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    aput-object v11, v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1266
    :cond_1
    :goto_0
    return-void

    .line 1248
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v7

    .line 1249
    .local v7, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v7, :cond_1

    .line 1250
    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIdsString()Ljava/lang/String;

    move-result-object v8

    .line 1251
    .local v8, sRawIds:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v0, "raw_contact_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const-string v0, " IN "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const/16 v0, 0x28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1258
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupCityView(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3
    .parameter "views"
    .parameter "c"
    .parameter "number"

    .prologue
    .line 2800
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2803
    const-string v0, ""

    .line 2804
    .local v0, cityId:Ljava/lang/String;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v1, v2, :cond_2

    .line 2806
    :cond_0
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2810
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2811
    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 2822
    .end local v0           #cityId:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2808
    .restart local v0       #cityId:Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2818
    :cond_3
    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupTimeViews(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V
    .locals 4
    .parameter "views"
    .parameter "date"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2752
    invoke-static {p0, p2, p3, v2}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 2753
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0, p2, p3, v2}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 2755
    .local v1, timeString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2756
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 2757
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 2762
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2763
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 2764
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 2769
    :goto_1
    return-void

    .line 2759
    :cond_0
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2766
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupTimeViewsIfCityId(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V
    .locals 8
    .parameter "views"
    .parameter "date"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2772
    invoke-static {p0, p2, p3, v6}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 2773
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0, p2, p3, v6}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    .line 2775
    .local v4, timeString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v5

    .line 2776
    .local v1, hasDate:Z
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 2778
    .local v2, hasTime:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2779
    if-eqz v2, :cond_2

    .line 2780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2781
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 2795
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .end local v1           #hasDate:Z
    .end local v2           #hasTime:Z
    :cond_0
    move v1, v6

    .line 2775
    goto :goto_0

    .restart local v1       #hasDate:Z
    :cond_1
    move v2, v6

    .line 2776
    goto :goto_1

    .line 2786
    .restart local v2       #hasTime:Z
    :cond_2
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 2789
    :cond_3
    if-eqz v2, :cond_4

    .line 2790
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 2792
    :cond_4
    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private startCallLogQuery()V
    .locals 11

    .prologue
    const/4 v1, 0x2

    .line 1143
    const-string v8, ""

    .line 1145
    .local v8, callTypeString:Ljava/lang/String;
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogType:I

    packed-switch v0, :pswitch_data_0

    .line 1166
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->prepareQueryParameters()V

    .line 1171
    :goto_0
    iget v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v0, v1, :cond_2

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1177
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v0, "number"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    const-string v0, ",\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    const-string v0, "\')"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->cancelOperation(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->CALLS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 1148
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->prepareQueryParameters()V

    goto :goto_0

    .line 1153
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->callTypeSelectionString(I)Ljava/lang/String;

    move-result-object v8

    .line 1154
    goto :goto_0

    .line 1158
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->callTypeSelectionString(I)Ljava/lang/String;

    move-result-object v8

    .line 1159
    goto :goto_0

    .line 1163
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->callTypeSelectionString(I)Ljava/lang/String;

    move-result-object v8

    .line 1164
    goto :goto_0

    .line 1192
    .restart local v9       #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1199
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1200
    .restart local v9       #selection:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const-string v0, "="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1205
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1206
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1207
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_4
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1213
    :try_start_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->cancelOperation(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->CALLS_PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    monitor-exit v10

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startMessageAsyncQuery()V
    .locals 10

    .prologue
    .line 3091
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3092
    const/4 v0, 0x5

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "snippet"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "unread_count"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "transport_type"

    aput-object v1, v4, v0

    .line 3100
    .local v4, MSG_PROJECTION:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;->cancelOperation(I)V

    .line 3101
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v8

    .line 3102
    .local v8, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v8, :cond_1

    .line 3103
    const-string v0, "content://mms-sms-v2/conversations?simple=true&formal=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3104
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 3106
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isMessagelOrderByDate2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "SortbyDate2"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 3110
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;

    const/16 v1, 0x14

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v8, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    .end local v3           #queryUri:Landroid/net/Uri;
    :cond_1
    monitor-exit v9

    .line 3119
    return-void

    .line 3118
    .end local v4           #MSG_PROJECTION:[Ljava/lang/String;
    .end local v8           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterDateTimeLocaleChangeReceiver()V
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForTimeFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3024
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForTimeZoneChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3026
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForDateFormatChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3028
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForDateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3030
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForLocaleChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3032
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIntentReceiverForEmergencyMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3033
    return-void
.end method

.method private unregisterThreadCountChangeReceiver()V
    .locals 1

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mThreadCountChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2993
    return-void
.end method

.method private updateTimeString()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2836
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCacheList:Ljava/util/ArrayList;

    if-eqz v10, :cond_8

    .line 2837
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    .line 2838
    .local v1, entry:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
    iget-wide v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->date:J

    invoke-static {p0, v10, v11, v9}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 2839
    .local v0, dateString:Ljava/lang/String;
    iget-wide v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->date:J

    invoke-static {p0, v10, v11, v9}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v7

    .line 2841
    .local v7, timeString:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v10, :cond_5

    .line 2843
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    move v2, v8

    .line 2844
    .local v2, hasDate:Z
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    move v3, v8

    .line 2846
    .local v3, hasTime:Z
    :goto_2
    if-eqz v2, :cond_3

    .line 2847
    if-eqz v3, :cond_2

    .line 2848
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2849
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #hasDate:Z
    .end local v3           #hasTime:Z
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_0
    move v2, v9

    .line 2843
    goto :goto_1

    .restart local v2       #hasDate:Z
    :cond_1
    move v3, v9

    .line 2844
    goto :goto_2

    .line 2854
    .restart local v3       #hasTime:Z
    :cond_2
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2857
    :cond_3
    if-eqz v3, :cond_4

    .line 2858
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v10, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2860
    :cond_4
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v11, ""

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2864
    .end local v2           #hasDate:Z
    .end local v3           #hasTime:Z
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2865
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayDate(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 2866
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 2871
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2872
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayTime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 2873
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v10, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2868
    :cond_6
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v11, ""

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_3

    .line 2875
    :cond_7
    iget-object v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v11, ""

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2881
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #entry:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #timeString:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCacheList:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    .line 2882
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;

    .line 2883
    .local v1, entry:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->date:J

    invoke-static {v9, v10, v11, v8}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    .line 2886
    .local v5, relativeDayString:Ljava/lang/String;
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v9, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_4

    .line 2890
    .end local v1           #entry:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #relativeDayString:Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailCacheList:Ljava/util/ArrayList;

    if-eqz v9, :cond_a

    .line 2891
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailCacheList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    .line 2892
    .local v1, entry:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v10, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->date:J

    invoke-static {v9, v10, v11, v8}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    .line 2895
    .restart local v5       #relativeDayString:Ljava/lang/String;
    iget-object v9, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    goto :goto_5

    .line 2898
    .end local v1           #entry:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #relativeDayString:Ljava/lang/String;
    :cond_a
    return-void
.end method


# virtual methods
.method protected IsExchangeAccount(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 1036
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1037
    .local v1, item:Ljava/lang/Object;
    const v3, 0x7f0a00fe

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, exchange:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    check-cast v1, Landroid/database/Cursor;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getProvider(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method addToContact(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 2375
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2377
    .local v1, handlerView:Landroid/view/View;
    new-instance v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Ljava/lang/String;)V

    .line 2379
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x7f07007c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2380
    .local v3, numbertext:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    const v6, 0x7f07007d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2383
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2384
    const v6, 0x7f07007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2385
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2387
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2388
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f0a00e1

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2389
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2390
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2391
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2392
    new-instance v6, Lcom/android/htccontacts/ContactDetailCommunicationActivity$7;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$7;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2398
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2400
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    .line 2401
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 2403
    return-void
.end method

.method public afterDelete(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 3064
    return-void
.end method

.method public beforeDelete()V
    .locals 0

    .prologue
    .line 3058
    return-void
.end method

.method protected buildQueryString()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 882
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 883
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v9, " _fromEmail in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget-object v9, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 886
    .local v4, infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v9, v4, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 889
    .end local v4           #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 890
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .local v7, sb:Ljava/lang/StringBuilder;
    iget-object v9, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 892
    .restart local v4       #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v6, v4, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 893
    .local v6, number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 895
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 896
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 897
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_1

    const/16 v9, 0x39

    if-le v0, v9, :cond_2

    :cond_1
    const/16 v9, 0x2b

    if-ne v0, v9, :cond_3

    .line 898
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 901
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v9, v12, :cond_5

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "+86"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 902
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 904
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 905
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@169.com"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :cond_6
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 913
    .end local v2           #i:I
    .end local v4           #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v5           #length:I
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_8

    .line 914
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 916
    :cond_8
    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mWhereClause:Ljava/lang/String;

    .line 918
    return-void
.end method

.method protected createContextMenuForCallHistory(Landroid/view/ContextMenu;Landroid/view/View;Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;Lcom/android/htccontacts/HtcContactInfoBase;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"
    .parameter "contactInfo"

    .prologue
    .line 2314
    iget-object v5, p3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    .line 2315
    .local v1, itemcache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
    iget-object v5, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->getPrimaryText()Ljava/lang/String;

    move-result-object v3

    .line 2317
    .local v3, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2318
    .local v4, title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2320
    .local v2, name:Ljava/lang/String;
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2323
    iget-object v2, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->phone_name:Ljava/lang/String;

    .line 2330
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2331
    move-object v4, v2

    .line 2335
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2337
    invoke-virtual {p4}, Lcom/android/htccontacts/HtcContactInfoBase;->getNumberType()I

    move-result v5

    invoke-static {v5}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2338
    sget-boolean v5, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v5, :cond_1

    .line 2340
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0a03ca

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/htccontacts/util/PhoneUtils;->callIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2345
    :cond_1
    invoke-static {v3}, Lcom/htc/util/phone/DialUtils;->createEditBeforeCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2347
    .local v0, editB4CallIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0a018e

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x108003e

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2353
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0a018d

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "sms"

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x1080050

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2360
    .end local v0           #editB4CallIntent:Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x66

    const/4 v7, 0x0

    const v8, 0x7f0a037d

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x108003c

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2364
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-nez v5, :cond_3

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 2367
    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x65

    const/16 v7, 0x65

    const v8, 0x7f0a0391

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2371
    :cond_4
    return-void

    .line 2325
    :cond_5
    if-eqz p4, :cond_0

    .line 2326
    iget-object v2, p4, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2333
    :cond_6
    move-object v4, v3

    goto/16 :goto_1
.end method

.method protected createContextMenuForMail(Landroid/view/ContextMenu;Landroid/view/View;Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 2274
    iget-object v2, p3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    .line 2275
    .local v0, itemcache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    iget-object v1, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->subject:Ljava/lang/String;

    .line 2277
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2278
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2284
    :goto_0
    const/16 v2, 0xca

    const v3, 0x7f0a02d4

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2286
    const/16 v2, 0xcb

    const v3, 0x7f0a02d5

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2289
    const/16 v2, 0xc9

    const v3, 0x7f0a02d6

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2291
    const/4 v2, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isRead(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2293
    const/16 v2, 0xcd

    const v3, 0x7f0a02d7

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2301
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isDraft(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2303
    const/16 v2, 0xcf

    const v3, 0x7f0a02d9

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2305
    const/16 v2, 0xd0

    const v3, 0x7f0a02da

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2308
    const/16 v2, 0xd1

    const v3, 0x7f0a02db

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2311
    :cond_0
    return-void

    .line 2280
    :cond_1
    const v2, 0x7f0a016e

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_0

    .line 2297
    :cond_2
    const/16 v2, 0xd2

    const v3, 0x7f0a02d8

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected doAddEmail()V
    .locals 1

    .prologue
    .line 1016
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->showDialog(I)V

    .line 1017
    return-void
.end method

.method protected doDeleteEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 1
    .parameter "cache"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->deleteMail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I

    .line 953
    :cond_0
    return-void
.end method

.method protected doFlagMessage(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;Z)V
    .locals 1
    .parameter "cach"
    .parameter "flag"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 966
    if-eqz p2, :cond_1

    .line 967
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->flagThisMessage(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->cleanFlag(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I

    goto :goto_0
.end method

.method protected doForward(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getForwardIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;

    move-result-object v0

    .line 1009
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1013
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doMarkEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;Z)V
    .locals 1
    .parameter "cache"
    .parameter "mark"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 976
    if-eqz p2, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->markRead(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->markUnread(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I

    goto :goto_0
.end method

.method protected doMoveTo(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 0
    .parameter "cache"

    .prologue
    .line 986
    return-void
.end method

.method protected doOpenEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getOpenMailIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;

    move-result-object v0

    .line 943
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 947
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doRefreshMail()V
    .locals 3

    .prologue
    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC"

    const-string v2, "content://mail/accounts/9223372036854775807"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1022
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1023
    return-void
.end method

.method protected doReply(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getReplyIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;

    move-result-object v0

    .line 991
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 995
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doReplyAll(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 998
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getReplyAllIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;

    move-result-object v0

    .line 1000
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1004
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doSeeConversation(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getSeeConversationIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;

    move-result-object v0

    .line 958
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 962
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doSendEmail()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 1047
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 1049
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v6, 0x0

    .line 1050
    .local v6, size:I
    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1052
    if-le v6, v8, :cond_0

    .line 1053
    const/16 v7, 0x1389

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->removeDialog(I)V

    .line 1054
    const/16 v7, 0x1389

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->showDialog(I)V

    .line 1075
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .end local v6           #size:I
    :goto_0
    return-void

    .line 1055
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .restart local v6       #size:I
    :cond_0
    if-ne v6, v8, :cond_3

    .line 1056
    const/4 v5, 0x0

    .line 1057
    .local v5, name:Ljava/lang/String;
    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 1058
    .local v2, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v5, ""

    .line 1059
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1060
    iget-object v7, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1065
    :goto_2
    const-string v7, "mailto:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1066
    .local v4, mailTo:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1067
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .end local v2           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mailTo:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 1073
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSendEmail - Database column not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1058
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .restart local v2       #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #size:I
    :cond_1
    :try_start_1
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 1063
    :cond_2
    iget-object v5, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    goto :goto_2

    .line 1069
    .end local v2           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "mailto:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1070
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method editNumberBeforeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 424
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 3037
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-wide v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 3038
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

    .line 3040
    .local v3, contactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v4
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isFlag(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Z
    .locals 2
    .parameter "cache"

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, flag:I
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getFlag(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I

    move-result v0

    .line 930
    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRead(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Z
    .locals 2
    .parameter "cache"

    .prologue
    .line 921
    iget v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->isRead:I

    .line 922
    .local v0, read:I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchMessage()V
    .locals 5

    .prologue
    .line 3352
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 3353
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_0

    .line 3354
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3355
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3356
    const-string v2, "thread_id"

    iget-wide v3, v0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3358
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 3360
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 843
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 869
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 847
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v4, 0x2f1

    if-ne v4, p1, :cond_3

    .line 849
    const-string v4, "pure_flickr"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 851
    .local v0, bPureFlickr:Z
    const-string v4, "rollback_contact"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 853
    .local v1, bShouldRollBack:Z
    if-eq v5, v0, :cond_1

    if-ne v5, v1, :cond_2

    .line 854
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 855
    .local v3, uriFixed:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 857
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/HtcContactInfo;->forceContactChange(Landroid/net/Uri;)V

    .line 868
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v3           #uriFixed:Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 860
    :cond_3
    if-ne v5, p1, :cond_2

    .line 861
    if-eqz p3, :cond_2

    .line 862
    const-string v4, "DefaultTab"

    const-string v5, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->finish()V

    goto :goto_1
.end method

.method public onContactChanged(Ljava/lang/String;)V
    .locals 7
    .parameter "infoReadyType"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 615
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    .line 618
    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_3

    .line 619
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 620
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, "CONTACT_INFO_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->prepareQueryParameters()V

    .line 622
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startMessageAsyncQuery()V

    .line 623
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    if-nez v1, :cond_4

    .line 624
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startCallLogQuery()V

    .line 625
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->resetNewCallsFlag()V

    .line 636
    :cond_0
    :goto_0
    const-string v1, "ENTITY_QUERY_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    .line 638
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    if-eq v6, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    if-ne v6, v1, :cond_2

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->rebuildEntries()V

    .line 642
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    .line 643
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    .line 647
    :cond_2
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    .line 650
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_3
    return-void

    .line 627
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_4
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    .line 628
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$5;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    const-wide/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2488
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    .local v3, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x0

    .line 2496
    .local v2, mailItemCache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    iget-object v9, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    if-eqz v9, :cond_0

    .line 2497
    iget-object v9, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mailItemCache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    check-cast v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    .line 2500
    .restart local v2       #mailItemCache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 2575
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    .end local v2           #mailItemCache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    .end local v3           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_2
    :goto_1
    return v7

    .line 2489
    :catch_0
    move-exception v0

    .line 2490
    .local v0, e:Ljava/lang/ClassCastException;
    sget-object v7, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    const-string v9, "bad menuInfoIn"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v8

    .line 2491
    goto :goto_1

    .line 2502
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v2       #mailItemCache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    .restart local v3       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getIpDialItemCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 2503
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2504
    .local v1, ipDialcursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 2506
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2507
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 2510
    .end local v1           #ipDialcursor:Landroid/database/Cursor;
    .end local v4           #number:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->launchEditIPDialActivity()V

    goto :goto_0

    .line 2518
    :sswitch_1
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallCursor:Landroid/database/Cursor;

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2520
    .local v5, tmpId:J
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calls._id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 2522
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startCallLogQuery()V

    goto :goto_1

    .line 2529
    .end local v5           #tmpId:J
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doOpenEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2534
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doDeleteEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2538
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doSeeConversation(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2542
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doMoveTo(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2546
    :sswitch_6
    invoke-virtual {p0, v2, v8}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doMarkEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;Z)V

    goto :goto_0

    .line 2550
    :sswitch_7
    invoke-virtual {p0, v2, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doMarkEmail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;Z)V

    goto :goto_0

    .line 2554
    :sswitch_8
    invoke-virtual {p0, v2, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doFlagMessage(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;Z)V

    goto :goto_0

    .line 2558
    :sswitch_9
    invoke-virtual {p0, v2, v8}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doFlagMessage(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;Z)V

    goto :goto_0

    .line 2562
    :sswitch_a
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doReply(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2566
    :sswitch_b
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doReplyAll(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2570
    :sswitch_c
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->doForward(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    goto :goto_0

    .line 2500
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_3
        0xca -> :sswitch_2
        0xcb -> :sswitch_4
        0xcc -> :sswitch_5
        0xcd -> :sswitch_6
        0xce -> :sswitch_8
        0xcf -> :sswitch_a
        0xd0 -> :sswitch_b
        0xd1 -> :sswitch_c
        0xd2 -> :sswitch_7
        0xd3 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 667
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 669
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setContentView(I)V

    .line 671
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setTitleBar()V

    .line 674
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 675
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->setDefaultTitleVisibility(I)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 691
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mbContentObserverMailRegistered:Z

    .line 694
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mbContentObserverMailRegistered:Z

    if-nez v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/htccontacts/util/Constants;->MAIL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 698
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mbContentObserverMailRegistered:Z

    .line 702
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailWhereClause:Ljava/lang/String;

    .line 704
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 707
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContactType()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    .line 712
    :cond_2
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;

    .line 713
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;

    .line 714
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;

    .line 716
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$6;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mrRefreshMail:Ljava/lang/Runnable;

    .line 726
    new-instance v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 727
    new-instance v0, Lcom/android/htccontacts/widget/IndexListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 729
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    .line 730
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    .line 731
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    .line 733
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V

    const v2, 0x7f0a00d8

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 734
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V

    const v2, 0x7f0a00ad

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 735
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V

    const v2, 0x7f0a0376

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 737
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20809b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 742
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20809b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 743
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20809b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 744
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDurationText:Ljava/lang/String;

    .line 746
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerDateTimeLocaleChangeReceiver()V

    .line 747
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->registerThreadCountChangeReceiver()V

    .line 748
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 2247
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    .local v3, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 2253
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    const/4 v4, 0x0

    .line 2254
    .local v4, unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v5, v6, :cond_1

    .line 2256
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v4

    .line 2258
    :cond_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    .line 2259
    move-object v1, v4

    .line 2263
    :cond_2
    iget-object v5, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    if-eqz v5, :cond_4

    .line 2264
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->createContextMenuForCallHistory(Landroid/view/ContextMenu;Landroid/view/View;Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 2270
    .end local v1           #contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    .end local v3           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v4           #unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    :cond_3
    :goto_0
    return-void

    .line 2248
    :catch_0
    move-exception v2

    .line 2249
    .local v2, e:Ljava/lang/ClassCastException;
    sget-object v5, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    const-string v6, "bad menuInfoIn"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2265
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    .restart local v3       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v4       #unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    :cond_4
    iget-object v5, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    if-eqz v5, :cond_3

    .line 2266
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->createContextMenuForMail(Landroid/view/ContextMenu;Landroid/view/View;Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2186
    const v0, 0x7f0a00e1

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080331

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2189
    const/4 v0, 0x2

    const v1, 0x7f0a013c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2191
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2192
    return v3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDestroy()V

    .line 811
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 818
    :cond_1
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mbContentObserverMailRegistered:Z

    if-eqz v1, :cond_2

    .line 819
    sget-object v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    const-string v2, "doRefreshMail mResolver.unregisterContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 821
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mbContentObserverMailRegistered:Z

    .line 822
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 826
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 827
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 828
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 830
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 832
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterDateTimeLocaleChangeReceiver()V

    .line 833
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->unregisterThreadCountChangeReceiver()V

    .line 834
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 835
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_3

    .line 836
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->beforeDelete()V

    .line 837
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 839
    :cond_3
    return-void
.end method

.method public onDetailInfoInit()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 579
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDetailInfoInit()V

    .line 580
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    if-ne v1, v0, :cond_1

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->rebuildEntries()V

    .line 584
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    .line 585
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    .line 589
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startMessageAsyncQuery()V

    .line 591
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->resetNewCallsFlag()V

    .line 592
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->prepareQueryParameters()V

    .line 593
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    if-nez v0, :cond_3

    .line 594
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startCallLogQuery()V

    .line 595
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->resetNewCallsFlag()V

    .line 607
    :cond_2
    :goto_0
    return-void

    .line 597
    :cond_3
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    .line 598
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$4;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$4;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2592
    packed-switch p1, :pswitch_data_0

    .line 2596
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2594
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2592
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

    .line 2581
    packed-switch p1, :pswitch_data_0

    .line 2587
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2583
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    .line 2584
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->callEntry(I)V

    goto :goto_0

    .line 2581
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 2712
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 2713
    .local v2, tagObj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 2714
    instance-of v4, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    if-eqz v4, :cond_1

    .line 2715
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    check-cast v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    .end local v2           #tagObj:Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->getOpenMailIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;

    move-result-object v1

    .line 2716
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2717
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 2747
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2720
    .restart local v2       #tagObj:Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    if-eqz v4, :cond_3

    .line 2721
    const/4 v4, 0x4

    iget v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v4, v5, :cond_2

    move v0, v3

    .line 2725
    .local v0, canDiale:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 2726
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNeedDelay:Z

    .line 2727
    check-cast v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    .end local v2           #tagObj:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->callEntry(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;)V

    goto :goto_0

    .line 2721
    .end local v0           #canDiale:Z
    .restart local v2       #tagObj:Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2730
    :cond_3
    instance-of v3, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;

    if-eqz v3, :cond_4

    .line 2731
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->launchMessage()V

    goto :goto_0

    .line 2733
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2734
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2735
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->getViewIndependentCallHistoryIntent(Lcom/android/htccontacts/HtcContactInfoBase;)Landroid/content/Intent;

    move-result-object v1

    .line 2738
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2735
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v3

    goto :goto_2

    .line 2739
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2740
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->getViewIndependentMailIntent(Lcom/android/htccontacts/HtcContactInfoBase;)Landroid/content/Intent;

    move-result-object v1

    .line 2742
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2740
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v3

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2449
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2465
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 2452
    :pswitch_0
    const-string v2, "ANALYTIC_HtcContacts"

    const-string v3, "[ContactDetailCallHistoryActivity]Save to contacts"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->addToContact(Ljava/lang/String;)V

    goto :goto_0

    .line 2458
    :pswitch_1
    const-string v2, "ANALYTIC_HtcContacts"

    const-string v3, "[ContactDetailCallHistoryActivity]Edit contact"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2460
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 804
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onPause()V

    .line 805
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 2198
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 2199
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;
    const/4 v5, 0x0

    .line 2200
    .local v5, unknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    iget v7, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-eq v9, v7, :cond_0

    const/4 v7, 0x4

    iget v8, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I

    if-ne v7, v8, :cond_1

    .line 2202
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v5

    .line 2204
    :cond_1
    if-nez v1, :cond_2

    if-eqz v5, :cond_2

    .line 2205
    move-object v1, v5

    .line 2207
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2208
    .local v4, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2213
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2215
    if-eqz v1, :cond_3

    .line 2217
    iget-object v7, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 2219
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 2221
    iget-object v7, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 2223
    .local v2, contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v7, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->getNumberType()I

    move-result v7

    invoke-static {v7}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2226
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2237
    .end local v2           #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v3           #i:I
    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfoBase;->isAllSocialNetworkAccountTyupe()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2238
    .local v0, bEditable:Z
    :goto_2
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2240
    return v6

    .line 2219
    .end local v0           #bEditable:Z
    .restart local v2       #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2234
    .end local v2           #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v3           #i:I
    :cond_5
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v6

    .line 2237
    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 566
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 567
    const-string v0, "call_log_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogType:I

    .line 568
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 752
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onResume()V

    .line 753
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

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->queryIpDialCursor()V

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->prepareQueryParameters()V

    .line 762
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startCallLogQuery()V

    .line 764
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startMessageAsyncQuery()V

    .line 767
    :cond_2
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    .line 769
    :cond_3
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    if-eq v2, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    if-ne v2, v0, :cond_5

    .line 771
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 772
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->rebuildEntries()V

    .line 773
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    .line 774
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsContactDirty:Z

    .line 777
    :cond_5
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->updateTimeString()V

    .line 779
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 572
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    const-string v0, "call_log_type"

    iget v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCallLogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 788
    if-eqz p1, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->resetNewCallsFlag()V

    .line 791
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 792
    .local v1, telephonyBinder:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 793
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v1           #telephonyBinder:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->TAG:Ljava/lang/String;

    const-string v3, "Failed to clear missed calls notification due to remote excetpion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setMailListAdapter(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    if-nez v0, :cond_0

    .line 2141
    new-instance v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;-><init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    .line 2145
    :goto_0
    return-void

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 660
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 661
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 663
    return-void
.end method

.method protected startQueryMail()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1026
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;->cancelOperation(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v8

    .line 1028
    .local v8, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v8, :cond_0

    .line 1029
    sget-object v0, Lcom/android/htccontacts/util/Constants;->MAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v5, "4"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1030
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListQueryHandler:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;

    sget-object v4, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->MAIL_PROJECTIONS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mWhereClause:Ljava/lang/String;

    const-string v7, "_date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    .end local v3           #queryUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method
