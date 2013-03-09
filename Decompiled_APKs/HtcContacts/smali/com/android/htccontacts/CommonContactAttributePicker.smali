.class public final Lcom/android/htccontacts/CommonContactAttributePicker;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;,
        Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;,
        Lcom/android/htccontacts/CommonContactAttributePicker$SearchResultCollection;,
        Lcom/android/htccontacts/CommonContactAttributePicker$ColleagesCollection;,
        Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;,
        Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;,
        Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;,
        Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;,
        Lcom/android/htccontacts/CommonContactAttributePicker$IMECloseOnScrollListener;,
        Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;,
        Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;,
        Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_REQUEST_BASE:I = 0x1000

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

.field private static final HANDLER_EVENT_SHOW_PROGRESS_BAR:I = 0x5005

.field private static final HANDLE_SHOW_PICKED_CONTACTS:I = 0xf002

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final ISSIM:Ljava/lang/String; = "isSIM"

.field private static final KEY_DISPLAYNAME:Ljava/lang/String; = "display_name"

.field private static final KEY_EMAILADDRESS:Ljava/lang/String; = "email_address"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_PHONENUMBER:Ljava/lang/String; = "phone_number"

.field static final LABEL_COLUMN_INDEX:I = 0x4

.field public static LIST_ITEM_TYPE_ADDRESS:I = 0x0

.field public static LIST_ITEM_TYPE_BASE:I = 0x0

.field public static LIST_ITEM_TYPE_COMPANY_FOOTER:I = 0x0

.field public static LIST_ITEM_TYPE_GROUP:I = 0x0

.field private static final MAX_SELECTED_CONTACTS_COUNT:Ljava/lang/String; = "max_selected_contacts_count"

.field private static final MENU_ITEM_NEW_CONTACT:I = 0x4

.field private static final MENU_ITEM_SHOW_PICKED_CONTACTS:I = 0x3

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

.field private static final TAG:Ljava/lang/String; = "CommonContactAttributePicker"

.field static final TYPE_COLUMN_INDEX:I = 0x3

.field private static mResultReceiver:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver; = null

.field private static maxSelectedContactsCount:I = 0x0

.field private static final sGroupBySortKey:Z = true

.field private static final sOrderBySortKey:Z = true


# instance fields
.field private final FASTSCROLL_LIMIT:I

.field private KEY_ONLY_GROUP:Ljava/lang/String;

.field private final PhoneAndMail_Type:Ljava/lang/String;

.field private final SPEW:Z

.field private final USE_LIMIT_QUERY:Z

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

.field private mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

.field protected mCacheBooleanArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mColleageCacheArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private mFilterInitial:Ljava/lang/String;

.field protected mFilterMode:Z

.field private mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

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

.field private mIMECloseOnScrollListener:Lcom/android/htccontacts/CommonContactAttributePicker$IMECloseOnScrollListener;

.field private mInputEditor:Landroid/widget/EditText;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private volatile mIsDestroy:Z

.field private mIsEnableCompanyDirectorySupport:Z

.field private mIsEnableIncludeGroupList:Z

.field private mIsFirstResuming:Z

.field private mIsOnlyGroup:Z

.field private mIsPeopleDirty:Z

.field private mIsinitialFilter:Z

.field private mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

.field private mLocalSearchWatch:Landroid/text/TextWatcher;

.field private mOKButtonTextResId:I

.field private mOkButton:Lcom/htc/widget/HtcFooterButton;

.field mQueryHandler:Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

.field private mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

.field private mSelfHandler:Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;

.field private mSetCountTitleRunnable:Ljava/lang/Runnable;

