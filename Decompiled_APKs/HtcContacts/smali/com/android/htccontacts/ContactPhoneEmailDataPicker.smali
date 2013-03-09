.class public final Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SearchResultCollection;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ColleagesCollection;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;,
        Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;
    }
.end annotation


# static fields
.field private static final ACTION_FREQUENCY_GROUP_MESSAGE:Ljava/lang/String; = "com.android.htccontacts.action.frequency_message_picker"

.field private static final ACTIVITY_REQUEST_BASE:I = 0x1000

.field private static final ACTIVITY_REQUEST_FREQUENCY_GROUP_ADDRESS:I = 0x1003

.field private static final ACTIVITY_REQUEST_NEW_CONTACT:I = 0x1002

.field private static final ACTIVITY_REQUEST_SELECTED_LIST:I = 0x1001

.field private static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field static final CONTACTKIND:Ljava/lang/String; = "contactkind"

.field static final DATA_COLUMN_INDEX:I = 0x2

.field private static final DIALOG_ID_BASE:I = 0x0

.field private static final DIALOG_ID_SAVE_COMPANY_CONTACT:I = 0x1

.field public static final EAS_ACCOUNT_TYPE:Ljava/lang/String; = "eas_accounttype"

.field private static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field private static final HANDLER_EVENT_BASE:I = 0x5000

.field private static final HANDLER_EVENT_CEECK_SELECT_ALL:I = 0x500f

.field private static final HANDLER_EVENT_DISMISS_PROGRESS_BAR:I = 0x5006

.field private static final HANDLER_EVENT_NETWORK_PROBLEM:I = 0x500a

.field private static final HANDLER_EVENT_NETWORK_QUERY_500ERROR:I = 0x5001

.field private static final HANDLER_EVENT_NETWORK_QUERY_NO_RESULT:I = 0x5009

.field private static final HANDLER_EVENT_SHOW_PROGRESS_BAR:I = 0x5005

.field private static final HANDLE_SHOW_PICKED_CONTACTS:I = 0xf002

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final ISSIM:Ljava/lang/String; = "isSIM"

.field private static final KEY_DISPLAYNAME:Ljava/lang/String; = "display_name"

.field private static final KEY_EMAILADDRESS:Ljava/lang/String; = "email_address"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_PHONENUMBER:Ljava/lang/String; = "phone_number"

.field static final LABEL_COLUMN_INDEX:I = 0x4

.field static final LIST_DATA_BASE:I = 0xf000000

.field public static LIST_ITEM_TYPE_ADDRESS:I = 0x0

.field public static LIST_ITEM_TYPE_BASE:I = 0x0

.field public static LIST_ITEM_TYPE_COMPANY_FOOTER:I = 0x0

.field public static LIST_ITEM_TYPE_GROUP:I = 0x0

.field static final LIST_MAIL_DATA:I = 0xf000001

.field static final LIST_PHONE_DATA:I = 0xf000002

.field static final LIST_PHONE_MAIL_DATA:I = 0xf000003

.field private static final MAX_SELECTED_CONTACTS_COUNT:Ljava/lang/String; = "max_selected_contacts_count"

.field private static final MENU_ITEM_NEW_CONTACT:I = 0x4

.field private static final MENU_ITEM_SHOW_PICKED_CONTACTS:I = 0x3

.field private static final MENU_ITME_SHOW_HIDE_EMAIL:I = 0x6f

.field static final NAME_COLUMN_INDEX:I = 0x0

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String; = null