.field private mTargetMimeTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;

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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    const/high16 v0, -0x100

    sput v0, Lcom/android/htccontacts/CommonContactAttributePicker;->SIM_ID_MASK:I

    .line 197
    sput v3, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_BASE:I

    .line 198
    sget v0, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_BASE:I

    sput v0, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_ADDRESS:I

    .line 199
    sget v0, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_GROUP:I

    .line 202
    sget v0, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/htccontacts/CommonContactAttributePicker;->LIST_ITEM_TYPE_COMPANY_FOOTER:I

    .line 226
    const v0, 0x7fffffff

    sput v0, Lcom/android/htccontacts/CommonContactAttributePicker;->maxSelectedContactsCount:I

    .line 233
    const/16 v0, 0xf

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

    sput-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    .line 267
    const/16 v0, 0xd

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

    sput-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->PEOPLE_PHONES_MAILS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 107
    iput-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mContentReady:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsFirstResuming:Z

    .line 112
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->FASTSCROLL_LIMIT:I

    .line 122
    const v0, 0x7f0a0150

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mOKButtonTextResId:I

    .line 124
    const-string v0, "group_list"

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->KEY_ONLY_GROUP:Ljava/lang/String;

    .line 128
    iput-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->SPEW:Z

    .line 136
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    .line 141
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 175
    const-string v0, "vnd.android.cursor.dir/phone_v2-and-email_v2"

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->PhoneAndMail_Type:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    .line 190
    iput-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->USE_LIMIT_QUERY:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsOnlyGroup:Z

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    .line 321
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$1;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandler:Landroid/os/Handler;

    .line 1959
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupContactMapping:Ljava/util/HashMap;

    .line 2177
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$8;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    .line 2910
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/CommonContactAttributePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->showQueryProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getFilterText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/CommonContactAttributePicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/CommonContactAttributePicker;->undateHeaderButtonStateDelayed(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupContactMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->dismissQueryProgress()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/CommonContactAttributePicker;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->enableOrNotSaveOKButton()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->collectDataThread()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getInputMethodManaer()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setCountTitle()V

    return-void
.end method

.method static synthetic access$3100()Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mResultReceiver:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    sput-object p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mResultReceiver:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->saveCpToArray()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/htccontacts/CommonContactAttributePicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getPhoneMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/htccontacts/CommonContactAttributePicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/htccontacts/CommonContactAttributePicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getPhoneResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/htccontacts/CommonContactAttributePicker;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->dismissSearchProgressDialog()V

    return-void
.end method

.method static synthetic access$4400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/CommonContactAttributePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mContentReady:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/CommonContactAttributePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mContentReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/CommonContactAttributePicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->setEmtpyTextToView(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/htccontacts/CommonContactAttributePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/CommonContactAttributePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    return-object v0
.end method

.method private addCheckedGroupContactToContactList()V
    .locals 2

    .prologue
    .line 1962
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->addCheckedGroupContactToContactList(ZLjava/util/ArrayList;)V

    .line 1963
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
    .line 1968
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1969
    .local v35, mGroupContactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v39

    .line 1971
    .local v39, size:I
    const/4 v5, 0x0

    .line 1972
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1973
    .local v3, uri:Landroid/net/Uri;
    const/16 v26, 0x0

    .line 1974
    .local v26, cursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 1975
    .local v25, counts:I
    const/16 v20, -0x1

    .line 1977
    .local v20, contactId:I
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 1978
    .local v18, buffer:Ljava/lang/StringBuffer;
    const-string v2, " (  "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1979
    const-string v2, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1980
    const-string v2, "    =  "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1981
    const-string v2, "vnd.android.cursor.item/group"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1982
    const-string v2, "  ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    .line 1987
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

    .line 1988
    .local v40, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Boolean;

    .line 1989
    .local v38, selected:Ljava/lang/Boolean;
    if-nez v38, :cond_1

    const/16 v19, 0x0

    .line 1990
    .local v19, checked:Z
    :goto_1
    if-eqz v19, :cond_0

    .line 1991
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1995
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "group_with_favorite"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1997
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 2001
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 2002
    const/16 v33, 0x0

    .line 2003
    .local v33, index:I
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 2005
    .local v32, idIdx:I
    if-eqz v26, :cond_3

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2006
    monitor-enter v26

    .line 2007
    const/16 v33, 0x0

    :goto_2
    move/from16 v0, v33

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 2008
    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2009
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2010
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 1989
    .end local v19           #checked:Z
    .end local v32           #idIdx:I
    .end local v33           #index:I
    :cond_1
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto :goto_1

    .line 2012
    .restart local v19       #checked:Z
    .restart local v32       #idIdx:I
    .restart local v33       #index:I
    :cond_2
    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2014
    :cond_3
    if-eqz v26, :cond_0

    .line 2015
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2012
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2020
    .end local v19           #checked:Z
    .end local v32           #idIdx:I
    .end local v33           #index:I
    .end local v38           #selected:Ljava/lang/Boolean;
    .end local v40           #title:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->size()I

    move-result v39

    .line 2022
    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    .line 2023
    .local v21, contactIds:[Ljava/lang/Integer;
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21           #contactIds:[Ljava/lang/Integer;
    check-cast v21, [Ljava/lang/Integer;

    .line 2024
    .restart local v21       #contactIds:[Ljava/lang/Integer;
    if-nez v39, :cond_6

    .line 2110
    :cond_5
    :goto_3
    return-void

    .line 2026
    :cond_6
    new-instance v18, Ljava/lang/StringBuffer;

    .end local v18           #buffer:Ljava/lang/StringBuffer;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 2027
    .restart local v18       #buffer:Ljava/lang/StringBuffer;
    const-string v2, "contact_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2028
    const/16 v30, 0x0

    .local v30, i:I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v39

    if-ge v0, v1, :cond_8

    .line 2029
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2030
    aget-object v2, v21, v30

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2031
    add-int/lit8 v2, v39, -0x1

    move/from16 v0, v30

    if-ge v0, v2, :cond_7

    .line 2032
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2034
    :cond_7
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2028
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 2036
    :cond_8
    const-string v2, " ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2038
    const-string v2, " AND ( mimetype =  \'vnd.android.cursor.item/phone_v2\'  OR mimetype =  \'vnd.android.cursor.item/email_v2\' ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2041
    const-string v2, " AND ( is_super_primary = 1 OR ( mimetype = \'vnd.android.cursor.item/phone_v2\' AND data7 = 1 ))"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2052
    const-string v2, "CommonContactAttributePicker"

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

    .line 2055
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

    .line 2063
    .local v8, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "mimetype DESC  , data7 DESC "

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 2074
    .local v29, data_cur:Landroid/database/Cursor;
    if-eqz v29, :cond_c

    .line 2075
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2076
    .local v17, IdIdx:I
    const-string v2, "mimetype"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 2077
    .local v36, mimeTypeIdx:I
    const-string v2, "contact_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 2079
    .local v22, contactIdx:I
    const-string v2, "data1"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 2081
    .local v27, dataIdx:I
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 2085
    .local v23, contactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_5
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2086
    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 2087
    .local v37, mimetype:Ljava/lang/String;
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2088
    .local v13, dataId:I
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 2090
    .local v24, contact_id:I
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2092
    .local v28, dataValue:Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    int-to-long v6, v13

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2100
    :cond_9
    :goto_6
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupContactMapping:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2094
    :cond_a
    if-eqz p2, :cond_9

    .line 2095
    new-instance v9, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v13

    invoke-direct/range {v9 .. v16}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2098
    .local v9, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2103
    .end local v9           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v13           #dataId:I
    .end local v24           #contact_id:I
    .end local v28           #dataValue:Ljava/lang/String;
    .end local v37           #mimetype:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->closeCursor(Landroid/database/Cursor;)V

    .line 2105
    .end local v17           #IdIdx:I
    .end local v22           #contactIdx:I
    .end local v23           #contactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v27           #dataIdx:I
    .end local v36           #mimeTypeIdx:I
    :cond_c
    if-eqz p1, :cond_5

    .line 2107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

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
    .line 2300
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2301
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    const-string v1, "email_address"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2305
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
    .line 2309
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2310
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    const-string v1, "email_address"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2314
    const-string v1, "label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    :cond_0
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2319
    return-void

    .line 2315
    :cond_1
    const-string v1, "phone_number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2316
    const-string v1, "label"

    const-string v2, ""

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
    .line 2323
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2324
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    const-string v1, "label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2328
    return-void
.end method

.method private collectDataThread()V
    .locals 4

    .prologue
    .line 1945
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->showQueryProgress()V

    .line 1946
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$7;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 1952
    .local v0, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mThreadPool:Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;->getThread(Ljava/lang/Runnable;Z)Ljava/lang/Thread;

    move-result-object v1

    .line 1953
    .local v1, thread:Ljava/lang/Thread;
    if-eqz v1, :cond_0

    .line 1954
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1957
    :cond_0
    return-void
.end method

.method private dismissQueryProgress()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 368
    :cond_0
    return-void
.end method

.method private dismissSearchProgressDialog()V
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2374
    :cond_0
    return-void
.end method

.method private doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filterKey"

    .prologue
    const/4 v4, 0x0

    .line 1181
    const/4 v1, 0x0

    .line 1182
    .local v1, queryuri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1183
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1187
    .local v3, selection:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/picker/allmail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1190
    sget-object v2, Lcom/android/htccontacts/CommonContactAttributePicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    .line 1193
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsOnlyGroup:Z

    if-eqz v0, :cond_0

    .line 1194
    const-string v0, "content://com.android.contacts/contacts/picker/group/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1199
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1201
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1206
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1207
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

    .line 1216
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1219
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6

    .line 1210
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private enableOrNotSaveOKButton()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2728
    const v8, 0x7f070017

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/CommonContactAttributePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 2729
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    .line 2732
    .local v5, okButton:Lcom/htc/widget/HtcFooterButton;
    iget-object v8, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-static {v8}, Lcom/android/htccontacts/CommonContactAttributePicker;->hasTrueInSparseBooleanArray(Landroid/util/LongSparseArray;)Z

    move-result v3

    .line 2733
    .local v3, hasDataSelected:Z
    iget-object v8, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-static {v8}, Lcom/android/htccontacts/CommonContactAttributePicker;->hasTrueInSparseBooleanArray(Landroid/util/LongSparseArray;)Z

    move-result v2

    .line 2734
    .local v2, hasCompanySelected:Z
    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    :cond_0
    move v2, v7

    .line 2735
    :goto_0
    iget-object v8, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-static {v8}, Lcom/android/htccontacts/CommonContactAttributePicker;->hasTrueInSparseBooleanArray(Ljava/util/HashMap;)Z

    move-result v4

    .line 2737
    .local v4, hasGroupSelected:Z
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    move v1, v7

    .line 2739
    .local v1, enableOkButton:Z
    :goto_1
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2740
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 2741
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->updateSaveButtonState()V

    .line 2742
    return-void

    .end local v1           #enableOkButton:Z
    .end local v4           #hasGroupSelected:Z
    :cond_2
    move v2, v6

    .line 2734
    goto :goto_0

    .restart local v4       #hasGroupSelected:Z
    :cond_3
    move v1, v6

    .line 2737
    goto :goto_1
.end method

.method protected static ensuremOnlyIncludePhoneEmail(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3371
    .local p0, mimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3372
    .local v0, enable:Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3373
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3374
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3375
    .local v2, mimeType:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3373
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3378
    :cond_0
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3379
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 3382
    :cond_2
    const/4 v0, 0x0

    .line 3386
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_3
    return v0
.end method

.method private static generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"
    .parameter "key"

    .prologue
    .line 2709
    sget-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v1, Lcom/android/htccontacts/CommonContactAttributePicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, p1, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentCursorCount()I
    .locals 5

    .prologue
    .line 3161
    const/4 v3, 0x0

    .line 3162
    .local v3, localSize:I
    const/4 v1, 0x0

    .line 3163
    .local v1, companySize:I
    const/4 v2, 0x0

    .line 3164
    .local v2, localCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 3165
    .local v0, companyCursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    if-eqz v4, :cond_0

    .line 3166
    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 3167
    if-eqz v2, :cond_0

    .line 3168
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3171
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    if-eqz v4, :cond_1

    .line 3172
    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3173
    if-eqz v0, :cond_1

    .line 3174
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 3177
    :cond_1
    add-int v4, v3, v1

    return v4
.end method

.method private getFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2876
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2877
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2878
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 2879
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2882
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

    .line 2209
    const/4 v1, 0x0

    .line 2211
    .local v1, counts:I
    iget-object v5, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

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

    .line 2212
    .local v3, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move v0, v6

    .line 2214
    .local v0, checked:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 2215
    iget-object v5, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2216
    .local v4, value:Ljava/lang/Integer;
    if-nez v4, :cond_2

    move v5, v6

    :goto_2
    add-int/2addr v1, v5

    goto :goto_0

    .line 2212
    .end local v0           #checked:Z
    .end local v4           #value:Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 2216
    .restart local v0       #checked:Z
    .restart local v4       #value:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    .line 2220
    .end local v0           #checked:Z
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Integer;
    :cond_3
    return v1
.end method

.method private getInputMethodManaer()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

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
    .line 2255
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2256
    .local v3, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2257
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

    .line 2258
    .local v1, element:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v0, v1, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 2259
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2260
    iget-object v4, v1, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    const-string v5, "email_address"

    iget-object v6, v1, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/htccontacts/CommonContactAttributePicker;->addItemDataItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2265
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method private getMessagePhoneForColleageElementAndLabel(Lcom/htc/android/pim/eas/EASGalElement;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 7
    .parameter "element"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 2332
    const/4 v0, 0x0

    .line 2333
    .local v0, addr:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2364
    :goto_0
    return-object v2

    .line 2336
    :cond_0
    const/4 v1, 0x0

    .line 2337
    .local v1, label:Ljava/lang/String;
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2339
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2340
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v4, "com.htc.android.mail.eas"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2357
    :cond_1
    :goto_1
    if-eqz p2, :cond_3

    .line 2358
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2359
    const v2, 0x7f0a0127

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2361
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move-object v2, v0

    .line 2364
    goto :goto_0

    .line 2343
    :cond_4
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2345
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2346
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v4, "com.htc.android.mail.eas"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2349
    :cond_5
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2351
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2352
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v4, "com.htc.android.mail.eas"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

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
    .line 2269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 2271
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2272
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

    .line 2273
    .local v2, element:Lcom/htc/android/pim/eas/EASGalElement;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2274
    invoke-direct {p0, v2, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getMessagePhoneForColleageElementAndLabel(Lcom/htc/android/pim/eas/EASGalElement;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 2276
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2277
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2278
    .local v4, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    iget-object v7, v2, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    const-string v6, "phone_number"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    const-string v6, "label"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2284
    .end local v4           #map:Ljava/util/HashMap;
    :cond_1
    iget-object v0, v2, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 2285
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2286
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2287
    .restart local v4       #map:Ljava/util/HashMap;
    const-string v6, "display_name"

    iget-object v7, v2, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const-string v6, "email_address"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    const-string v6, "label"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2295
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
    .line 2235
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_1

    iget-object v6, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 2237
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2238
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

    .line 2239
    .local v2, element:Lcom/htc/android/pim/eas/EASGalElement;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2240
    invoke-direct {p0, v2, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getMessagePhoneForColleageElementAndLabel(Lcom/htc/android/pim/eas/EASGalElement;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 2242
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2243
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2244
    .local v4, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    iget-object v7, v2, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    const-string v6, "phone_number"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    const-string v6, "label"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2251
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
    .line 2224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2225
    .local v2, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    iget-object v3, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 2226
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

    .line 2227
    .local v0, element:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v3, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/htccontacts/CommonContactAttributePicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2230
    .end local v0           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method protected static final hasTrueInSparseBooleanArray(Landroid/util/LongSparseArray;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2759
    .local p0, array:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2760
    .local v2, size:I
    const/4 v1, 0x0

    .line 2761
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2762
    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2763
    const/4 v1, 0x1

    .line 2767
    :cond_0
    return v1

    .line 2761
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
    .line 2772
    .local p0, array:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 2773
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

    .line 2774
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 2775
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2776
    const/4 v3, 0x1

    .line 2780
    .end local v0           #checked:Z
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return v3

    .line 2774
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
    .line 1751
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 1752
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 1753
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 1754
    return-void
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 2788
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2789
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/htccontacts/CommonContactAttributePicker;->BACKGROUND_SPAN_COLOR:I

    .line 2790
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/android/htccontacts/CommonContactAttributePicker;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/CommonContactAttributePicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 2791
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/CommonContactAttributePicker;->FOREGROUND_SPAN_COLOR:I

    .line 2793
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/android/htccontacts/CommonContactAttributePicker;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/CommonContactAttributePicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 2794
    return-void
.end method

.method private printResult(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    .line 2378
    const-string v10, "colleage_name"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2380
    .local v9, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "colleage_address"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2383
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "SELECTED_DATA_ID"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 2385
    .local v5, dataIds:[J
    const-string v10, "CommonContactAttributePicker"

    const-string v11, "set result #######################:   "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    if-eqz v9, :cond_0

    .line 2388
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2389
    .local v8, name:Ljava/lang/String;
    const-string v10, "CommonContactAttributePicker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "result pickname:   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2392
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #name:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 2393
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2394
    .local v0, address:Ljava/lang/String;
    const-string v10, "CommonContactAttributePicker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "result pick address:   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2398
    .end local v0           #address:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v5, :cond_2

    .line 2399
    move-object v2, v5

    .local v2, arr$:[J
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-wide v3, v2, v6

    .line 2400
    .local v3, data:J
    const-string v10, "CommonContactAttributePicker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "result method id:   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2405
    .end local v2           #arr$:[J
    .end local v3           #data:J
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    const-string v10, "CommonContactAttributePicker"

    const-string v11, "set result #######################:   "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    return-void
.end method

.method private saveCpToArray()V
    .locals 9

    .prologue
    .line 1918
    const/4 v4, 0x0

    .line 1919
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1921
    .local v0, address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    .line 1922
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1923
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    iget-object v7, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1925
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 1926
    .local v2, index:I
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1927
    .local v3, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #name:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1928
    .restart local v4       #name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    const-string v6, "phone_number"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1931
    .restart local v0       #address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1932
    const-string v6, "email_address"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1934
    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    .end local v2           #index:I
    .end local v3           #map:Ljava/util/HashMap;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->clear()V

    .line 1939
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1941
    return-void
.end method

.method private saveCpToArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
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
    .line 1897
    .local p1, outNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, outDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    .line 1898
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1899
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    iget-object v7, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1902
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 1903
    .local v2, index:I
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1904
    .local v3, map:Ljava/util/HashMap;
    const-string v6, "display_name"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1905
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1906
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    const-string v6, "phone_number"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1909
    .restart local v0       #address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1910
    const-string v6, "email_address"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1912
    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #map:Ljava/util/HashMap;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1915
    :cond_2
    return-void
.end method

.method private setCountTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2184
    const/4 v0, 0x0

    .line 2186
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2187
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2188
    add-int/lit8 v0, v0, 0x1

    .line 2186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2192
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2193
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 2194
    add-int/lit8 v0, v0, 0x1

    .line 2192
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2197
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 2198
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 2201
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getGroupSelectionCount()I

    move-result v1

    .line 2203
    .local v1, groupMemberCounts:I
    add-int/2addr v0, v1

    .line 2205
    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTitleCount:I

    .line 2206
    return-void
.end method

.method private setEmtpyTextToView(Z)V
    .locals 2
    .parameter "isFilter"

    .prologue
    .line 468
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 469
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 472
    :cond_0
    return-void
.end method

.method private showAlertDialog()V
    .locals 6

    .prologue
    .line 1275
    const v2, 0x7f0a014d

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1277
    .local v1, temp:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a014c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/htccontacts/CommonContactAttributePicker;->maxSelectedContactsCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0160

    new-instance v4, Lcom/android/htccontacts/CommonContactAttributePicker$2;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$2;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1287
    .local v0, mConfirmDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1288
    return-void
.end method

.method private showQueryProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 356
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 357
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 361
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startQuery()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->startQuery(Z)V

    .line 372
    return-void
.end method

.method private startQuery(Z)V
    .locals 20
    .parameter "immediatelyQuery"

    .prologue
    .line 375
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFilterMode:Z

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryHandler:Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;->cancelOperation(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryHandler:Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;->cancelOperation(I)V

    .line 379
    const-string v2, "content://com.android.contacts/contacts/htc_attribute_picker"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 381
    .local v11, queryuri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 382
    .local v17, builder:Landroid/net/Uri$Builder;
    const-string v2, "PARAM_WITH_GROUPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableIncludeGroupList:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 385
    .local v19, targetMimetype:Ljava/lang/String;
    const-string v2, "PARAM_ATTRIBUTES"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    goto :goto_0

    .line 388
    .end local v19           #targetMimetype:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 390
    const/4 v7, 0x0

    .line 391
    .local v7, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 393
    .local v5, limit_query_uri:Landroid/net/Uri;
    new-instance v10, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker$1;)V

    .line 394
    .local v10, cookie:Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;
    const/16 v16, 0x0

    .line 395
    .local v16, bDelayedQuery:Z
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->isLimit:Z

    .line 397
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsinitialFilter:Z

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFilterInitial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 400
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v2, :cond_1

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->enableCompanySearch(Z)V

    .line 405
    :cond_1
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v6, "100"

    invoke-virtual {v2, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 409
    if-eqz v16, :cond_2

    if-nez p1, :cond_2

    .line 410
    new-instance v4, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker$1;)V

    .line 411
    .local v4, co:Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->isLimit:Z

    .line 412
    iget v2, v10, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->tabMode:I

    iput v2, v4, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->tabMode:I

    .line 413
    iget v2, v10, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->queryMode:I

    iput v2, v4, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->queryMode:I

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryHandler:Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v4           #co:Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryHandler:Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    invoke-virtual/range {v8 .. v15}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private undateHeaderButtonStateDelayed(J)V
    .locals 4
    .parameter "delayed"

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x500f

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3235
    return-void
.end method


# virtual methods
.method closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 2149
    if-nez p1, :cond_0

    .line 2155
    :goto_0
    return-void

    .line 2151
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2154
    :cond_1
    const/4 p1, 0x0

    .line 2155
    goto :goto_0
.end method

.method public collectData()V
    .locals 1

    .prologue
    .line 1821
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->collectData(Z)V

    .line 1822
    return-void
.end method

.method public collectData(Z)V
    .locals 13
    .parameter "isFinish"

    .prologue
    .line 1828
    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1829
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->addCheckedGroupContactToContactList()V

    .line 1834
    :cond_1
    const/4 v0, 0x0

    .line 1836
    .local v0, count:I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v10, 0x32

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1838
    .local v1, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    .line 1839
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 1840
    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    iget-object v11, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 1841
    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 1842
    .local v4, id:J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_2

    .line 1843
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    add-int/lit8 v0, v0, 0x1

    .line 1839
    .end local v4           #id:J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1849
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1851
    new-array v2, v7, [J

    .line 1853
    .local v2, dataIds:[J
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_4

    .line 1854
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1855
    .local v8, value:J
    aput-wide v8, v2, v3

    .line 1853
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1859
    .end local v8           #value:J
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1861
    .local v6, intent:Landroid/content/Intent;
    iget-boolean v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v10, :cond_5

    .line 1862
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->saveCpToArray()V

    .line 1863
    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 1864
    iget-object v10, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1871
    :cond_5
    const-string v10, "SELECTED_DATA_ID"

    invoke-virtual {v6, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1873
    const-string v10, "colleage_name"

    iget-object v11, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1874
    const-string v10, "colleage_address"

    iget-object v11, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1877
    if-nez v0, :cond_7

    .line 1880
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/android/htccontacts/CommonContactAttributePicker;->setResult(ILandroid/content/Intent;)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->finish()V

    .line 1893
    :cond_6
    :goto_2
    return-void

    .line 1884
    :cond_7
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v6}, Lcom/android/htccontacts/CommonContactAttributePicker;->setResult(ILandroid/content/Intent;)V

    .line 1890
    if-eqz p1, :cond_6

    .line 1891
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->finish()V

    goto :goto_2
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
    .line 2573
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2575
    .local v21, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->addCheckedGroupContactToContactList(ZLjava/util/ArrayList;)V

    .line 2578
    const/4 v15, 0x0

    .line 2580
    .local v15, count:I
    new-instance v16, Ljava/util/ArrayList;

    const/16 v6, 0x14

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2581
    .local v16, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move/from16 v0, v17

    if-ge v0, v6, :cond_1

    .line 2582
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2583
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    add-int/lit8 v15, v15, 0x1

    .line 2581
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2588
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 2589
    .local v18, intent:Landroid/content/Intent;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2590
    .local v24, tempNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2592
    .local v23, tempDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v6, :cond_2

    .line 2593
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->saveCpToArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2595
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v15, v6

    .line 2600
    :cond_2
    const/16 v17, 0x0

    :goto_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v17

    if-ge v0, v6, :cond_3

    .line 2601
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2602
    .local v4, name:Ljava/lang/String;
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2603
    .local v5, address:Ljava/lang/String;
    if-nez v5, :cond_5

    .line 2612
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #address:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 2613
    .local v22, n_size:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2614
    .local v14, ad_size:I
    if-lez v22, :cond_6

    .line 2616
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 2617
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2618
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, ""

    .line 2619
    .restart local v5       #address:Ljava/lang/String;
    move/from16 v0, v17

    if-ge v0, v14, :cond_4

    .line 2620
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #address:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2622
    .restart local v5       #address:Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2624
    .local v3, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2616
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 2605
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v14           #ad_size:I
    .end local v22           #n_size:I
    :cond_5
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2607
    .restart local v3       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2630
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #address:Ljava/lang/String;
    .restart local v14       #ad_size:I
    .restart local v22       #n_size:I
    :cond_6
    const-string v6, "cd_pickname"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2633
    const/16 v17, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    .line 2634
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 2635
    .local v19, keyId:J
    const/4 v12, 0x0

    .line 2638
    .local v12, issim:Z
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v0, v19

    long-to-int v10, v0

    move-wide/from16 v0, v19

    long-to-int v11, v0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2640
    .restart local v3       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2642
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v12           #issim:Z
    .end local v19           #keyId:J
    :cond_7
    const/16 v17, 0x0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v17

    if-ge v0, v6, :cond_8

    .line 2643
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 2644
    .restart local v19       #keyId:J
    const/4 v12, 0x0

    .line 2646
    .restart local v12       #issim:Z
    new-instance v3, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-wide/from16 v0, v19

    long-to-int v10, v0

    move-wide/from16 v0, v19

    long-to-int v11, v0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/android/htccontacts/widget/AddressEntryDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 2648
    .restart local v3       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2650
    .end local v3           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v12           #issim:Z
    .end local v19           #keyId:J
    :cond_8
    return-object v21
.end method

.method protected ensureFastScrollEnabled(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 2836
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2839
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    .line 2840
    .local v4, listView:Lcom/htc/widget/HtcListView;
    const/4 v3, 0x0

    .line 2841
    .local v3, isFiltering:Z
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 2842
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2843
    .local v1, editable:Landroid/text/Editable;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 2844
    const/4 v3, 0x1

    .line 2848
    .end local v1           #editable:Landroid/text/Editable;
    :cond_2
    if-eqz v4, :cond_0

    .line 2849
    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->isFastScrollEnabled()Z

    move-result v2

    .line 2850
    .local v2, isEnable:Z
    move v5, v2

    .line 2853
    .local v5, toEnable:Z
    if-eqz v3, :cond_3

    .line 2854
    const/4 v5, 0x0

    .line 2870
    :goto_1
    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 2856
    :cond_3
    const/16 v0, 0x1f40

    .line 2857
    .local v0, counts:I
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2858
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2860
    :cond_4
    const/16 v6, 0x1f40

    if-ge v0, v6, :cond_5

    .line 2861
    const/4 v5, 0x1

    goto :goto_1

    .line 2863
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

    .line 2890
    iget-boolean v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v1, :cond_0

    .line 2891
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2893
    .local v0, border:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2894
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 2895
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->setSubHeaderEnabled(Z)V

    .line 2896
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 2897
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->enableCompanySearch(Z)V

    .line 2906
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->notifyDataSetChanged()V

    .line 2908
    .end local v0           #border:I
    :cond_0
    return-void

    .line 2899
    .restart local v0       #border:I
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 2900
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->setSubHeaderEnabled(Z)V

    .line 2901
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 2902
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->enableCompanySearch(Z)V

    goto :goto_0
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 18

    .prologue
    .line 3181
    const/4 v4, 0x0

    .line 3182
    .local v4, counts:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 3185
    .local v9, listView:Lcom/htc/widget/HtcListView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    .line 3186
    .local v13, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Boolean;>;"
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 3187
    .local v2, b:Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3188
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3193
    .end local v2           #b:Ljava/lang/Boolean;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    .line 3194
    .local v12, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v12, :cond_3

    .line 3195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3196
    add-int/lit8 v4, v4, 0x1

    .line 3194
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3201
    :cond_3
    if-eqz v9, :cond_4

    .line 3202
    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 3204
    .local v1, adapter:Landroid/widget/Adapter;
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v12

    .line 3205
    const/4 v11, 0x0

    .local v11, position:I
    :goto_2
    if-ge v11, v12, :cond_4

    .line 3206
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/htccontacts/CommonContactAttributePicker;->refineToGruopAdapterPosition(I)I

    move-result v10

    .line 3208
    .local v10, pos:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v14, :cond_5

    .line 3209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v14}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCount()I

    move-result v14

    if-lt v10, v14, :cond_5

    .line 3230
    .end local v1           #adapter:Landroid/widget/Adapter;
    .end local v10           #pos:I
    .end local v11           #position:I
    :cond_4
    return v4

    .line 3216
    .restart local v1       #adapter:Landroid/widget/Adapter;
    .restart local v10       #pos:I
    .restart local v11       #position:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v14, v10}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 3217
    .local v7, id:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-gtz v14, :cond_7

    .line 3205
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3221
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    long-to-int v15, v7

    int-to-long v15, v15

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3223
    .local v3, checked:Z
    if-eqz v3, :cond_6

    .line 3224
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public handleShowPickContactOption()V
    .locals 4

    .prologue
    .line 1538
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5005

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1539
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->collectDataToEntryList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1540
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1541
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1543
    const-string v2, "addresslist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1545
    const/16 v2, 0x1001

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1546
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5006

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1547
    return-void
.end method

.method public launchIME(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 2501
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 2502
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2506
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2507
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2509
    sget-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mResultReceiver:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    if-nez v0, :cond_1

    .line 2510
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/widget/EditText;)V

    sput-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mResultReceiver:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    .line 2512
    :cond_1
    sget-object v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mResultReceiver:Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 2514
    :cond_2
    return-void
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 477
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    const v1, 0x209006c

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 1551
    packed-switch p1, :pswitch_data_0

    .line 1590
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1591
    return-void

    .line 1554
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1555
    if-eqz p3, :cond_0

    .line 1556
    iget-boolean v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    if-nez v3, :cond_1

    .line 1557
    iput-boolean v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    goto :goto_0

    .line 1558
    :cond_1
    iget-boolean v3, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    if-nez v3, :cond_0

    .line 1559
    iput-boolean v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    .line 1560
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->startQuery()V

    goto :goto_0

    .line 1568
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 1569
    const-string v3, "addresslist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1572
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->updateCollectedData(Ljava/util/ArrayList;)V

    .line 1574
    new-instance v1, Lcom/android/htccontacts/CommonContactAttributePicker$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$3;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 1581
    .local v1, r:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mThreadPool:Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;

    invoke-virtual {v3, v1, v4}, Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;->getThread(Ljava/lang/Runnable;Z)Ljava/lang/Thread;

    move-result-object v2

    .line 1582
    .local v2, thread:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1583
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 1595
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1597
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1600
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "max_selected_contacts_count"

    const v1, 0x7fffffff

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/CommonContactAttributePicker;->maxSelectedContactsCount:I

    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsDestroy:Z

    .line 1605
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1606
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->KEY_ONLY_GROUP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsOnlyGroup:Z

    .line 1613
    const-string v0, "EXTRA_PICK_WITH_MIMETYPE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    .line 1614
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->finish()V

    .line 1748
    :goto_0
    return-void

    .line 1620
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->ensuremOnlyIncludePhoneEmail(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    .line 1621
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->ensuremOnlyIncludePhoneEmail(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableIncludeGroupList:Z

    .line 1623
    const v11, 0x7f0a032e

    .line 1625
    .local v11, resId:I
    const-string v0, "query"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFilterInitial:Ljava/lang/String;

    .line 1631
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFilterInitial:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsinitialFilter:Z

    .line 1636
    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->requestWindowFeature(I)Z

    .line 1637
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->requestWindowFeature(I)Z

    .line 1638
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setContentView(I)V

    .line 1640
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/CommonContactAttributePicker;->setEmptyText(I)V

    .line 1642
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 1643
    .local v12, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v12, :cond_4

    .line 1644
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 1645
    invoke-virtual {v12}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    .line 1647
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 1648
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    const v1, 0x7f0a0139

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1649
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mLocalSearchWatch:Landroid/text/TextWatcher;

    .line 1650
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mLocalSearchWatch:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1653
    :cond_5
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mQueryHandler:Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;

    .line 1655
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1656
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    .line 1657
    .local v10, lopper:Landroid/os/Looper;
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;

    invoke-direct {v0, p0, v10}, Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSelfHandler:Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;

    .line 1659
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_6

    .line 1660
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1663
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 1665
    .local v9, listView:Lcom/htc/widget/HtcListView;
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->initListHeaderView()V

    .line 1668
    new-instance v0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-direct {v0}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    .line 1669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    .line 1672
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    const v3, 0x209006c

    sget-object v4, Lcom/android/htccontacts/CommonContactAttributePicker;->PEOPLE_PHONES_MAILS_GROUP_PROJECTION:[Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/app/Activity;I[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    .line 1678
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    .line 1679
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 1680
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 1681
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsDestroy:Z

    .line 1684
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setListLoading()V

    .line 1686
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$IMECloseOnScrollListener;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$IMECloseOnScrollListener;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIMECloseOnScrollListener:Lcom/android/htccontacts/CommonContactAttributePicker$IMECloseOnScrollListener;

    .line 1687
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIMECloseOnScrollListener:Lcom/android/htccontacts/CommonContactAttributePicker$IMECloseOnScrollListener;

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1689
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 1691
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setCountTitle()V

    .line 1695
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->initSpanColor()V

    .line 1698
    new-instance v8, Lcom/android/htccontacts/CommonContactAttributePicker$4;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$4;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 1707
    .local v8, linstener:Landroid/view/View$OnFocusChangeListener;
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    .line 1708
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1711
    :cond_7
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 1712
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1717
    :cond_8
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1719
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 1720
    .local v6, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v6}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/CommonContactAttributePicker$5;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$5;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1726
    invoke-virtual {v6}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mOkButton:Lcom/htc/widget/HtcFooterButton;

    .line 1727
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mOkButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1729
    invoke-virtual {v6}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1731
    invoke-virtual {v6}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/CommonContactAttributePicker$6;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$6;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1742
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1744
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mThreadPool:Lcom/android/htccontacts/CommonContactAttributePicker$CollectDataThreadPool;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 2714
    packed-switch p1, :pswitch_data_0

    .line 2724
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2716
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2717
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2718
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 2719
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 2720
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 2714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1493
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1495
    const/4 v0, 0x4

    const v1, 0x7f0a0108

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1503
    const/4 v0, 0x1

    return v0
.end method

.method protected final onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1226
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsDestroy:Z

    .line 1227
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 1229
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    if-eqz v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->clear()V

    .line 1231
    iput-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    .line 1236
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    if-eqz v2, :cond_1

    .line 1237
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    instance-of v2, v2, Landroid/widget/ResourceCursorAdapter;

    if-eqz v2, :cond_1

    .line 1238
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1242
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1244
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    if-eqz v2, :cond_2

    .line 1245
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->destroy()V

    .line 1248
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1250
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1251
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1252
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1255
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1256
    .local v1, lopper:Landroid/os/Looper;
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1258
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 1259
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1262
    :cond_3
    if-eqz v0, :cond_4

    .line 1263
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1266
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1269
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->dismissQueryProgress()V

    .line 1270
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->dismissSearchProgressDialog()V

    .line 1272
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 2
    .parameter "IsChecked"

    .prologue
    .line 3240
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->setAllItemChecked(Z)Z

    move-result v0

    .line 3241
    .local v0, done:Z
    if-eqz v0, :cond_0

    .line 3242
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3243
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->enableOrNotSaveOKButton()V

    .line 3245
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2161
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2162
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setResult(I)V

    .line 2163
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->finish()V

    .line 2165
    const/4 v0, 0x1

    .line 2168
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 32
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "idL"

    .prologue
    .line 1292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1298
    .local v6, beginTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v28

    sub-int v14, p3, v28

    .line 1299
    .local v14, cur_pos:I
    if-gez v14, :cond_1

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    const/16 v19, 0x0

    .line 1305
    .local v19, isCollageAddress:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->refineToGruopAdapterPosition(I)I

    move-result v21

    .line 1306
    .local v21, pos:I
    const/16 v24, -0x1

    .line 1307
    .local v24, secondRefineIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsEnableCompanyDirectorySupport:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCount()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCount()I

    move-result v28

    sub-int v21, v21, v28

    .line 1310
    if-ltz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getCount()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-gt v0, v1, :cond_0

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    .line 1314
    .local v20, obj:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/database/Cursor;

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 1315
    const-string v28, "SEARCH_PROMPT"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 1321
    .local v16, editable:Landroid/text/Editable;
    if-eqz v16, :cond_0

    .line 1322
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1323
    .local v23, searchString:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->executeSearch(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v15

    .line 1326
    .local v15, d:Landroid/app/Dialog;
    if-eqz v15, :cond_0

    .line 1327
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/CommonContactAttributePicker;->manageDialog(Landroid/app/Dialog;)V

    .line 1328
    invoke-virtual {v15}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .end local v15           #d:Landroid/app/Dialog;
    .end local v16           #editable:Landroid/text/Editable;
    .end local v23           #searchString:Ljava/lang/String;
    :cond_2
    move-object/from16 v9, v20

    .line 1336
    check-cast v9, Landroid/database/Cursor;

    .line 1337
    .local v9, c:Landroid/database/Cursor;
    const-string v28, "account_type"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1339
    .local v4, accountTypeIndex:I
    if-ltz v4, :cond_3

    .line 1340
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1341
    .local v3, accountType:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v28, "eas_accounttype"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1343
    const-string v28, "CommonContactAttributePicker"

    const-string v29, ":Pop up view company directory "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getTitleCount()I

    move-result v28

    sub-int v22, v21, v28

    .line 1346
    .local v22, refixIndex:I
    move/from16 v24, v22

    .line 1347
    if-ltz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getCount()I

    move-result v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1350
    .local v12, colleageCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1351
    .local v8, bundle:Landroid/os/Bundle;
    const/16 v19, 0x1

    .line 1369
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accountTypeIndex:I
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #colleageCursor:Landroid/database/Cursor;
    .end local v20           #obj:Ljava/lang/Object;
    .end local v22           #refixIndex:I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    .line 1370
    .restart local v20       #obj:Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1371
    .local v25, tag:Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v25, v20

    .line 1372
    check-cast v25, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;

    .line 1375
    :cond_4
    const/4 v10, 0x0

    .line 1377
    .local v10, check:Landroid/widget/CheckBox;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1378
    check-cast v20, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .end local v20           #obj:Ljava/lang/Object;
    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 1381
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTitleCount:I

    move/from16 v28, v0

    sget v29, Lcom/android/htccontacts/CommonContactAttributePicker;->maxSelectedContactsCount:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v28

    if-nez v28, :cond_6

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->showAlertDialog()V

    goto/16 :goto_0

    .line 1390
    :cond_6
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v17, v0

    .line 1392
    .local v17, id:I
    if-eqz v19, :cond_9

    .line 1394
    move/from16 v26, v24

    .line 1395
    .local v26, tempposition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    move-object/from16 v28, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v28

    if-ltz v28, :cond_8

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    move-object/from16 v28, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_7

    const/16 v18, 0x1

    .line 1399
    .local v18, isCheck:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    move-object/from16 v28, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v28 .. v31}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1407
    .end local v18           #isCheck:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->enableOrNotSaveOKButton()V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 1397
    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    .line 1402
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    move-object/from16 v28, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v29, v0

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v28 .. v31}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 1419
    .end local v26           #tempposition:I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->refineToGruopAdapterPosition(I)I

    move-result v21

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 1425
    .restart local v9       #c:Landroid/database/Cursor;
    const-string v28, "CommonContactAttributePicker"

    const-string v29, " onListItemClick position:====>"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const-string v28, "CommonContactAttributePicker"

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

    .line 1427
    const-string v28, "CommonContactAttributePicker"

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

    .line 1428
    const-string v28, "CommonContactAttributePicker"

    const-string v29, " onListItemClick position: <===="

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1433
    .restart local v3       #accountType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1435
    .local v5, array:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    if-eqz v25, :cond_a

    .line 1436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 1440
    :cond_a
    if-eqz v3, :cond_f

    const-string v28, "eas_accounttype"

    move-object/from16 v0, v28

    if-eq v3, v0, :cond_f

    .line 1441
    if-eqz v5, :cond_b

    .line 1442
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v28

    if-ltz v28, :cond_e

    .line 1443
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_d

    const/16 v18, 0x1

    .line 1447
    .restart local v18       #isCheck:Z
    :goto_3
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1475
    .end local v18           #isCheck:Z
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSetCountTitleRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1477
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->enableOrNotSaveOKButton()V

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1484
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto/16 :goto_0

    .line 1443
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 1450
    :cond_e
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 1453
    :cond_f
    if-nez v3, :cond_b

    .line 1454
    const-string v28, "display_name"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1457
    .local v27, title:Ljava/lang/String;
    if-nez v27, :cond_10

    .line 1458
    const-string v27, ""

    .line 1461
    :cond_10
    const-string v28, "summ_count"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1463
    .local v13, counts:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_11

    const/4 v11, 0x0

    .line 1466
    .local v11, checked:Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTitleCount:I

    move/from16 v28, v0

    add-int v28, v28, v13

    sget v29, Lcom/android/htccontacts/CommonContactAttributePicker;->maxSelectedContactsCount:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_12

    if-nez v11, :cond_12

    .line 1467
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->showAlertDialog()V

    goto/16 :goto_0

    .line 1463
    .end local v11           #checked:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_5

    .line 1471
    .restart local v11       #checked:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    if-nez v11, :cond_13

    const/16 v28, 0x1

    :goto_6
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_13
    const/16 v28, 0x0

    goto :goto_6
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1534
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1523
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSelfHandler:Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;

    const v2, 0xf002

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1527
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1530
    const/16 v1, 0x1002

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1521
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 2138
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 2140
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1795
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1796
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 1797
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1508
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1510
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1512
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1513
    iget v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTitleCount:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1516
    :cond_0
    return v2

    .line 1513
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "inState"

    .prologue
    .line 1802
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1803
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2113
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 2115
    iget-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    if-eqz v2, :cond_0

    .line 2116
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, filterText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2119
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->startQuery()V

    .line 2120
    iput-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    .line 2134
    .end local v0           #filterText:Ljava/lang/String;
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsFirstResuming:Z

    .line 2135
    return-void

    .line 2122
    .restart local v0       #filterText:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsFirstResuming:Z

    if-nez v2, :cond_2

    .line 2123
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 2124
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_0

    .line 2125
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 2126
    iput-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    goto :goto_0

    .line 2129
    .end local v1           #listView:Lcom/htc/widget/HtcListView;
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->startQuery()V

    .line 2130
    iput-boolean v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1807
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1808
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2144
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->dismissQueryProgress()V

    .line 2145
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 2146
    return-void
.end method

.method protected refineToGruopAdapterPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected setAllItemChecked(Z)Z
    .locals 28
    .parameter "check"

    .prologue
    .line 3258
    const/16 v17, 0x0

    .line 3259
    .local v17, localCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 3260
    .local v6, companyCursor:Landroid/database/Cursor;
    const/16 v18, -0x1

    .line 3261
    .local v18, localPosition:I
    const/4 v7, -0x1

    .line 3262
    .local v7, companyPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v16

    .line 3263
    .local v16, listView:Lcom/htc/widget/HtcListView;
    if-nez v16, :cond_0

    .line 3264
    const/16 v24, 0x0

    .line 3367
    :goto_0
    return v24

    .line 3267
    :cond_0
    const/16 v19, 0x0

    .line 3268
    .local v19, localSize:I
    const/4 v8, 0x0

    .line 3270
    .local v8, companySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v17

    .line 3272
    if-eqz v17, :cond_1

    .line 3273
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 3276
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 3278
    if-eqz v6, :cond_2

    .line 3279
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 3283
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3285
    .local v13, hasSavedColleageCounts:I
    if-eqz p1, :cond_3

    add-int v24, v13, v8

    add-int v24, v24, v19

    sget v25, Lcom/android/htccontacts/CommonContactAttributePicker;->maxSelectedContactsCount:I

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 3286
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->showAlertDialog()V

    .line 3287
    const/16 v24, 0x0

    goto :goto_0

    .line 3290
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 3291
    .local v3, adapter:Landroid/widget/Adapter;
    if-eqz v3, :cond_4

    .line 3292
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    .line 3293
    .local v4, allSize:I
    const/4 v15, 0x0

    .local v15, index:I
    :goto_1
    if-ge v15, v4, :cond_4

    .line 3294
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 3293
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3298
    .end local v4           #allSize:I
    .end local v15           #index:I
    :cond_4
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v24

    if-nez v24, :cond_c

    .line 3299
    const-string v24, "mimetype"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 3300
    .local v21, mimeTypeIdx:I
    const-string v24, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3301
    .local v12, displayNameIdx:I
    const-string v24, "summ_count"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3302
    .local v9, countIdx:I
    const-string v24, "_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3303
    .local v14, idIdx:I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    .line 3304
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 3305
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 3306
    .local v22, size:I
    const/4 v15, 0x0

    .restart local v15       #index:I
    :goto_2
    move/from16 v0, v22

    if-ge v15, v0, :cond_c

    .line 3307
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v24

    if-nez v24, :cond_6

    .line 3306
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3310
    :cond_6
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3311
    .local v20, mimeType:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 3312
    .local v11, dataId:I
    if-nez v20, :cond_a

    .line 3313
    const/16 v23, 0x0

    .line 3314
    .local v23, title:Ljava/lang/String;
    if-ltz v12, :cond_7

    .line 3315
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3317
    :cond_7
    if-nez v23, :cond_8

    .line 3318
    const-string v23, ""

    .line 3320
    :cond_8
    const/4 v10, -0x1

    .line 3321
    .local v10, counts:I
    if-ltz v9, :cond_9

    .line 3322
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 3325
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3329
    .end local v10           #counts:I
    .end local v23           #title:Ljava/lang/String;
    :cond_a
    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 3330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    int-to-long v0, v11

    move-wide/from16 v25, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v24 .. v27}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 3332
    :cond_b
    const-string v24, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    int-to-long v0, v11

    move-wide/from16 v25, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v24 .. v27}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 3339
    .end local v9           #countIdx:I
    .end local v11           #dataId:I
    .end local v12           #displayNameIdx:I
    .end local v14           #idIdx:I
    .end local v15           #index:I
    .end local v20           #mimeType:Ljava/lang/String;
    .end local v21           #mimeTypeIdx:I
    .end local v22           #size:I
    :cond_c
    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v24

    if-nez v24, :cond_e

    .line 3340
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 3343
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 3344
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 3345
    .restart local v22       #size:I
    const-string v24, "_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3346
    .restart local v14       #idIdx:I
    const/4 v15, 0x0

    .restart local v15       #index:I
    :goto_4
    move/from16 v0, v22

    if-ge v15, v0, :cond_e

    .line 3347
    invoke-interface {v6, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v24

    if-nez v24, :cond_d

    .line 3346
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3350
    :cond_d
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3351
    .local v5, cId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    move-object/from16 v24, v0

    int-to-long v0, v5

    move-wide/from16 v25, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v24 .. v27}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_5

    .line 3357
    .end local v5           #cId:I
    .end local v14           #idIdx:I
    .end local v15           #index:I
    .end local v22           #size:I
    :cond_e
    if-eqz v17, :cond_f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v24

    if-nez v24, :cond_f

    .line 3358
    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3361
    :cond_f
    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v24

    if-nez v24, :cond_10

    .line 3362
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3366
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 3367
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public setContactsItemListAdapterCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1811
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method updateCollectedData(Ljava/util/ArrayList;)V
    .locals 11
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
    const/4 v10, 0x1

    .line 2655
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2656
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2657
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->clear()V

    .line 2659
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2660
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mGroupSelectionCounts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2661
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2664
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2665
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 2666
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 2667
    .local v1, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v6, :cond_0

    .line 2668
    iget-object v4, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 2669
    .local v4, name:Ljava/lang/String;
    iget-object v0, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 2670
    .local v0, address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2677
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->clear()V

    .line 2679
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 2680
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 2681
    .restart local v1       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-nez v6, :cond_2

    .line 2682
    iget v3, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 2683
    .local v3, key:I
    iget v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-nez v6, :cond_3

    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v6, :cond_3

    .line 2684
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    int-to-long v7, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2679
    .end local v3           #key:I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2685
    .restart local v3       #key:I
    :cond_3
    iget v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    if-ne v6, v10, :cond_2

    iget-boolean v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v6, :cond_2

    .line 2686
    iget-object v6, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    int-to-long v7, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2690
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v3           #key:I
    :cond_4
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 3249
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getCurrentCursorCount()I

    move-result v0

    .line 3250
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 3251
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 3252
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 3254
    :cond_0
    return-void

    .line 3252
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateSaveButtonState()V
    .locals 5

    .prologue
    .line 2745
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 2746
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 2747
    .local v1, okButton:Lcom/htc/widget/HtcFooterButton;
    if-eqz v1, :cond_1

    .line 2749
    iget v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mOKButtonTextResId:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2750
    .local v2, text:Ljava/lang/String;
    iget v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTitleCount:I

    if-lez v3, :cond_0

    .line 2751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker;->mTitleCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2753
    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2755
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method