.field private static final PEOPLE_PHONES_MAILS_PROJECTION:[Ljava/lang/String; = null

.field static final PRIMARY_EMAIL_ID_COLUMN_INDEX:I = 0x7

.field static final PRIMARY_PHONE_ID_COLUMN_INDEX:I = 0x6

.field public static final QUERY_ACCOUNT_TYP_INDEX:I = 0x3

.field public static final QUERY_CONTACT_ID:I = 0xa

.field public static final QUERY_DATA_ID_INDEX:I = 0x4

.field public static final QUERY_DATA_INDEX:I = 0x6

.field public static final QUERY_DATA_MIMETYPE_INDEX:I = 0x5

.field public static final QUERY_DISPALY_NAME_INDEX:I = 0x0

.field public static final QUERY_EXT_PHOTO_URL_INDEX:I = 0x9

.field public static final QUERY_GROUP_PHOTO_INDEX:I = 0xc

.field public static final QUERY_LABEL_INDEX:I = 0x8

.field public static final QUERY_PHOTO_ID_INDEX:I = 0x1

.field public static final QUERY_RAW_CONTACT_ID_INDEX:I = 0x2

.field public static final QUERY_SORT_KEY_ALT_INDEX:I = 0xe

.field public static final QUERY_SORT_KEY_INDEX:I = 0xd

.field public static final QUERY_SUM_COUNT_INDEX:I = 0xb

.field private static final QUERY_TOKEN_LIMIT_LIST:I = 0x1

.field private static final QUERY_TOKEN_LIST:I = 0x0

.field public static final QUERY_TYPE_INDEX:I = 0x7

.field static final SERVER_STATUS_COLUMN_INDEX:I = 0x8

.field public static SIM_ID_MASK:I = 0x0

.field static final STARRED_COLUMN_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ContactPhoneEmailDataPicker"

.field static final TYPE_COLUMN_INDEX:I = 0x3

.field private static mResultReceiver:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver; = null

.field private static maxSelectedContactsCount:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final sEnableFrequencyPickerButton:Z = false

.field private static final sGroupBySortKey:Z = true

.field private static final sOrderBySortKey:Z = true


# instance fields
.field private final FASTSCROLL_LIMIT:I

.field private KEY_ONLY_GROUP:Ljava/lang/String;

.field private MailLabel:Ljava/lang/String;

.field private final PhoneAndMail_Type:Ljava/lang/String;

.field private PhoneLabel:Ljava/lang/String;

.field private final SPEW:Z

.field private final TITLE_ERROR:I

.field private final USE_LIMIT_QUERY:Z

.field private _ErrorHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;

.field private _Status:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;

.field private cdsb:Landroid/util/SparseBooleanArray;

.field private companydirectoryMode:Z

.field private groupContactMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupcontactsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

.field private mCompanyDirectoryDataMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mContentReady:Z

.field protected mCurrentFilterKey:Ljava/lang/CharSequence;

.field private mCursor:Landroid/database/Cursor;

.field private mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

.field private mExchangeAccounts:[Landroid/accounts/Account;

.field private mFilterCursor:Landroid/database/Cursor;

.field private mFilterInitial:Ljava/lang/String;

.field protected mFilterMode:Z

.field private mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

.field private mFrequencyPickerEnable:Z

.field private mGroupSelectionCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field private mIMECloseOnScrollListener:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;

.field private mInputEditor:Landroid/widget/EditText;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private volatile mIsDestroy:Z

.field private mIsEnableCompanyDirectorySupport:Z

.field private mIsFirstResuming:Z

.field private mIsOnlyGroup:Z

.field private mIsPeopleDirty:Z

.field private mIsinitialFilter:Z

.field private mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

.field private mLocalSearchWatch:Landroid/text/TextWatcher;

.field private mOKButtonTextResId:I

.field private mOkButton:Lcom/htc/widget/HtcFooterButton;

.field private mProtocol:I

.field mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

.field private mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

.field private mSelfHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;

.field private mSetCountTitleRunnable:Ljava/lang/Runnable;

.field private mThreadPool:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

.field private mTitleCount:I

.field private mailaddressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private matrixCursor:Landroid/database/MatrixCursor;

.field private mlist_data_kind:I

.field private nameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phonesb:Landroid/util/SparseBooleanArray;

.field private sb:Landroid/util/SparseBooleanArray;

.field showEmail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-static {}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->IsEnableFrequencyPickerButton()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sEnableFrequencyPickerButton:Z

    .line 220
    const/high16 v0, -0x100

    sput v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->SIM_ID_MASK:I

    .line 222
    sput v3, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_BASE:I

    .line 223
    sget v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_BASE:I

    sput v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_ADDRESS:I

    .line 224
    sget v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_GROUP:I

    .line 227
    sget v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_COMPANY_FOOTER:I

    .line 251
    const v0, 0x7fffffff

    sput v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->maxSelectedContactsCount:I

    .line 258
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "summ_count"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    .line 293
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 96
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mContentReady:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsFirstResuming:Z

    .line 110
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->FASTSCROLL_LIMIT:I

    .line 125
    const v0, 0x7f0a0150

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mOKButtonTextResId:I

    .line 127
    const-string v0, "group_list"

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->KEY_ONLY_GROUP:Ljava/lang/String;

    .line 132
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->SPEW:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mProtocol:I

    .line 142
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    .line 145
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    .line 151
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->companydirectoryMode:Z

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    .line 160
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    .line 161
    const v0, 0x7f0a0223

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->TITLE_ERROR:I

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    .line 177
    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->MailLabel:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PhoneLabel:Ljava/lang/String;

    .line 185
    const v0, 0xf000001

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    .line 196
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 198
    const-string v0, "vnd.android.cursor.dir/phone_v2-and-email_v2"

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PhoneAndMail_Type:Ljava/lang/String;

    .line 205
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    .line 215
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->USE_LIMIT_QUERY:Z

    .line 244
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    .line 247
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsOnlyGroup:Z

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    .line 328
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    .line 351
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    .line 2529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;

    .line 2807
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$9;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$9;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    .line 3627
    return-void
.end method

.method private static final IsEnableFrequencyPickerButton()Z
    .locals 2

    .prologue
    .line 3897
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->_ErrorHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getFilterText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->undateHeaderButtonStateDelayed(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->doFilterByFrequencyGroup(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showQueryProgress()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->enableOrNotSaveOKButton()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectDataThread()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->handleFreqiencyGroupButtonClick()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getInputMethodManaer()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setCountTitle()V

    return-void
.end method

.method static synthetic access$3800()Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mResultReceiver:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-object p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mResultReceiver:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissQueryProgress()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->saveCpToArray()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getPhoneMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissSearchProgressDialog()V

    return-void
.end method

.method static synthetic access$4800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mContentReady:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mContentReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setEmtpyTextToView(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    return p1
.end method

.method private addCheckedGroupContactToContactList()V
    .locals 2

    .prologue
    .line 2532
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->addCheckedGroupContactToContactList(ZLjava/util/ArrayList;)V

    .line 2533
    return-void
.end method

.method private addCheckedGroupContactToContactList(ZLjava/util/ArrayList;)V
    .locals 41
    .parameter "saveToSB"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2538
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 2539
    .local v35, mGroupContactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v39

    .line 2541
    .local v39, size:I
    const/4 v5, 0x0

    .line 2542
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2543
    .local v3, uri:Landroid/net/Uri;
    const/16 v26, 0x0

    .line 2544
    .local v26, cursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 2545
    .local v25, counts:I
    const/16 v20, -0x1

    .line 2547
    .local v20, contactId:I
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 2548
    .local v18, buffer:Ljava/lang/StringBuffer;
    const-string v2, " (  "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2549
    const-string v2, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2550
    const-string v2, "    =  "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2551
    const-string v2, "vnd.android.cursor.item/group"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2552
    const-string v2, "  ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    .line 2557
    .local v34, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 2558
    .local v40, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Boolean;

    .line 2559
    .local v38, selected:Ljava/lang/Boolean;
    if-nez v38, :cond_1

    const/16 v19, 0x0

    .line 2560
    .local v19, checked:Z
    :goto_1
    if-eqz v19, :cond_0

    .line 2561
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2565
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "group_with_favorite"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2567
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2569
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 2571
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 2572
    const/16 v33, 0x0

    .line 2573
    .local v33, index:I
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 2575
    .local v32, idIdx:I
    if-eqz v26, :cond_3

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2576
    monitor-enter v26

    .line 2577
    const/16 v33, 0x0

    :goto_2
    move/from16 v0, v33

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 2578
    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2579
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2580
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 2559
    .end local v19           #checked:Z
    .end local v32           #idIdx:I
    .end local v33           #index:I
    :cond_1
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto :goto_1

    .line 2582
    .restart local v19       #checked:Z
    .restart local v32       #idIdx:I
    .restart local v33       #index:I
    :cond_2
    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2584
    :cond_3
    if-eqz v26, :cond_0

    .line 2585
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2582
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2590
    .end local v19           #checked:Z
    .end local v32           #idIdx:I
    .end local v33           #index:I
    .end local v38           #selected:Ljava/lang/Boolean;
    .end local v40           #title:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->size()I

    move-result v39

    .line 2592
    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    .line 2593
    .local v21, contactIds:[Ljava/lang/Integer;
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21           #contactIds:[Ljava/lang/Integer;
    check-cast v21, [Ljava/lang/Integer;

    .line 2594
    .restart local v21       #contactIds:[Ljava/lang/Integer;
    if-nez v39, :cond_6

    .line 2740
    :cond_5
    :goto_3
    return-void

    .line 2596
    :cond_6
    new-instance v18, Ljava/lang/StringBuffer;

    .end local v18           #buffer:Ljava/lang/StringBuffer;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 2597
    .restart local v18       #buffer:Ljava/lang/StringBuffer;
    const-string v2, "contact_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2598
    const/16 v30, 0x0

    .local v30, i:I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v39

    if-ge v0, v1, :cond_8

    .line 2599
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2600
    aget-object v2, v21, v30

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2601
    add-int/lit8 v2, v39, -0x1

    move/from16 v0, v30

    if-ge v0, v2, :cond_7

    .line 2602
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2604
    :cond_7
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2598
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 2606
    :cond_8
    const-string v2, " ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2609
    const-string v2, " AND ( mimetype =  \'vnd.android.cursor.item/phone_v2\'  OR mimetype =  \'vnd.android.cursor.item/email_v2\' ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2612
    const-string v2, " AND ( is_super_primary = 1 OR ( mimetype = \'vnd.android.cursor.item/phone_v2\' AND data7 = 1 ))"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2623
    const-string v2, "ContactPhoneEmailDataPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group list selection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const/4 v2, 0x6

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v8, v2

    const/4 v2, 0x1

    const-string v4, "display_name"

    aput-object v4, v8, v2

    const/4 v2, 0x2

    const-string v4, "contact_id"

    aput-object v4, v8, v2

    const/4 v2, 0x3

    const-string v4, "mimetype"

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "data1"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    const-string v4, "data7"

    aput-object v4, v8, v2

    .line 2634
    .local v8, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "mimetype DESC  , data7 DESC "

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 2645
    .local v29, data_cur:Landroid/database/Cursor;
    if-eqz v29, :cond_17

    .line 2646
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2647
    .local v17, IdIdx:I
    const-string v2, "mimetype"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 2648
    .local v36, mimeTypeIdx:I
    const-string v2, "contact_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 2650
    .local v22, contactIdx:I
    const-string v2, "data1"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 2652
    .local v27, dataIdx:I
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 2656
    .local v23, contactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_9
    :goto_5
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2657
    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 2658
    .local v37, mimetype:Ljava/lang/String;
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2659
    .local v13, dataId:I
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 2661
    .local v24, contact_id:I
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2662
    .local v28, dataValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v4, 0xf000002

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v2, :cond_c

    .line 2664
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2672
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2675
    if-eqz p1, :cond_b

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v13, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2683
    :cond_a
    :goto_6
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2677
    :cond_b
    if-eqz p2, :cond_a

    .line 2679
    new-instance v9, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v13

    invoke-direct/range {v9 .. v16}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2681
    .local v9, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2686
    .end local v9           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_c
    const v2, 0xf000003

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-eq v2, v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v4, 0xf000002

    if-ne v2, v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v2, :cond_13

    .line 2688
    :cond_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2690
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2692
    if-eqz p1, :cond_11

    .line 2693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v13, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2700
    :cond_e
    :goto_7
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    :cond_f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2706
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2707
    if-eqz p1, :cond_12

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v13, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2714
    :cond_10
    :goto_8
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 2694
    :cond_11
    if-eqz p2, :cond_e

    .line 2695
    new-instance v9, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v13

    invoke-direct/range {v9 .. v16}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2698
    .restart local v9       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2709
    .end local v9           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_12
    if-eqz p2, :cond_10

    .line 2710
    new-instance v9, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v13

    invoke-direct/range {v9 .. v16}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2712
    .restart local v9       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2717
    .end local v9           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_13
    const v2, 0xf000001

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v2, v4, :cond_9

    .line 2718
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2720
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2721
    if-eqz p1, :cond_15

    .line 2722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v13, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2728
    :cond_14
    :goto_9
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupContactMapping:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 2723
    :cond_15
    if-eqz p2, :cond_14

    .line 2724
    new-instance v9, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v13

    invoke-direct/range {v9 .. v16}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2726
    .restart local v9       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2733
    .end local v9           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v13           #dataId:I
    .end local v24           #contact_id:I
    .end local v28           #dataValue:Ljava/lang/String;
    .end local v37           #mimetype:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->closeCursor(Landroid/database/Cursor;)V

    .line 2735
    .end local v17           #IdIdx:I
    .end local v22           #contactIdx:I
    .end local v23           #contactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v27           #dataIdx:I
    .end local v36           #mimeTypeIdx:I
    :cond_17
    if-eqz p1, :cond_5

    .line 2737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3
.end method

.method private addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "displayName"
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2934
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2935
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    const-string v1, "email_address"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2939
    return-void
.end method

.method private addItemDataItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "displayName"
    .parameter "dataKey"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2943
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2944
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    const-string v1, "email_address"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2948
    const-string v1, "label"

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->MailLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    :cond_0
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2953
    return-void

    .line 2949
    :cond_1
    const-string v1, "phone_number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2950
    const-string v1, "label"

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PhoneLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addItemDataItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "displayName"
    .parameter "label"
    .parameter "dataKey"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2957
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2958
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2960
    const-string v1, "label"

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->MailLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2961
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2962
    return-void
.end method

.method private collectDataThread()V
    .locals 4

    .prologue
    .line 2515
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showQueryProgress()V

    .line 2516
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$8;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 2522
    .local v0, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mThreadPool:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->getThread(Ljava/lang/Runnable;Z)Ljava/lang/Thread;

    move-result-object v1

    .line 2523
    .local v1, thread:Ljava/lang/Thread;
    if-eqz v1, :cond_0

    .line 2524
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2527
    :cond_0
    return-void
.end method

.method private dismissQueryProgress()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 424
    :cond_0
    return-void
.end method

.method private dismissSearchProgressDialog()V
    .locals 1

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 3018
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 3019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 3021
    :cond_0
    return-void
.end method

.method private doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "filterKey"

    .prologue
    const/4 v4, 0x0

    const v7, 0xf000003

    const v6, 0xf000002

    .line 1494
    const/4 v1, 0x0

    .line 1495
    .local v1, queryuri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1496
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1500
    .local v3, selection:Ljava/lang/String;
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v5, 0xf000001

    if-ne v0, v5, :cond_3

    .line 1501
    const-string v0, "content://com.android.contacts/contacts/picker/allmail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1504
    sget-object v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    .line 1530
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsOnlyGroup:Z

    if-eqz v0, :cond_1

    .line 1531
    const-string v0, "content://com.android.contacts/contacts/picker/group/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1536
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1538
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1543
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  )  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1553
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterCursor:Landroid/database/Cursor;

    .line 1556
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterCursor:Landroid/database/Cursor;

    return-object v0

    .line 1506
    :cond_3
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_4

    .line 1507
    const-string v0, "content://com.android.contacts/contacts/picker/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1510
    sget-object v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1512
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v6, :cond_5

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_5

    .line 1513
    const-string v0, "content://com.android.contacts/contacts/picker/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1516
    sget-object v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1518
    :cond_5
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v7, :cond_6

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_6

    .line 1519
    const-string v0, "content://com.android.contacts/contacts/picker/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1522
    sget-object v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1523
    :cond_6
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_0

    .line 1524
    const-string v0, "content://com.android.contacts/contacts/picker/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1527
    sget-object v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1547
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doFilterByFrequencyGroup(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "filterKey"

    .prologue
    const/4 v4, 0x0

    const v7, 0xf000003

    const v6, 0xf000002

    .line 1444
    const/4 v1, 0x0

    .line 1445
    .local v1, queryuri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1446
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1448
    .local v3, selection:Ljava/lang/String;
    sget-object v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_PROJECTION:[Ljava/lang/String;

    .line 1449
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v5, 0xf000001

    if-ne v0, v5, :cond_2

    .line 1450
    const-string v0, "content://com.android.contacts/contacts/allmail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1466
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1468
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1473
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "frequency"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1476
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  )  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1483
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterCursor:Landroid/database/Cursor;

    .line 1486
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterCursor:Landroid/database/Cursor;

    return-object v0

    .line 1452
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v6, :cond_3

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_3

    .line 1453
    const-string v0, "content://com.android.contacts/contacts/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1455
    :cond_3
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_4

    .line 1456
    const-string v0, "content://com.android.contacts/contacts/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1458
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v7, :cond_5

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_5

    .line 1459
    const-string v0, "content://com.android.contacts/contacts/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1461
    :cond_5
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_0

    .line 1462
    const-string v0, "content://com.android.contacts/contacts/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 1480
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private enableOrNotSaveOKButton()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3405
    const v9, 0x7f070017

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 3406
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v6

    .line 3408
    .local v6, okButton:Lcom/htc/widget/HtcFooterButton;
    iget-object v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-static {v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->hasTrueInSparseBooleanArray(Landroid/util/SparseBooleanArray;)Z

    move-result v5

    .line 3409
    .local v5, hasPhoseSelected:Z
    iget-object v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-static {v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->hasTrueInSparseBooleanArray(Landroid/util/SparseBooleanArray;)Z

    move-result v4

    .line 3410
    .local v4, hasMailSelected:Z
    iget-object v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-static {v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->hasTrueInSparseBooleanArray(Landroid/util/SparseBooleanArray;)Z

    move-result v2

    .line 3411
    .local v2, hasCompanySelected:Z
    if-nez v2, :cond_0

    iget-object v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    :cond_0
    move v2, v8

    .line 3412
    :goto_0
    iget-object v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-static {v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->hasTrueInSparseBooleanArray(Ljava/util/HashMap;)Z

    move-result v3

    .line 3414
    .local v3, hasGroupSelected:Z
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    move v1, v8

    .line 3416
    .local v1, enableOkButton:Z
    :goto_1
    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 3417
    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 3418
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->updateSaveButtonState()V

    .line 3419
    return-void

    .end local v1           #enableOkButton:Z
    .end local v3           #hasGroupSelected:Z
    :cond_2
    move v2, v7

    .line 3411
    goto :goto_0

    .restart local v3       #hasGroupSelected:Z
    :cond_3
    move v1, v7

    .line 3414
    goto :goto_1
.end method

.method private ensureActuallyDataKind(I)I
    .locals 3
    .parameter "data"

    .prologue
    const v2, 0xf000003

    .line 601
    move v0, p1

    .line 602
    .local v0, result:I
    const v1, 0xf000002

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v1, :cond_2

    .line 604
    const v0, 0xf000003

    .line 608
    :cond_1
    :goto_0
    return v0

    .line 605
    :cond_2
    if-ne p1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v1, :cond_1

    .line 606
    const v0, 0xf000002

    goto :goto_0
.end method

.method private static generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"
    .parameter "key"

    .prologue
    .line 3386
    sget-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, p1, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentCursorCount()I
    .locals 6

    .prologue
    .line 3902
    const/4 v4, 0x0

    .line 3903
    .local v4, result:I
    const/4 v3, 0x0

    .line 3904
    .local v3, localSize:I
    const/4 v1, 0x0

    .line 3905
    .local v1, companySize:I
    const/4 v2, 0x0

    .line 3906
    .local v2, localCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 3907
    .local v0, companyCursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    if-eqz v5, :cond_0

    .line 3908
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 3909
    if-eqz v2, :cond_0

    .line 3910
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3913
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    if-eqz v5, :cond_1

    .line 3914
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3915
    if-eqz v0, :cond_1

    .line 3916
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 3919
    :cond_1
    add-int v5, v3, v1

    return v5
.end method

.method private getFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3593
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3594
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3595
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 3596
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3599
    .end local v0           #editable:Landroid/text/Editable;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getGroupSelectionCount()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2843
    const/4 v1, 0x0

    .line 2845
    .local v1, counts:I
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2846
    .local v3, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move v0, v6

    .line 2848
    .local v0, checked:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 2849
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2850
    .local v4, value:Ljava/lang/Integer;
    if-nez v4, :cond_2

    move v5, v6

    :goto_2
    add-int/2addr v1, v5

    goto :goto_0

    .line 2846
    .end local v0           #checked:Z
    .end local v4           #value:Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 2850
    .restart local v0       #checked:Z
    .restart local v4       #value:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    .line 2854
    .end local v0           #checked:Z
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Integer;
    :cond_3
    return v1
.end method

.method private getInputMethodManaer()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 7
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2889
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2890
    .local v3, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2891
    iget-object v4, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/pim/eas/EASGalElement;

    .line 2892
    .local v1, element:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v0, v1, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 2893
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2894
    iget-object v4, v1, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    const-string v5, "email_address"

    iget-object v6, v1, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->addItemDataItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2899
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method private getMessagePhoneForColleageElementAndLabel(Lcom/htc/android/pim/eas/EASGalElement;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8
    .parameter "element"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 2966
    const/4 v6, 0x0

    .line 2967
    .local v6, addr:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2998
    :goto_0
    return-object v2

    .line 2970
    :cond_0
    const/4 v7, 0x0

    .line 2971
    .local v7, label:Ljava/lang/String;
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2973
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2974
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "com.htc.android.mail.eas"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    const/4 v4, 0x2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2991
    :cond_1
    :goto_1
    if-eqz p2, :cond_3

    .line 2992
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2993
    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2995
    :cond_2
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move-object v2, v6

    .line 2998
    goto :goto_0

    .line 2977
    :cond_4
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2979
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2980
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "com.htc.android.mail.eas"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    const/4 v4, 0x3

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2983
    :cond_5
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2985
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2986
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "com.htc.android.mail.eas"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    const/4 v4, 0x1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private getPhoneMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 8
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2903
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2904
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 2905
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2906
    .local v1, buf:Ljava/lang/StringBuffer;
    iget-object v6, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/pim/eas/EASGalElement;

    .line 2907
    .local v2, element:Lcom/htc/android/pim/eas/EASGalElement;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2908
    invoke-direct {p0, v2, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getMessagePhoneForColleageElementAndLabel(Lcom/htc/android/pim/eas/EASGalElement;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 2910
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2911
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2912
    .local v4, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    iget-object v7, v2, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2913
    const-string v6, "phone_number"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2914
    const-string v6, "label"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2918
    .end local v4           #map:Ljava/util/HashMap;
    :cond_1
    iget-object v0, v2, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 2919
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2920
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2921
    .restart local v4       #map:Ljava/util/HashMap;
    const-string v6, "display_name"

    iget-object v7, v2, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    const-string v6, "email_address"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    const-string v6, "label"

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->MailLabel:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2924
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2929
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #map:Ljava/util/HashMap;
    :cond_2
    return-object v5
.end method

.method private getPhoneResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 8
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2869
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2870
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_1

    iget-object v6, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 2871
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2872
    .local v1, buf:Ljava/lang/StringBuffer;
    iget-object v6, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/pim/eas/EASGalElement;

    .line 2873
    .local v2, element:Lcom/htc/android/pim/eas/EASGalElement;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2874
    invoke-direct {p0, v2, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getMessagePhoneForColleageElementAndLabel(Lcom/htc/android/pim/eas/EASGalElement;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 2876
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2877
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2878
    .local v4, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    iget-object v7, v2, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2879
    const-string v6, "phone_number"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    const-string v6, "label"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2885
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #map:Ljava/util/HashMap;
    :cond_1
    return-object v5
.end method

.method private getResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2859
    .local v2, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 2860
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/pim/eas/EASGalElement;

    .line 2861
    .local v0, element:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v3, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2864
    .end local v0           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method private handleFreqiencyGroupButtonClick()V
    .locals 4

    .prologue
    .line 2262
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2263
    .local v1, launchIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2264
    .local v2, type:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.htccontacts.action.frequency_message_picker"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2266
    .local v0, frequencyIntent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2267
    const/16 v3, 0x1003

    invoke-virtual {p0, v0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2269
    return-void
.end method

.method protected static final hasTrueInSparseBooleanArray(Landroid/util/SparseBooleanArray;)Z
    .locals 5
    .parameter "array"

    .prologue
    .line 3436
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3437
    .local v2, size:I
    const/4 v1, 0x0

    .line 3438
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3439
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3440
    const/4 v1, 0x1

    .line 3444
    :cond_0
    return v1

    .line 3438
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static final hasTrueInSparseBooleanArray(Ljava/util/HashMap;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3449
    .local p0, array:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 3450
    .local v3, result:Z
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3451
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 3452
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3453
    const/4 v3, 0x1

    .line 3457
    .end local v0           #checked:Z
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return v3

    .line 3451
    .restart local v2       #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 2256
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 2257
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 2258
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 2259
    return-void
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 3505
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3506
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->BACKGROUND_SPAN_COLOR:I

    .line 3507
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 3508
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->FOREGROUND_SPAN_COLOR:I

    .line 3510
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 3511
    return-void
.end method

.method private obtainFrequencyGroupButton(Lcom/htc/widget/HtcListView;)Landroid/view/View;
    .locals 10
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2271
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2273
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x20c01be

    new-instance v5, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$7;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$7;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    move-object v1, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v6

    .line 2282
    .local v6, convertView:Landroid/view/View;
    const v1, 0x2020104

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2283
    .local v7, iconView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 2284
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2287
    :cond_0
    new-instance v8, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;

    invoke-direct {v8, v9, v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;-><init>(ZZ)V

    .line 2289
    .local v8, tag:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->setTopRound(Z)V

    .line 2291
    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2292
    return-object v6
.end method

.method private printResult(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 3025
    const-string v11, "cd_pickname"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3027
    .local v6, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "cd_pickmailaddress"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3029
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "pick_numbers"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3031
    .local v8, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "phone_pickmId"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 3033
    .local v10, phoneIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v11, "mail_pickmId"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3036
    .local v4, methods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v11, "ContactPhoneEmailDataPicker"

    const-string v12, "set result #######################:   "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    if-eqz v6, :cond_0

    .line 3039
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3040
    .local v5, name:Ljava/lang/String;
    const-string v11, "ContactPhoneEmailDataPicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result pickname:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3043
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 3044
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3045
    .local v0, address:Ljava/lang/String;
    const-string v11, "ContactPhoneEmailDataPicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result pick address:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3049
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v4, :cond_2

    .line 3050
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3051
    .local v3, method:Ljava/lang/Integer;
    const-string v11, "ContactPhoneEmailDataPicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result method id:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3055
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #method:Ljava/lang/Integer;
    :cond_2
    if-eqz v10, :cond_3

    .line 3056
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3057
    .local v9, phone:I
    const-string v11, "ContactPhoneEmailDataPicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result phoneIds id:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3061
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v9           #phone:I
    :cond_3
    if-eqz v8, :cond_4

    .line 3062
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3063
    .local v7, number:Ljava/lang/String;
    const-string v11, "ContactPhoneEmailDataPicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result pickname:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3066
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #number:Ljava/lang/String;
    :cond_4
    const-string v11, "ContactPhoneEmailDataPicker"

    const-string v12, "set result #######################:   "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    return-void
.end method

.method private saveCpToArray()V
    .locals 8

    .prologue
    .line 2474
    const/4 v5, 0x0

    .line 2475
    .local v5, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2476
    .local v0, address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2477
    .local v3, isTrow:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 2478
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2480
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2481
    .local v2, index:I
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2482
    .local v4, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2483
    .restart local v5       #name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    const-string v6, "phone_number"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2499
    .restart local v0       #address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2500
    const-string v6, "email_address"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2502
    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    const/4 v3, 0x1

    .line 2477
    .end local v2           #index:I
    .end local v4           #map:Ljava/util/HashMap;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2508
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2509
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2511
    return-void
.end method

.method private saveCpToArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2441
    .local p1, outNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, outDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 2442
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2446
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2447
    .local v2, index:I
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2448
    .local v3, map:Ljava/util/HashMap;
    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2449
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2450
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2464
    const-string v5, "phone_number"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2465
    .restart local v0       #address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2466
    const-string v5, "email_address"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2468
    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #map:Ljava/util/HashMap;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2471
    :cond_2
    return-void
.end method

.method private setCountTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2814
    const/4 v0, 0x0

    .line 2815
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2816
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 2817
    add-int/lit8 v0, v0, 0x1

    .line 2815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2820
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2821
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2822
    add-int/lit8 v0, v0, 0x1

    .line 2820
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2826
    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2827
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 2828
    add-int/lit8 v0, v0, 0x1

    .line 2826
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2831
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2832
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 2835
    :cond_6
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getGroupSelectionCount()I

    move-result v1

    .line 2837
    .local v1, groupMemberCounts:I
    add-int/2addr v0, v1

    .line 2839
    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mTitleCount:I

    .line 2840
    return-void
.end method

.method private setEmtpyTextToView(Z)V
    .locals 3
    .parameter "isFilter"

    .prologue
    .line 588
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 589
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 590
    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v2, 0xf000001

    if-ne v1, v2, :cond_1

    .line 591
    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v2, 0xf000002

    if-ne v1, v2, :cond_2

    .line 593
    const v1, 0x7f0a0332

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 594
    :cond_2
    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v2, 0xf000003

    if-ne v1, v2, :cond_0

    .line 595
    const v1, 0x7f0a032d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showAlertDialog()V
    .locals 6

    .prologue
    .line 1639
    const v2, 0x7f0a014d

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, temp:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a014c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->maxSelectedContactsCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0160

    new-instance v4, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$2;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$2;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1651
    .local v0, mConfirmDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1652
    return-void
.end method

.method private showMessage(ILjava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 3002
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 3005
    return-void
.end method

.method private showQueryProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 412
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 413
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 417
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showSearchProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3008
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 3009
    const v1, 0x7f0a0224

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3010
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 3014
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startFrequencyQuery()V
    .locals 10

    .prologue
    const v9, 0xf000003

    const v7, 0xf000002

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterMode:Z

    .line 436
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->cancelOperation(I)V

    .line 437
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->cancelOperation(I)V

    .line 438
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;

    invoke-direct {v2, v6}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;)V

    .line 439
    .local v2, cookie:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;
    iput-boolean v1, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->isLimit:Z

    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, queryuri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 443
    .local v5, selection:Ljava/lang/String;
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    iput v0, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->queryMode:I

    .line 445
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v4, 0xf000001

    if-ne v0, v4, :cond_1

    .line 446
    const-string v0, "content://com.android.contacts/contacts/allmail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 462
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 465
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "frequency"

    const-string v4, "true"

    invoke-virtual {v8, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 467
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    sget-object v4, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void

    .line 448
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v7, :cond_2

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_2

    .line 449
    const-string v0, "content://com.android.contacts/contacts/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 451
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v7, :cond_3

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_3

    .line 452
    const-string v0, "content://com.android.contacts/contacts/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 454
    :cond_3
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v9, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_4

    .line 455
    const-string v0, "content://com.android.contacts/contacts/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 457
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v0, v9, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_0

    .line 458
    const-string v0, "content://com.android.contacts/contacts/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private startQuery()V
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startFrequencyQuery()V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startQuery(Z)V

    goto :goto_0
.end method

.method private startQuery(Z)V
    .locals 15
    .parameter "immediatelyQuery"

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterMode:Z

    .line 474
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->cancelOperation(I)V

    .line 475
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->cancelOperation(I)V

    .line 477
    const/4 v9, 0x0

    .line 479
    .local v9, queryuri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 480
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x0

    .line 482
    .local v3, limit_query_uri:Landroid/net/Uri;
    new-instance v8, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;)V

    .line 483
    .local v8, cookie:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;
    const/4 v14, 0x0

    .line 484
    .local v14, bDelayedQuery:Z
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->isLimit:Z

    .line 488
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    iput v0, v8, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->queryMode:I

    .line 490
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v1, 0xf000001

    if-ne v0, v1, :cond_4

    .line 491
    const-string v0, "content://com.android.contacts/contacts/picker/allmail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 512
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsOnlyGroup:Z

    if-eqz v0, :cond_1

    .line 513
    const-string v0, "content://com.android.contacts/contacts/picker/group/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 517
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsinitialFilter:Z

    if-eqz v0, :cond_2

    .line 518
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterInitial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 520
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->enableCompanySearch(Z)V

    .line 525
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v4, "100"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 529
    if-eqz v14, :cond_3

    if-nez p1, :cond_3

    .line 530
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;)V

    .line 531
    .local v2, co:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->isLimit:Z

    .line 532
    iget v0, v8, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->tabMode:I

    iput v0, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->tabMode:I

    .line 533
    iget v0, v8, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->queryMode:I

    iput v0, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->queryMode:I

    .line 534
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .end local v2           #co:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 494
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v1, 0xf000002

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_5

    .line 495
    const-string v0, "content://com.android.contacts/contacts/picker/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 498
    :cond_5
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v1, 0xf000002

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_6

    .line 499
    const-string v0, "content://com.android.contacts/contacts/picker/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0

    .line 502
    :cond_6
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v1, 0xf000003

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_7

    .line 503
    const-string v0, "content://com.android.contacts/contacts/picker/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0

    .line 506
    :cond_7
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v1, 0xf000003

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-nez v0, :cond_0

    .line 507
    const-string v0, "content://com.android.contacts/contacts/picker/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private undateHeaderButtonStateDelayed(J)V
    .locals 4
    .parameter "delayed"

    .prologue
    .line 4025
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x500f

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4026
    return-void
.end method


# virtual methods
.method protected calculateContact(Landroid/database/Cursor;)I
    .locals 18
    .parameter "cursor"

    .prologue
    .line 4051
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 4052
    .local v13, originalPos:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 4053
    .local v14, size:I
    const-string v17, "summ_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4054
    .local v6, gCountIdx:I
    if-gez v6, :cond_0

    .line 4100
    .end local v14           #size:I
    :goto_0
    return v14

    .line 4057
    .restart local v14       #size:I
    :cond_0
    const/16 v16, 0x0

    .line 4058
    .local v16, totalCounts:I
    const-string v17, "mimetype"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4059
    .local v12, mimeTypeIdx:I
    const-string v17, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4060
    .local v5, displayNameIdx:I
    const-string v17, "summ_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4061
    .local v2, countIdx:I
    const-string v17, "group_is_read_only"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4062
    .local v8, groupIsReadOnlyIdx:I
    const-string v17, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4064
    .local v10, idIdx:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v14, :cond_8

    .line 4065
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4067
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4068
    .local v11, mimeType:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 4070
    .local v4, dataId:I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 4071
    .local v3, counts:I
    if-gtz v3, :cond_1

    .line 4072
    const/4 v3, 0x1

    .line 4075
    :cond_1
    if-nez v11, :cond_6

    .line 4076
    const/4 v15, 0x0

    .line 4077
    .local v15, title:Ljava/lang/String;
    const/4 v7, -0x1

    .line 4078
    .local v7, groupIsReadOnly:I
    if-ltz v5, :cond_2

    .line 4079
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4080
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4082
    :cond_2
    if-nez v15, :cond_3

    .line 4083
    const-string v15, ""

    .line 4085
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_5

    .line 4086
    :cond_4
    add-int v16, v16, v3

    .line 4064
    .end local v7           #groupIsReadOnly:I
    .end local v15           #title:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4088
    :cond_6
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 4089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 4090
    add-int v16, v16, v3

    goto :goto_2

    .line 4093
    :cond_7
    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 4094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 4095
    add-int v16, v16, v3

    goto :goto_2

    .line 4099
    .end local v3           #counts:I
    .end local v4           #dataId:I
    .end local v11           #mimeType:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move/from16 v14, v16

    .line 4100
    goto/16 :goto_0
.end method

.method closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 2779
    if-nez p1, :cond_0

    .line 2785
    :goto_0
    return-void

    .line 2781
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2782
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2784
    :cond_1
    const/4 p1, 0x0

    .line 2785
    goto :goto_0
.end method

.method public collectData()V
    .locals 1

    .prologue
    .line 2363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectData(Z)V

    .line 2364
    return-void
.end method

.method public collectData(Z)V
    .locals 9
    .parameter "isFinish"

    .prologue
    const/4 v8, 0x1

    .line 2370
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 2371
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->addCheckedGroupContactToContactList()V

    .line 2376
    :cond_1
    const/4 v0, 0x0

    .line 2378
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v4, methodIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2380
    .local v5, phoneIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 2381
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 2382
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    add-int/lit8 v0, v0, 0x1

    .line 2380
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2386
    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 2387
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-ne v6, v8, :cond_4

    .line 2388
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2389
    .local v2, id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    add-int/lit8 v0, v0, 0x1

    .line 2386
    .end local v2           #id:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2394
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2395
    .local v3, intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v6, :cond_6

    .line 2396
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->saveCpToArray()V

    .line 2397
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 2398
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v0, v6

    .line 2403
    :cond_6
    const-string v6, "cd_pickname"

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2405
    const v6, 0xf000002

    iget v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v6, v7, :cond_9

    .line 2406
    const-string v6, "phone_pickmId"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2407
    const-string v6, "cd_pickmailaddress"

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2420
    :cond_7
    :goto_2
    if-nez v0, :cond_b

    .line 2423
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setResult(ILandroid/content/Intent;)V

    .line 2424
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->finish()V

    .line 2437
    :cond_8
    :goto_3
    return-void

    .line 2409
    :cond_9
    const v6, 0xf000003

    iget v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v6, v7, :cond_a

    .line 2410
    const-string v6, "phone_pickmId"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2411
    const-string v6, "mail_pickmId"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2412
    const-string v6, "cd_pickmailaddress"

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 2414
    :cond_a
    const v6, 0xf000001

    iget v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    if-ne v6, v7, :cond_7

    .line 2415
    const-string v6, "mail_pickmId"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2416
    const-string v6, "cd_pickmailaddress"

    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 2427
    :cond_b
    const-string v6, "mail_pickmId"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2428
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setResult(ILandroid/content/Intent;)V

    .line 2434
    if-eqz p1, :cond_8

    .line 2435
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->finish()V

    goto :goto_3
.end method

.method protected collectDataToEntryList()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3234
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3236
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->addCheckedGroupContactToContactList(ZLjava/util/ArrayList;)V

    .line 3239
    const/4 v15, 0x0

    .line 3241
    .local v15, count:I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3242
    .local v20, methodIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 3243
    .local v22, phoneIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_1

    .line 3244
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3245
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    add-int/lit8 v15, v15, 0x1

    .line 3243
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3249
    :cond_1
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_3

    .line 3250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 3251
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    .line 3252
    .local v17, id:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    add-int/lit8 v15, v15, 0x1

    .line 3249
    .end local v17           #id:I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3257
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 3258
    .local v18, intent:Landroid/content/Intent;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 3259
    .local v24, tempNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 3261
    .local v23, tempDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v6, :cond_4

    .line 3262
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->saveCpToArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 3264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v15, v6

    .line 3269
    :cond_4
    const/16 v16, 0x0

    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_5

    .line 3270
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3271
    .local v4, name:Ljava/lang/String;
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3272
    .local v5, address:Ljava/lang/String;
    if-nez v5, :cond_7

    .line 3281
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #address:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 3282
    .local v21, n_size:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3283
    .local v14, ad_size:I
    if-lez v21, :cond_8

    .line 3285
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 3286
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3287
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, ""

    .line 3288
    .restart local v5       #address:Ljava/lang/String;
    move/from16 v0, v16

    if-ge v0, v14, :cond_6

    .line 3289
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #address:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 3291
    .restart local v5       #address:Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 3293
    .local v3, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3285
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 3274
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v14           #ad_size:I
    .end local v21           #n_size:I
    :cond_7
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 3276
    .restart local v3       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3269
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 3299
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #address:Ljava/lang/String;
    .restart local v14       #ad_size:I
    .restart local v21       #n_size:I
    :cond_8
    const-string v6, "cd_pickname"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3301
    const-string v6, "ContactPhoneEmailDataPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "collectDataToEntryList type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    const/16 v16, 0x0

    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_9

    .line 3303
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3304
    .local v11, keyId:I
    const/4 v12, 0x0

    .line 3306
    .local v12, issim:Z
    move v10, v11

    .line 3307
    .local v10, rowid:I
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 3309
    .restart local v3       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3302
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 3311
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v10           #rowid:I
    .end local v11           #keyId:I
    .end local v12           #issim:Z
    :cond_9
    const/16 v16, 0x0

    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_a

    .line 3312
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3313
    .restart local v11       #keyId:I
    const/4 v12, 0x0

    .line 3314
    .restart local v12       #issim:Z
    move v10, v11

    .line 3315
    .restart local v10       #rowid:I
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 3317
    .restart local v3       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3311
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 3319
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v10           #rowid:I
    .end local v11           #keyId:I
    .end local v12           #issim:Z
    :cond_a
    return-object v19
.end method

.method protected ensureFastScrollEnabled(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 3553
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3590
    :cond_0
    :goto_0
    return-void

    .line 3556
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    .line 3557
    .local v4, listView:Lcom/htc/widget/HtcListView;
    const/4 v3, 0x0

    .line 3558
    .local v3, isFiltering:Z
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 3559
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3560
    .local v1, editable:Landroid/text/Editable;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3561
    const/4 v3, 0x1

    .line 3565
    .end local v1           #editable:Landroid/text/Editable;
    :cond_2
    if-eqz v4, :cond_0

    .line 3566
    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->isFastScrollEnabled()Z

    move-result v2

    .line 3567
    .local v2, isEnable:Z
    move v5, v2

    .line 3570
    .local v5, toEnable:Z
    if-eqz v3, :cond_3

    .line 3571
    const/4 v5, 0x0

    .line 3587
    :goto_1
    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 3573
    :cond_3
    const/16 v0, 0x1f40

    .line 3574
    .local v0, counts:I
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3575
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3577
    :cond_4
    const/16 v6, 0x1f40

    if-ge v0, v6, :cond_5

    .line 3578
    const/4 v5, 0x1

    goto :goto_1

    .line 3580
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected ensureSubTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3607
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v1, :cond_0

    .line 3608
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3610
    .local v0, border:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3611
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 3612
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->setSubHeaderEnabled(Z)V

    .line 3613
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 3614
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->enableCompanySearch(Z)V

    .line 3623
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->notifyDataSetChanged()V

    .line 3625
    .end local v0           #border:I
    :cond_0
    return-void

    .line 3616
    .restart local v0       #border:I
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 3617
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->setSubHeaderEnabled(Z)V

    .line 3618
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 3619
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->enableCompanySearch(Z)V

    goto :goto_0
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 21

    .prologue
    .line 3923
    const/4 v4, 0x0

    .line 3924
    .local v4, counts:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 3926
    .local v9, listView:Lcom/htc/widget/HtcListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 3928
    .local v10, localCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 3930
    .local v13, originalPos:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3932
    .local v5, groupPosList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 3934
    :cond_0
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3935
    .local v11, mimeType:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 3936
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3937
    .local v12, name:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 3939
    .local v2, booleanVal:Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 3940
    add-int/lit8 v4, v4, 0x1

    .line 3943
    .end local v2           #booleanVal:Ljava/lang/Boolean;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3945
    .end local v12           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_0

    .line 3948
    .end local v11           #mimeType:Ljava/lang/String;
    :cond_3
    invoke-interface {v10, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseBooleanArray;->size()I

    move-result v17

    .line 3964
    .local v17, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 3965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3966
    add-int/lit8 v4, v4, 0x1

    .line 3964
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3971
    :cond_5
    if-eqz v9, :cond_6

    .line 3972
    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 3974
    .local v1, adapter:Landroid/widget/Adapter;
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v17

    .line 3975
    const/4 v15, 0x0

    .local v15, position:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 3976
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->refineToGruopAdapterPosition(I)I

    move-result v14

    .line 3977
    .local v14, pos:I
    const/16 v16, -0x1

    .line 3979
    .local v16, secondRefineIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 3980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v14, v0, :cond_7

    .line 4021
    .end local v1           #adapter:Landroid/widget/Adapter;
    .end local v14           #pos:I
    .end local v15           #position:I
    .end local v16           #secondRefineIndex:I
    :cond_6
    return v4

    .line 4001
    .restart local v1       #adapter:Landroid/widget/Adapter;
    .restart local v14       #pos:I
    .restart local v15       #position:I
    .restart local v16       #secondRefineIndex:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 4003
    .local v7, id:J
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3975
    :cond_8
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 4006
    :cond_9
    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-lez v18, :cond_8

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    long-to-int v0, v7

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 4011
    .local v3, checked:Z
    if-nez v3, :cond_a

    .line 4012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    long-to-int v0, v7

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 4014
    :cond_a
    if-eqz v3, :cond_8

    .line 4015
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public handleShowPickContactOption()V
    .locals 4

    .prologue
    .line 1956
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5005

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1957
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectDataToEntryList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1958
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1959
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1961
    const-string v2, "addresslist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1962
    const-string v2, "TARGET_TYPE"

    iget v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1964
    const/16 v2, 0x1001

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1965
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5006

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1966
    return-void
.end method

.method public launchIME(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 3162
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 3163
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3167
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3168
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3170
    sget-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mResultReceiver:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    if-nez v0, :cond_1

    .line 3171
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/widget/EditText;)V

    sput-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mResultReceiver:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    .line 3173
    :cond_1
    sget-object v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mResultReceiver:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 3175
    :cond_2
    return-void
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 612
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    const v1, 0x209006c

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x1

    .line 1970
    packed-switch p1, :pswitch_data_0

    .line 2036
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2037
    return-void

    .line 1973
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 1974
    if-eqz p3, :cond_0

    .line 1975
    iget-boolean v7, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    if-nez v7, :cond_1

    .line 1976
    iput-boolean v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    goto :goto_0

    .line 1977
    :cond_1
    iget-boolean v7, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    if-nez v7, :cond_0

    .line 1978
    iput-boolean v9, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    .line 1979
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startQuery()V

    goto :goto_0

    .line 1987
    :pswitch_1
    if-ne p2, v7, :cond_0

    .line 1988
    const-string v7, "addresslist"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1991
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->updateCollectedData(Ljava/util/ArrayList;)V

    .line 1993
    new-instance v5, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$3;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$3;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 2000
    .local v5, r:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mThreadPool:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

    invoke-virtual {v7, v5, v9}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->getThread(Ljava/lang/Runnable;Z)Ljava/lang/Thread;

    move-result-object v6

    .line 2001
    .local v6, thread:Ljava/lang/Thread;
    if-eqz v6, :cond_0

    .line 2002
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2010
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    .end local v5           #r:Ljava/lang/Runnable;
    .end local v6           #thread:Ljava/lang/Thread;
    :pswitch_2
    if-ne p2, v7, :cond_0

    if-eqz p3, :cond_0

    .line 2011
    const-string v7, "phone_pickmId"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2013
    .local v4, phoneIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "mail_pickmId"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2018
    .local v3, methods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 2019
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2020
    .local v1, id:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 2024
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :cond_2
    if-eqz v4, :cond_3

    .line 2025
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2026
    .restart local v1       #id:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 2030
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectDataThread()V

    goto/16 :goto_0

    .line 1970
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 2046
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2053
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 2054
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "Protocol"

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mProtocol:I

    .line 2056
    const-string v2, "max_selected_contacts_count"

    const v3, 0x7fffffff

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->maxSelectedContactsCount:I

    .line 2059
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z

    .line 2061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_0

    .line 2062
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2065
    :cond_0
    const/16 v19, 0x0

    .line 2067
    .local v19, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->KEY_ONLY_GROUP:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsOnlyGroup:Z

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v19

    .line 2071
    if-eqz v19, :cond_10

    .line 2072
    const-string v2, "vnd.android.cursor.dir/phone_v2-and-email_v2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2073
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    .line 2074
    const v2, 0xf000003

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    .line 2085
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 2086
    const-string v2, "list_data_kind"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2087
    .local v12, kind:I
    if-eqz v12, :cond_2

    .line 2088
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    .line 2090
    :cond_2
    const-string v2, "mprotocol"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mProtocol:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 2091
    .local v16, protocel:I
    if-eqz v16, :cond_3

    .line 2092
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mProtocol:I

    .line 2096
    .end local v12           #kind:I
    .end local v16           #protocel:I
    :cond_3
    const v17, 0x7f0a032e

    .line 2098
    .local v17, resId:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v3, 0xf000001

    if-ne v2, v3, :cond_11

    .line 2099
    const v17, 0x7f0a032e

    .line 2106
    :cond_4
    :goto_1
    const-string v2, "query"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterInitial:Ljava/lang/String;

    .line 2112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterInitial:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2113
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsinitialFilter:Z

    .line 2117
    :cond_5
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->requestWindowFeature(I)Z

    .line 2118
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->requestWindowFeature(I)Z

    .line 2119
    const v2, 0x7f030034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setContentView(I)V

    .line 2121
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setEmptyText(I)V

    .line 2123
    const v2, 0x7f07001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 2124
    .local v18, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v18, :cond_6

    .line 2125
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 2126
    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    .line 2128
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_8

    .line 2129
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsinitialFilter:Z

    if-eqz v2, :cond_7

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFilterInitial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    const v3, 0x7f0a0139

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2133
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mLocalSearchWatch:Landroid/text/TextWatcher;

    .line 2134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mLocalSearchWatch:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2139
    :cond_8
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 2140
    .local v8, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sEnableFrequencyPickerButton:Z

    if-eqz v2, :cond_9

    if-eqz v8, :cond_9

    const-string v2, "com.android.htccontacts.action.frequency_message_picker"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2143
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    .line 2144
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    .line 2148
    :cond_9
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mQueryHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;

    .line 2150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    .line 2152
    .local v15, lopper:Landroid/os/Looper;
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSelfHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;

    .line 2158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_a

    .line 2159
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2162
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v14

    .line 2164
    .local v14, listView:Lcom/htc/widget/HtcListView;
    sget-boolean v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sEnableFrequencyPickerButton:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    if-nez v2, :cond_b

    .line 2165
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->obtainFrequencyGroupButton(Lcom/htc/widget/HtcListView;)Landroid/view/View;

    move-result-object v10

    .line 2166
    .local v10, buttonView:Landroid/view/View;
    invoke-virtual {v14, v10}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 2169
    .end local v10           #buttonView:Landroid/view/View;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->initListHeaderView()V

    .line 2172
    new-instance v2, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-direct {v2}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    .line 2173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    .line 2176
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    const v5, 0x209006c

    sget-object v6, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/app/Activity;I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    .line 2182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    .line 2183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z

    .line 2188
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setListLoading()V

    .line 2190
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIMECloseOnScrollListener:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;

    .line 2191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIMECloseOnScrollListener:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 2193
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 2195
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setCountTitle()V

    .line 2197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->PhoneLabel:Ljava/lang/String;

    .line 2198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->MailLabel:Ljava/lang/String;

    .line 2200
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->initSpanColor()V

    .line 2203
    new-instance v13, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 2212
    .local v13, linstener:Landroid/view/View$OnFocusChangeListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    .line 2213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2216
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_d

    .line 2217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    const/16 v3, 0xb1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 2222
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2224
    const v2, 0x7f070017

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 2225
    .local v9, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v9}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$5;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2231
    invoke-virtual {v9}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mOkButton:Lcom/htc/widget/HtcFooterButton;

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mOkButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f0a0150

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 2234
    invoke-virtual {v9}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2236
    invoke-virtual {v9}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2247
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 2249
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mThreadPool:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

    .line 2253
    return-void

    .line 2075
    .end local v8           #action:Ljava/lang/String;
    .end local v9           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .end local v13           #linstener:Landroid/view/View$OnFocusChangeListener;
    .end local v14           #listView:Lcom/htc/widget/HtcListView;
    .end local v15           #lopper:Landroid/os/Looper;
    .end local v17           #resId:I
    .end local v18           #searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    :cond_e
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2076
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    .line 2077
    const v2, 0xf000002

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    goto/16 :goto_0

    .line 2078
    :cond_f
    const-string v2, "vnd.android.cursor.dir/email_v2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2079
    const v2, 0xf000001

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    goto/16 :goto_0

    .line 2082
    :cond_10
    const v2, 0xf000001

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    goto/16 :goto_0

    .line 2100
    .restart local v17       #resId:I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v3, 0xf000002

    if-ne v2, v3, :cond_12

    .line 2101
    const v17, 0x7f0a0332

    goto/16 :goto_1

    .line 2102
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v3, 0xf000003

    if-ne v2, v3, :cond_4

    .line 2103
    const v17, 0x7f0a032d

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 3391
    packed-switch p1, :pswitch_data_0

    .line 3401
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3393
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3394
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3395
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 3396
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 3397
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 3391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v3, 0x6f

    const/4 v2, 0x0

    .line 1873
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1875
    const/4 v0, 0x4

    const v1, 0x7f0a0108

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1877
    const/4 v0, 0x3

    const v1, 0x7f0a0262

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1881
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    const v1, 0xf000001

    if-eq v0, v1, :cond_0

    .line 1882
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v0, :cond_1

    .line 1883
    const v0, 0x7f0a0033

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1893
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1887
    :cond_1
    const v0, 0x7f0a0032

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1563
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z

    .line 1564
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 1566
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    if-eqz v2, :cond_0

    .line 1567
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->clear()V

    .line 1568
    iput-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    .line 1573
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    if-eqz v2, :cond_1

    .line 1574
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    instance-of v2, v2, Landroid/widget/ResourceCursorAdapter;

    if-eqz v2, :cond_1

    .line 1575
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1579
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1581
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->closeCursor(Landroid/database/Cursor;)V

    .line 1582
    iput-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCursor:Landroid/database/Cursor;

    .line 1592
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->matrixCursor:Landroid/database/MatrixCursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1593
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->closeCursor(Landroid/database/Cursor;)V

    .line 1594
    iput-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->matrixCursor:Landroid/database/MatrixCursor;

    .line 1597
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    if-eqz v2, :cond_4

    .line 1598
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->destroy()V

    .line 1601
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1603
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1604
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1605
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1606
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1612
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1614
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5009

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1615
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x500a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1619
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1620
    .local v1, lopper:Landroid/os/Looper;
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1622
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    .line 1623
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1626
    :cond_5
    if-eqz v0, :cond_6

    .line 1627
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1630
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1633
    :cond_6
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissQueryProgress()V

    .line 1634
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissSearchProgressDialog()V

    .line 1636
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 2
    .parameter "IsChecked"

    .prologue
    .line 4031
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setAllItemChecked(Z)Z

    move-result v0

    .line 4032
    .local v0, done:Z
    if-eqz v0, :cond_1

    .line 4033
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4034
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->enableOrNotSaveOKButton()V

    .line 4038
    :cond_0
    :goto_0
    return-void

    .line 4035
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v1, :cond_0

    .line 4036
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2791
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2792
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setResult(I)V

    .line 2793
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->finish()V

    .line 2795
    const/4 v0, 0x1

    .line 2798
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 31
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "idL"

    .prologue
    .line 1656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1662
    .local v6, beginTime:J
    sget-boolean v28, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sEnableFrequencyPickerButton:Z

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 1663
    if-nez p3, :cond_1

    .line 1664
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->handleFreqiencyGroupButtonClick()V

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v28

    sub-int v14, p3, v28

    .line 1670
    .local v14, cur_pos:I
    if-gez v14, :cond_2

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0

    .line 1675
    :cond_2
    const/16 v19, 0x0

    .line 1676
    .local v19, isCollageAddress:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->refineToGruopAdapterPosition(I)I

    move-result v21

    .line 1677
    .local v21, pos:I
    const/16 v24, -0x1

    .line 1678
    .local v24, secondRefineIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsEnableCompanyDirectorySupport:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCount()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCount()I

    move-result v28

    sub-int v21, v21, v28

    .line 1681
    if-ltz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getCount()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-gt v0, v1, :cond_0

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    .line 1685
    .local v20, obj:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/database/Cursor;

    move/from16 v28, v0

    if-nez v28, :cond_3

    .line 1686
    const-string v28, "SEARCH_PROMPT"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 1692
    .local v16, editable:Landroid/text/Editable;
    if-eqz v16, :cond_0

    .line 1693
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1694
    .local v23, searchString:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->executeSearch(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v15

    .line 1697
    .local v15, d:Landroid/app/Dialog;
    if-eqz v15, :cond_0

    .line 1698
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->manageDialog(Landroid/app/Dialog;)V

    .line 1699
    invoke-virtual {v15}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .end local v15           #d:Landroid/app/Dialog;
    .end local v16           #editable:Landroid/text/Editable;
    .end local v23           #searchString:Ljava/lang/String;
    :cond_3
    move-object/from16 v9, v20

    .line 1707
    check-cast v9, Landroid/database/Cursor;

    .line 1708
    .local v9, c:Landroid/database/Cursor;
    const-string v28, "account_type"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1710
    .local v4, accountTypeIndex:I
    if-ltz v4, :cond_4

    .line 1711
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1712
    .local v3, accountType:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v28, "eas_accounttype"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1714
    const-string v28, "ContactPhoneEmailDataPicker"

    const-string v29, ":Pop up view company directory "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getTitleCount()I

    move-result v28

    sub-int v22, v21, v28

    .line 1717
    .local v22, refixIndex:I
    move/from16 v24, v22

    .line 1718
    if-ltz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getCount()I

    move-result v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1721
    .local v12, colleageCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1722
    .local v8, bundle:Landroid/os/Bundle;
    const/16 v19, 0x1

    .line 1740
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accountTypeIndex:I
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #colleageCursor:Landroid/database/Cursor;
    .end local v20           #obj:Ljava/lang/Object;
    .end local v22           #refixIndex:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    .line 1741
    .restart local v20       #obj:Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1742
    .local v25, tag:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v25, v20

    .line 1743
    check-cast v25, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;

    .line 1746
    :cond_5
    const/4 v10, 0x0

    .line 1748
    .local v10, check:Landroid/widget/CheckBox;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    move/from16 v28, v0

    if-eqz v28, :cond_6

    .line 1749
    check-cast v20, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .end local v20           #obj:Ljava/lang/Object;
    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 1752
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1754
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mTitleCount:I

    move/from16 v28, v0

    sget v29, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->maxSelectedContactsCount:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v28

    if-nez v28, :cond_7

    .line 1755
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showAlertDialog()V

    goto/16 :goto_0

    .line 1761
    :cond_7
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v17, v0

    .line 1763
    .local v17, id:I
    if-eqz v19, :cond_a

    .line 1765
    move/from16 v26, v24

    .line 1766
    .local v26, tempposition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v28

    if-ltz v28, :cond_9

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v28

    if-nez v28, :cond_8

    const/16 v18, 0x1

    .line 1770
    .local v18, isCheck:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1781
    .end local v18           #isCheck:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1783
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->enableOrNotSaveOKButton()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 1768
    :cond_8
    const/16 v18, 0x0

    goto :goto_1

    .line 1773
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 1793
    .end local v26           #tempposition:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->refineToGruopAdapterPosition(I)I

    move-result v21

    .line 1797
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 1799
    .restart local v9       #c:Landroid/database/Cursor;
    const-string v28, "ContactPhoneEmailDataPicker"

    const-string v29, " onListItemClick position:====>"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const-string v28, "ContactPhoneEmailDataPicker"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " onListItemClick position: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " , "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const-string v28, "ContactPhoneEmailDataPicker"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onListItemClick position: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const-string v28, "ContactPhoneEmailDataPicker"

    const-string v29, " onListItemClick position: <===="

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1807
    .restart local v3       #accountType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1809
    .local v5, array:Landroid/util/SparseBooleanArray;
    if-eqz v25, :cond_b

    .line 1810
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->dataType:I

    move/from16 v28, v0

    if-nez v28, :cond_e

    .line 1811
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    .line 1817
    :cond_b
    :goto_3
    if-eqz v3, :cond_11

    const-string v28, "eas_accounttype"

    move-object/from16 v0, v28

    if-eq v3, v0, :cond_11

    .line 1818
    if-eqz v5, :cond_c

    .line 1819
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v28

    if-ltz v28, :cond_10

    .line 1820
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v28

    if-nez v28, :cond_f

    const/16 v18, 0x1

    .line 1824
    .restart local v18       #isCheck:Z
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1855
    .end local v18           #isCheck:Z
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1857
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->enableOrNotSaveOKButton()V

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1864
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto/16 :goto_0

    .line 1812
    :cond_e
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->dataType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    goto :goto_3

    .line 1820
    :cond_f
    const/16 v18, 0x0

    goto :goto_4

    .line 1829
    :cond_10
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 1832
    :cond_11
    if-nez v3, :cond_c

    .line 1833
    const-string v28, "display_name"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1837
    .local v27, title:Ljava/lang/String;
    if-nez v27, :cond_12

    .line 1838
    const-string v27, ""

    .line 1841
    :cond_12
    const-string v28, "summ_count"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1843
    .local v13, counts:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_13

    const/4 v11, 0x0

    .line 1846
    .local v11, checked:Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mTitleCount:I

    move/from16 v28, v0

    add-int v28, v28, v13

    sget v29, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->maxSelectedContactsCount:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_14

    if-nez v11, :cond_14

    .line 1847
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showAlertDialog()V

    goto/16 :goto_0

    .line 1843
    .end local v11           #checked:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_6

    .line 1851
    .restart local v11       #checked:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    if-nez v11, :cond_15

    const/16 v28, 0x1

    :goto_7
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_15
    const/16 v28, 0x0

    goto :goto_7
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1918
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1952
    :cond_0
    :goto_0
    return v3

    .line 1920
    :sswitch_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSelfHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;

    const v4, 0xf002

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$SelfHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1924
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1925
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1927
    const/16 v2, 0x1002

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1933
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    .line 1934
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showEmail:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0a0033

    :goto_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1937
    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    invoke-direct {p0, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->ensureActuallyDataKind(I)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    .line 1939
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 1941
    .local v1, listview:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_0

    .line 1942
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 1943
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 1945
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->refresh()V

    goto :goto_0

    .end local v1           #listview:Lcom/htc/widget/HtcListView;
    :cond_2
    move v2, v3

    .line 1933
    goto :goto_1

    .line 1934
    :cond_3
    const v2, 0x7f0a0032

    goto :goto_2

    .line 1918
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 2768
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 2770
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 2332
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2333
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 2334
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1898
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1900
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1902
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1903
    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mTitleCount:I

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1906
    :cond_0
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFrequencyPickerEnable:Z

    if-eqz v1, :cond_1

    .line 1907
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1908
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1909
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1910
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1913
    :cond_1
    return v2

    :cond_2
    move v1, v3

    .line 1903
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "inState"

    .prologue
    .line 2339
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2340
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2743
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 2745
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    if-eqz v2, :cond_0

    .line 2746
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 2748
    .local v0, filterText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2749
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startQuery()V

    .line 2750
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    .line 2764
    .end local v0           #filterText:Ljava/lang/String;
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsFirstResuming:Z

    .line 2765
    return-void

    .line 2752
    .restart local v0       #filterText:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsFirstResuming:Z

    if-nez v2, :cond_2

    .line 2753
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 2754
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_0

    .line 2755
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 2756
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    goto :goto_0

    .line 2759
    .end local v1           #listView:Lcom/htc/widget/HtcListView;
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->startQuery()V

    .line 2760
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsPeopleDirty:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2344
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2345
    const-string v0, "list_data_kind"

    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2346
    const-string v0, "mprotocol"

    iget v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mProtocol:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2347
    const-string v1, "companydirectoryMode"

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->companydirectoryMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2350
    return-void

    .line 2347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2774
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissQueryProgress()V

    .line 2775
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 2776
    return-void
.end method

.method protected refineToGruopAdapterPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected setAllItemChecked(Z)Z
    .locals 30
    .parameter "check"

    .prologue
    .line 4105
    const/16 v20, 0x0

    .line 4106
    .local v20, localCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 4107
    .local v6, companyCursor:Landroid/database/Cursor;
    const/16 v21, -0x1

    .line 4108
    .local v21, localPosition:I
    const/4 v7, -0x1

    .line 4109
    .local v7, companyPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v19

    .line 4110
    .local v19, listView:Lcom/htc/widget/HtcListView;
    if-nez v19, :cond_0

    .line 4111
    const/16 v28, 0x0

    .line 4266
    :goto_0
    return v28

    .line 4114
    :cond_0
    const/16 v22, 0x0

    .line 4115
    .local v22, localSize:I
    const/4 v8, 0x0

    .line 4117
    .local v8, companySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 4118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v20

    .line 4119
    if-eqz v20, :cond_1

    .line 4120
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->calculateContact(Landroid/database/Cursor;)I

    move-result v22

    .line 4123
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 4124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 4125
    if-eqz v6, :cond_4

    .line 4128
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v28

    if-nez v28, :cond_4

    .line 4129
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 4131
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 4132
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 4133
    .local v26, size:I
    const-string v28, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4134
    .local v16, idIdx:I
    const/16 v17, 0x0

    .local v17, index:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 4135
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v28

    if-nez v28, :cond_3

    .line 4134
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 4138
    :cond_3
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 4139
    .local v5, cId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v28

    if-nez v28, :cond_2

    .line 4140
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4148
    .end local v5           #cId:I
    .end local v16           #idIdx:I
    .end local v17           #index:I
    .end local v26           #size:I
    :cond_4
    const/4 v15, 0x0

    .line 4151
    .local v15, hasSavedColleageCounts:I
    const/16 v18, 0x0

    .local v18, keyIndex:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseBooleanArray;->size()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 4152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 4153
    add-int/lit8 v15, v15, 0x1

    .line 4151
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 4158
    :cond_6
    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseBooleanArray;->size()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 4160
    add-int/lit8 v15, v15, 0x1

    .line 4158
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 4165
    :cond_8
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseBooleanArray;->size()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 4166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 4167
    add-int/lit8 v15, v15, 0x1

    .line 4165
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 4170
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getGroupSelectionCount()I

    move-result v28

    add-int v15, v15, v28

    .line 4172
    add-int v28, v15, v8

    add-int v25, v28, v22

    .line 4174
    .local v25, seletiveCount:I
    if-nez v25, :cond_b

    .line 4175
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 4178
    :cond_b
    if-eqz p1, :cond_c

    sget v28, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->maxSelectedContactsCount:I

    move/from16 v0, v25

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 4179
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showAlertDialog()V

    .line 4180
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 4183
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 4184
    .local v3, adapter:Landroid/widget/Adapter;
    if-eqz v3, :cond_d

    .line 4185
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    .line 4186
    .local v4, allSize:I
    const/16 v17, 0x0

    .restart local v17       #index:I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v4, :cond_d

    .line 4187
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 4186
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 4191
    .end local v4           #allSize:I
    .end local v17           #index:I
    :cond_d
    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v28

    if-nez v28, :cond_15

    .line 4192
    const-string v28, "mimetype"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4193
    .local v24, mimeTypeIdx:I
    const-string v28, "display_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4194
    .local v12, displayNameIdx:I
    const-string v28, "summ_count"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4195
    .local v9, countIdx:I
    const-string v28, "group_is_read_only"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4196
    .local v14, groupIsReadOnlyIdx:I
    const-string v28, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4197
    .restart local v16       #idIdx:I
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getPosition()I

    move-result v21

    .line 4198
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 4199
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 4200
    .restart local v26       #size:I
    const/16 v17, 0x0

    .restart local v17       #index:I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    .line 4201
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v28

    if-nez v28, :cond_f

    .line 4200
    :cond_e
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 4204
    :cond_f
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4205
    .local v23, mimeType:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 4206
    .local v11, dataId:I
    if-nez v23, :cond_13

    .line 4207
    const/16 v27, 0x0

    .line 4208
    .local v27, title:Ljava/lang/String;
    const/4 v13, -0x1

    .line 4209
    .local v13, groupIsReadOnly:I
    if-ltz v12, :cond_10

    .line 4210
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 4211
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 4213
    :cond_10
    if-nez v27, :cond_11

    .line 4214
    const-string v27, ""

    .line 4217
    :cond_11
    const/4 v10, -0x1

    .line 4218
    .local v10, counts:I
    if-ltz v9, :cond_12

    .line 4219
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 4224
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4228
    .end local v10           #counts:I
    .end local v13           #groupIsReadOnly:I
    .end local v27           #title:Ljava/lang/String;
    :cond_13
    const-string v28, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_8

    .line 4231
    :cond_14
    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 4232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_8

    .line 4238
    .end local v9           #countIdx:I
    .end local v11           #dataId:I
    .end local v12           #displayNameIdx:I
    .end local v14           #groupIsReadOnlyIdx:I
    .end local v16           #idIdx:I
    .end local v17           #index:I
    .end local v23           #mimeType:Ljava/lang/String;
    .end local v24           #mimeTypeIdx:I
    .end local v26           #size:I
    :cond_15
    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v28

    if-nez v28, :cond_17

    .line 4239
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 4242
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 4243
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 4244
    .restart local v26       #size:I
    const-string v28, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4245
    .restart local v16       #idIdx:I
    const/16 v17, 0x0

    .restart local v17       #index:I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    .line 4246
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v28

    if-nez v28, :cond_16

    .line 4245
    :goto_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 4249
    :cond_16
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 4250
    .restart local v5       #cId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a

    .line 4256
    .end local v5           #cId:I
    .end local v16           #idIdx:I
    .end local v17           #index:I
    .end local v26           #size:I
    :cond_17
    if-eqz v20, :cond_18

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v28

    if-nez v28, :cond_18

    .line 4257
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4260
    :cond_18
    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v28

    if-nez v28, :cond_19

    .line 4261
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4265
    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 4266
    const/16 v28, 0x1

    goto/16 :goto_0
.end method

.method public setContactsItemListAdapterCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2353
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2360
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mFirstAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method updateCollectedData(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    const/4 v7, 0x1

    .line 3324
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3325
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3326
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3328
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3329
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3330
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3333
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3334
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 3335
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 3336
    .local v1, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v6, :cond_0

    .line 3337
    iget-object v4, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 3338
    .local v4, name:Ljava/lang/String;
    iget-object v0, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 3339
    .local v0, address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3340
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3345
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3346
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3347
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 3348
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 3349
    .restart local v1       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-nez v6, :cond_2

    .line 3350
    iget v3, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 3351
    .local v3, key:I
    iget v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-nez v6, :cond_3

    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v6, :cond_3

    .line 3352
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->phonesb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3347
    .end local v3           #key:I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3353
    .restart local v3       #key:I
    :cond_3
    iget v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-ne v6, v7, :cond_2

    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v6, :cond_2

    .line 3354
    iget-object v6, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->sb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 3358
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v3           #key:I
    :cond_4
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 4042
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getCurrentCursorCount()I

    move-result v0

    .line 4043
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 4044
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 4045
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-lez v0, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 4047
    :cond_0
    return-void

    .line 4045
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateSaveButtonState()V
    .locals 5

    .prologue
    .line 3422
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 3423
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 3424
    .local v1, okButton:Lcom/htc/widget/HtcFooterButton;
    if-eqz v1, :cond_1

    .line 3426
    iget v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mOKButtonTextResId:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3427
    .local v2, text:Ljava/lang/String;
    iget v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mTitleCount:I

    if-lez v3, :cond_0

    .line 3428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mTitleCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3430
    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 3432
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method
