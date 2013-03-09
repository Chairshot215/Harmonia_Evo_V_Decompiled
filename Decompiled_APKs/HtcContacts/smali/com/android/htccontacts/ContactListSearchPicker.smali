.class public Lcom/android/htccontacts/ContactListSearchPicker;
.super Lcom/android/htccontacts/app/ContactsListActivity;
.source "ContactListSearchPicker.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactListSearchPicker$ReloadPreLoadCursorIdleHandler;,
        Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;,
        Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;,
        Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;,
        Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;,
        Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;,
        Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;,
        Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;,
        Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;
    }
.end annotation


# static fields
.field private static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field public static final CONTACTS_SUMMARY_PICKER_PROJECTION:[Ljava/lang/String; = null

.field private static final DIALOG_SELECT_COUNT_LIMIT:I = 0xf0f001

.field public static final EAS_ACCOUNT_TYPE:Ljava/lang/String; = "eas_accounttype"

.field public static final EXTRA_DELETE_CONTACT:Ljava/lang/String; = "DELETE_CONTACT"

.field private static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISH_DELAY:I = 0x64

.field static final HANDLER_EVENT_BASE:I = 0x5000

.field static final HANDLER_EVENT_FILTER_COMPLETE:I = 0x5001

.field static final HANDLE_FILTER_COMPLETE_DELAYED_ACTION_AFTER_CHANGE_CURSOR:I = 0x5002

.field protected static final HTC_QUERY_TOKEN:I = 0x3f2

.field protected static final HTC_QUERY_TOKEN_FULL:I = 0x3fc

.field protected static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field protected static final MODE_ADD_TO_GROUP_WITH_GROUPS:I = -0x77afff92

.field protected static final MODE_DELETE:I = -0x778fffb5

.field protected static final MODE_GROUP_MEMBER_PICKER:I = -0x77afffb0

.field protected static final MODE_GROUP_MEMBER_REMOVE_PICKER:I = -0x772fff9b

.field protected static final MODE_GROUP_MEMBER_SINGLE_PICKER:I = -0x776fffad

.field protected static final MODE_JUST_PICK_FAVORITE:I = -0x77afffa3

.field protected static final MODE_MASK_DELETE:I = 0x200000

.field protected static final MODE_MASK_HTC_SELF_SUPPORT:I = 0x100000

.field protected static final MODE_MASK_MULTPLE_LIST:I = 0x400000

.field protected static final MODE_MASK_SHOW_BUTTONS:I = 0x800000

.field protected static final MODE_MULTIPLE_PICKER:I = -0x77afffa1

.field protected static final MODE_MULTIPLE_PICKER_RAWCONTACTS:I = -0x762fff98

.field protected static final MODE_PICKER_ACCOUNT:I = -0x766fff9e

.field protected static final MODE_PICKER_CONTACTS_EXCLUDE_ACCOUNT:I = -0x77afff95

.field protected static final MODE_PICKER_CONTACTS_LINK_TO:I = -0x77afff96

.field protected static final MODE_PICKER_CONTACTS_WITH_ACCOUNT_TYPES:I = -0x77efff94

.field protected static final MODE_PICKER_FAVORITE:I = -0x776fffa6

.field protected static final MODE_PICKER_HTCSN_CONTACTS:I = -0x77efff97

.field protected static final MODE_PICKER_JOINT_RAWCONTACTS:I = -0x566fffab

.field protected static final MODE_PICK_EMAIL:I = -0x3fffff99

.field protected static final MODE_UN_MASK:I = 0xff

.field private static final OPTION_MENU_ADD_CONTACT:I = 0x3

.field private static final OPTION_MENU_SELECT_ALL:I = 0x1

.field private static final OPTION_MENU_UN_SELECT_ALL:I = 0x2

.field private static final PRELOAD_MSG:I = 0x1000

.field protected static final QUERY_BASE_FAST_LIMIT:I = 0x7d0

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x800001

.field private static final TAG:Ljava/lang/String; = "ContactListSearchPicker"

.field protected static mIdxGroupIsReadOnly:I

.field private static mPreloadPeopleSearchCursor:Landroid/database/Cursor;

.field public static sIsEnableCachePeopleSearchCursor:Z

.field private static sIsPreloadCursorDirty:Z

.field private static sIsPreloadCursorRegisterAdapterObserver:Z

.field private static sIsPreloadCursorUsed:Z

.field private static sPreloadCursorChangeObserver:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;

.field private static sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

.field private static sReloadPreLoadCursorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static time:J


# instance fields
.field protected BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

.field private BACKGROUND_SPAN_COLOR:I

.field protected FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

.field private FOREGROUND_SPAN_COLOR:I

.field private HIGH_LIGHT_COLOR:I

.field private isOnlyWritable:Z

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

.field mCacheDateChabgeObserver:Landroid/database/ContentObserver;

.field mCacheDateSetObserver:Landroid/database/DataSetObserver;

.field protected mCheckingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentReady:Z

.field protected mCurrentSearchingExchangeAccount:Landroid/accounts/Account;

.field mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDefaultCheckAll:Z

.field protected mDeletionBoxResId:I

.field protected mExchangeAccounts:[Landroid/accounts/Account;

.field private mExtraKeyCode:I

.field private mExtraKeyString:Ljava/lang/String;

.field protected mFilterMode:Z

.field protected mFilterString:Ljava/lang/String;

.field protected mFinalQueryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

.field private mHandler:Landroid/os/Handler;

.field protected mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field protected mIsDeleteContacts:Z

.field public volatile mIsDestroy:Z

.field private mIsEnableCompanyDirectorySupport:Z

.field private mIsExcludeSIM:Z

.field protected mIsFreshing:Z

.field protected mIsIMESearchEnabled:Z

.field protected mIsObtainIsSDN:Z

.field protected mIsObtainSIMInfo:Z

.field protected mIsOnlyVisibleContact:Z

.field private mIsPickVCARD:Z

.field protected mIsRawContactList:Z

.field protected mIsRequestMultipleSelection:Z

.field protected mIsShowAnySoialNetworkContact:Z

.field protected mIsSimMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsSimSDNMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSimpleSearchContact:Z

.field private mIsSupportContactContextMenu:Z

.field private mKeyEventCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

.field protected mListState:Landroid/os/Parcelable;

.field private mMaxSelectedCount:I

.field protected mNegativeIdToTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

.field private mRunKeyCodeFilter:Z

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field protected mSaveButtonTextResId:I

.field protected mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

.field private mSelectContactUri:Landroid/net/Uri;

.field protected misEmptyList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 138
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIdxGroupIsReadOnly:I

    .line 224
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v5

    const-string v1, "ext_account_Type"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    :goto_0
    sput-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PICKER_PROJECTION:[Ljava/lang/String;

    .line 255
    sput-boolean v3, Lcom/android/htccontacts/ContactListSearchPicker;->sIsEnableCachePeopleSearchCursor:Z

    .line 284
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/htccontacts/ContactListSearchPicker;->time:J

    return-void

    .line 224
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v5

    const-string v1, "ext_account_Type"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCheckingList:Ljava/util/ArrayList;

    .line 250
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSupportContactContextMenu:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsEnableCompanyDirectorySupport:Z

    .line 267
    const v0, 0x7f0a00d4

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    .line 268
    const v0, 0x2080014

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mDeletionBoxResId:I

    .line 278
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 279
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    .line 280
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimSDNMap:Landroid/util/LongSparseArray;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mNegativeIdToTitle:Ljava/util/HashMap;

    .line 288
    iput v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    .line 291
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mKeyEventCache:Ljava/util/LinkedList;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFinalQueryList:Ljava/util/ArrayList;

    .line 329
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mContentReady:Z

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    .line 336
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsShowAnySoialNetworkContact:Z

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsIMESearchEnabled:Z

    .line 888
    new-instance v0, Lcom/android/htccontacts/ContactListSearchPicker$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactListSearchPicker$5;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHandler:Landroid/os/Handler;

    .line 4639
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ContactListSearchPicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ContactListSearchPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ContactListSearchPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ContactListSearchPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mDefaultCheckAll:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorUsed:Z

    return v0
.end method

.method static synthetic access$2500()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorRegisterAdapterObserver:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-boolean p0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorRegisterAdapterObserver:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/ContactListSearchPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/ContactListSearchPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/htccontacts/ContactListSearchPicker;)Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/htccontacts/ContactListSearchPicker;Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/htccontacts/ContactListSearchPicker;JJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/android/htccontacts/ContactListSearchPicker;->returnGetSinglePhoneNumber(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-boolean p0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorDirty:Z

    return p0
.end method

.method static synthetic access$4000(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->tryRequeryPreloadPeopleSearchCursor(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/htccontacts/ContactListSearchPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$4100()Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactListSearchPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    return v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 95
    sget-wide v0, Lcom/android/htccontacts/ContactListSearchPicker;->time:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-wide p0, Lcom/android/htccontacts/ContactListSearchPicker;->time:J

    return-wide p0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactListSearchPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mRunKeyCodeFilter:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ContactListSearchPicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected static final appendAccountParameterUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "intent"

    .prologue
    .line 1145
    const-string v4, "PARAM_LINKED_TO_ACCOUNT_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, linkedToAccountName:Ljava/lang/String;
    const-string v4, "PARAM_LINKED_TO_ACCOUNT_TYPE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, linkedToAccountType:Ljava/lang/String;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 1149
    const-string v4, "account_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    const-string v4, "account_type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1152
    :cond_0
    move-object v3, p0

    .line 1153
    .local v3, resultUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1154
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1155
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "account_type"

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1157
    const-string v4, "account_name"

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1159
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1161
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    return-object v3
.end method

.method private appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "preSelection"
    .parameter "column"

    .prologue
    .line 3981
    const/4 v0, 0x0

    .line 3982
    .local v0, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3988
    :goto_0
    return-object v0

    .line 3986
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private appendExcludeVcardLimitContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "preSelection"
    .parameter "column"

    .prologue
    .line 3993
    const-string v0, ""

    .line 3994
    .local v0, outSelection:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3995
    const-string v0, ""

    .line 3999
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  IS NULL OR  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4008
    return-object v0

    .line 3997
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkExtrasHasOnlyPhoneOrEmail(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    .line 3968
    if-nez p1, :cond_1

    .line 3975
    :cond_0
    :goto_0
    return v4

    .line 3971
    :cond_1
    const-string v5, "name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3972
    .local v1, name:Ljava/lang/String;
    const-string v5, "phonetic_name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3973
    .local v2, phonetic_name:Ljava/lang/String;
    const-string v5, "postal_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3974
    .local v3, postal:Ljava/lang/String;
    const-string v5, "im_protocol"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3975
    .local v0, im:Ljava/lang/String;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createPickDataDialog(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "title"
    .parameter "uri"
    .parameter "mimetypes"
    .parameter "values"

    .prologue
    .line 3567
    new-instance v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;Lcom/android/htccontacts/ContactListSearchPicker$1;)V

    .local v0, hdr:Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3568
    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->create(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private delayFinishActivity()V
    .locals 4

    .prologue
    .line 3954
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/ContactListSearchPicker$6;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactListSearchPicker$6;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3959
    return-void
.end method

.method private dumpResult(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 3524
    const-string v5, "ContactListSearchPicker"

    const-string v6, "dumpResult E"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    const-string v5, "SELECTED_ID"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3527
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3528
    .local v2, integer:Ljava/lang/Integer;
    const-string v5, "ContactListSearchPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3531
    .end local v2           #integer:Ljava/lang/Integer;
    :cond_0
    const-string v5, "SELECTED_GROUP_TITLE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3532
    .local v4, titleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 3533
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3534
    .local v3, title:Ljava/lang/String;
    const-string v5, "ContactListSearchPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3537
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const-string v5, "ContactListSearchPicker"

    const-string v6, "dumpResult X"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    return-void
.end method

.method private static generateExcludeString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3293
    .local p1, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 3295
    .local v3, removeStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3297
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 3299
    .local v4, size:I
    if-eqz p1, :cond_1

    .line 3300
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3305
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3307
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    if-lez v4, :cond_3

    .line 3308
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 3309
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3310
    .local v2, id:I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3311
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_0

    .line 3312
    const-string v5, "  ,"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3302
    .end local v1           #i:I
    .end local v2           #id:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3315
    .restart local v1       #i:I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   NOT IN ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3318
    .end local v1           #i:I
    :cond_3
    return-object v3
.end method

.method private static generateIncludeString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3264
    .local p1, addlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3266
    .local v0, addStr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3268
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 3270
    .local v4, size:I
    if-eqz p1, :cond_1

    .line 3271
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3276
    :goto_0
    if-lez v4, :cond_3

    .line 3277
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3278
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3279
    .local v3, id:I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3280
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_0

    .line 3281
    const-string v5, "  ,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3277
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3273
    .end local v2           #i:I
    .end local v3           #id:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3284
    .restart local v2       #i:I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   IN ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3287
    .end local v2           #i:I
    :cond_3
    return-object v0
.end method

.method private getCurrentCursorCount()I
    .locals 2

    .prologue
    .line 2846
    const/4 v1, 0x0

    .line 2847
    .local v1, result:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2848
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    .line 2849
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 2852
    :cond_0
    return v1
.end method

.method private getExtraKeyCode(I)I
    .locals 3
    .parameter "defaultCode"

    .prologue
    .line 4185
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "keyCodeBundle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4186
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4187
    const-string v1, "keyCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4189
    .end local p1
    :cond_0
    return p1
.end method

.method private getGroupCandidateQuery()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->getGroupCandidateQueryWithGroups(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getGroupCandidateQueryWithGroups(Z)Landroid/net/Uri;
    .locals 13
    .parameter "withGroups"

    .prologue
    const/16 v12, 0x2c

    .line 1575
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1577
    .local v7, intent:Landroid/content/Intent;
    const-string v11, "content://com.android.contacts/GGroupExcludeMemberList"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1579
    .local v0, baseUri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1580
    sget-object v0, Lcom/android/htccontacts/util/Constants$Uris;->ADD_TO_GROUP_WITH_GROUPS:Landroid/net/Uri;

    .line 1584
    :cond_0
    const-string v11, "EXCLUDE_ID"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1588
    .local v8, mExcludeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v11, "INCLUDE_ID"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1591
    .local v9, mIncludeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v11, "group_name"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1592
    .local v3, groupNameame:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1593
    const-string v3, "default_none_anyone_use_group_htc_copyright"

    .line 1596
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1597
    .local v2, excludeList:Ljava/lang/StringBuilder;
    const-string v11, "("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    if-eqz v8, :cond_3

    .line 1599
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 1600
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1601
    .local v4, i:Ljava/lang/Integer;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1605
    .end local v4           #i:Ljava/lang/Integer;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_3

    .line 1606
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1609
    :cond_3
    const-string v11, ")"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1615
    .local v6, includeList:Ljava/lang/StringBuilder;
    const-string v11, "("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    if-eqz v9, :cond_5

    .line 1617
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 1618
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1619
    .restart local v4       #i:Ljava/lang/Integer;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1623
    .end local v4           #i:Ljava/lang/Integer;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_5

    .line 1624
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1627
    :cond_5
    const-string v11, ")"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1632
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1633
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1634
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1636
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 1637
    .local v10, queryUri:Landroid/net/Uri;
    return-object v10
.end method

.method private getKeyCodeToCharString(I)Ljava/lang/String;
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 4193
    const/4 v2, 0x0

    .line 4194
    .local v2, result:Ljava/lang/String;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4195
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 4198
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4199
    move-object v2, v0

    .line 4204
    :goto_0
    return-object v2

    .line 4201
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getOnlyWithDataWhereString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimetypes"

    .prologue
    .line 4162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXISTS (      SELECT *      FROM raw_contacts join data on (data.raw_contact_id = raw_contacts._id)  join mimetypes on (mimetypes._id = mimetype_id)      where contacts._id =raw_contacts.contact_id   AND mimetype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handlePickFavoriteGroup(Ljava/lang/String;)V
    .locals 18
    .parameter "filter"

    .prologue
    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 2182
    .local v14, intent:Landroid/content/Intent;
    const-string v1, "EXCLUDE_ID"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 2185
    .local v15, mExcludeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "INCLUDE_ID"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 2187
    .local v16, mIncludeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->generateIncludeString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    .line 2189
    .local v13, includeSelection:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v1, v15}, Lcom/android/htccontacts/ContactListSearchPicker;->generateExcludeString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 2192
    .local v11, excludeSelection:Ljava/lang/String;
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2193
    .local v17, uri:Landroid/net/Uri;
    const-string v1, "favorite_candidate"

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 2195
    move-object/from16 v4, v17

    .line 2197
    .local v4, queryUri:Landroid/net/Uri;
    if-nez v13, :cond_1

    const-string v10, "  "

    .line 2199
    .local v10, appendInclude:Ljava/lang/String;
    :goto_0
    if-nez v11, :cond_2

    const-string v9, "   "

    .line 2202
    .local v9, appendExclude:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   (   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   (  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  )  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  )  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2210
    .local v6, selection:Ljava/lang/String;
    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/htc/util/contacts/ContactsUtility;->getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2213
    .local v12, filterSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2217
    :cond_0
    const-string v1, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2220
    invoke-static {v4}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 2222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v2, 0x3f2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    return-void

    .line 2197
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #appendExclude:Ljava/lang/String;
    .end local v10           #appendInclude:Ljava/lang/String;
    .end local v12           #filterSelection:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   OR   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 2199
    .restart local v10       #appendInclude:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   AND   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1
.end method

.method private handleTitleBar(Lcom/android/htccontacts/widget/title/BrowseHeaderBar;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 927
    const v0, 0x7f0a01a5

    .line 928
    .local v0, resId:I
    if-nez p1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x566fffab

    if-ne v1, v2, :cond_3

    .line 932
    const v0, 0x7f0a027a

    .line 937
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 938
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(I)V

    goto :goto_0

    .line 933
    :cond_3
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x778fffb5

    if-ne v1, v2, :cond_2

    .line 934
    const v0, 0x7f0a027b

    goto :goto_1
.end method

.method private informWidgetForShortCut()V
    .locals 3

    .prologue
    .line 3962
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3963
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "silder_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3964
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 3965
    return-void
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 668
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 669
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 671
    :cond_1
    return-void
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 3541
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3542
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN_COLOR:I

    iput v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->HIGH_LIGHT_COLOR:I

    .line 3544
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 3545
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN_COLOR:I

    .line 3547
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 3548
    return-void
.end method

.method private static isHasInsertDataExtraOverSIM(Landroid/content/Intent;)Z
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4170
    const/16 v7, 0xc

    new-array v1, v7, [Ljava/lang/String;

    const-string v7, "email"

    aput-object v7, v1, v6

    const-string v7, "phone"

    aput-object v7, v1, v5

    const/4 v7, 0x2

    const-string v8, "postal"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "company"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "im_protocol"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "im_handle"

    aput-object v8, v1, v7

    const/4 v7, 0x6

    const-string v8, "phonetic_name"

    aput-object v8, v1, v7

    const/4 v7, 0x7

    const-string v8, "data"

    aput-object v8, v1, v7

    const/16 v7, 0x8

    const-string v8, "ConImage"

    aput-object v8, v1, v7

    const/16 v7, 0x9

    const-string v8, "cropImage"

    aput-object v8, v1, v7

    const/16 v7, 0xa

    const-string v8, "android.intent.extra.PHONE_NUMBER"

    aput-object v8, v1, v7

    const/16 v7, 0xb

    const-string v8, "android.intent.extra.EMAIL"

    aput-object v8, v1, v7

    .line 4176
    .local v1, dataKeys:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 4177
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4181
    .end local v3           #key:Ljava/lang/String;
    :goto_1
    return v5

    .line 4176
    .restart local v3       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #key:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 4181
    goto :goto_1
.end method

.method protected static final isSIMSDNContact(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountName"

    .prologue
    .line 4720
    if-eqz p0, :cond_0

    const-string v0, "SIM_SDN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchDefaultActionActivity(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "name"
    .parameter "action"

    .prologue
    .line 3794
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3795
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.ContactGlanceSelectDefaultActionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3798
    const-string v1, "for_shortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3799
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3800
    const-string v1, "ShortcutAction"

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3801
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3802
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSelectContactUri:Landroid/net/Uri;

    .line 3803
    const v1, 0x800001

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3804
    return-void
.end method

.method private obtainDeletionCheckBoxResId()I
    .locals 1

    .prologue
    .line 4208
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/htccontacts/customize/CustomizeResource;->getCustomizeResourceId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static preloadPeopleSearchCursor(Landroid/content/ContentResolver;)V
    .locals 5
    .parameter "resolver"

    .prologue
    .line 4476
    invoke-static {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->queryPeopleSearchCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 4477
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 4478
    sput-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    .line 4479
    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 4480
    new-instance v2, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;-><init>(Landroid/content/ContentResolver;)V

    sput-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadCursorChangeObserver:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;

    .line 4481
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    sget-object v4, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadCursorChangeObserver:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4482
    new-instance v2, Lcom/android/htccontacts/ContactListSearchPicker$ReloadPreLoadCursorIdleHandler;

    invoke-direct {v2}, Lcom/android/htccontacts/ContactListSearchPicker$ReloadPreLoadCursorIdleHandler;-><init>()V

    sput-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sReloadPreLoadCursorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 4483
    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    if-nez v2, :cond_0

    .line 4484
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PeopleSearch PreloadQuery Cursor Change Thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4485
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4486
    new-instance v2, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    .line 4490
    .end local v1           #thread:Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method private processPreloadCursorOnDestroy()V
    .locals 3

    .prologue
    .line 4446
    sget-boolean v1, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorDirty:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorUsed:Z

    if-eqz v1, :cond_2

    .line 4448
    :try_start_0
    sget-boolean v1, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorRegisterAdapterObserver:Z

    if-eqz v1, :cond_1

    .line 4449
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheDateChabgeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 4450
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheDateChabgeObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4452
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheDateSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    .line 4453
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheDateSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4459
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->tryRequeryPreloadPeopleSearchCursor(Landroid/content/ContentResolver;)V

    .line 4461
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->releasePeopleSearchCursor()V

    .line 4462
    return-void

    .line 4456
    :catch_0
    move-exception v0

    .line 4457
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ContactListSearchPicker"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static pushRequeryRequestToIdleQueue(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 4601
    new-instance v0, Lcom/android/htccontacts/ContactListSearchPicker$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactListSearchPicker$7;-><init>(Landroid/content/ContentResolver;)V

    .line 4602
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    invoke-virtual {v0}, Landroid/content/AsyncQueryHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sReloadPreLoadCursorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 4603
    invoke-virtual {v0}, Landroid/content/AsyncQueryHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sReloadPreLoadCursorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 4604
    return-void
.end method

.method private static queryPeopleSearchCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    .line 4512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_FLICKR_CONTACT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ext_account_Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.htc.htctwitter"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ext_account_Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ext_account_Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.twitter.android.auth.login"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4533
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4537
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 4538
    .local v1, queryUri:Landroid/net/Uri;
    const-string v0, "strong_query_contacts"

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4541
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v5, "100"

    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 4543
    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->STRONG_QUERY_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4546
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private queryPickFavoriteGroup(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "filter"

    .prologue
    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 2141
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "EXCLUDE_ID"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2144
    .local v13, mExcludeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "INCLUDE_ID"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 2146
    .local v14, mIncludeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "_id"

    invoke-static {v1, v14}, Lcom/android/htccontacts/ContactListSearchPicker;->generateIncludeString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 2148
    .local v11, includeSelection:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v1, v13}, Lcom/android/htccontacts/ContactListSearchPicker;->generateExcludeString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 2151
    .local v9, excludeSelection:Ljava/lang/String;
    sget-object v15, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2152
    .local v15, uri:Landroid/net/Uri;
    const-string v1, "favorite_candidate"

    invoke-static {v15, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 2154
    move-object v2, v15

    .line 2156
    .local v2, queryUri:Landroid/net/Uri;
    if-nez v11, :cond_1

    const-string v8, "  "

    .line 2158
    .local v8, appendInclude:Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_2

    const-string v7, "   "

    .line 2161
    .local v7, appendExclude:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  (  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   (   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   (  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  ) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  )  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  )  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2164
    .local v4, selection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2165
    .local v10, filterSelection:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2167
    const-string v1, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2170
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    invoke-static {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2174
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 2156
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #appendExclude:Ljava/lang/String;
    .end local v8           #appendInclude:Ljava/lang/String;
    .end local v10           #filterSelection:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   OR   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 2158
    .restart local v8       #appendInclude:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   AND   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method

.method public static recyclePeopleSearchCursor(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 4493
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 4494
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadCursorChangeObserver:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4495
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4496
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4500
    :cond_0
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    if-eqz v1, :cond_1

    .line 4501
    sget-object v1, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4502
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 4503
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 4507
    .end local v0           #looper:Landroid/os/Looper;
    :cond_1
    sput-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadCursorChangeObserver:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;

    .line 4508
    sput-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    .line 4509
    return-void
.end method

.method private static releasePeopleSearchCursor()V
    .locals 1

    .prologue
    .line 4558
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorUsed:Z

    .line 4559
    return-void
.end method

.method private retreateSIMShowHide()V
    .locals 6

    .prologue
    .line 4253
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 4254
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4255
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4256
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 4257
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4259
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v5, "filter_account_mode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4262
    :cond_0
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    if-nez v5, :cond_1

    .line 4279
    :cond_1
    return-void
.end method

.method private returnContactToShortCut(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 22
    .parameter "resultIntent"

    .prologue
    .line 3826
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 3827
    .local v16, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 3828
    .local v8, action:Ljava/lang/String;
    move-object/from16 v21, v8

    .line 3830
    .local v21, sOriginalAction:Ljava/lang/String;
    const-string v2, "display_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3832
    .local v11, contactName:Ljava/lang/String;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSelectContactUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3836
    const v2, 0x7f0a00e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3858
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3859
    const v2, 0x7f0a016e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3861
    :cond_0
    const-string v2, "ContactUri"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "people"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSelectContactUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3863
    const-string v2, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3864
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3867
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSelectContactUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "photo_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3870
    .local v10, c:Landroid/database/Cursor;
    const-wide/16 v19, 0x0

    .line 3871
    .local v19, photoId:J
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3872
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3874
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3877
    const/4 v2, 0x0

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3879
    .local v14, icon:Landroid/graphics/Bitmap;
    const v12, 0x2080846

    .line 3880
    .local v12, defaultAvatarId:I
    if-nez v14, :cond_2

    .line 3881
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3884
    :cond_2
    if-eqz v14, :cond_10

    .line 3885
    const/16 v17, -0x1

    .line 3886
    .local v17, nResId:I
    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3888
    :cond_3
    const v17, 0x7f020043

    .line 3921
    :cond_4
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_5

    .line 3922
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v14, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 3924
    .local v15, iconWithicon:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_5

    .line 3925
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003c

    sget v4, Lcom/htc/util/contacts/PhotoUtils;->CENTER:I

    move/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapWithBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3929
    .local v9, bmIcon:Landroid/graphics/Bitmap;
    sget v2, Lcom/htc/util/contacts/PhotoUtils;->BOTTOM_RIGHT:I

    invoke-static {v15, v9, v2}, Lcom/htc/util/contacts/PhotoUtils;->drawOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 3932
    const/4 v14, 0x0

    .line 3933
    const-string v2, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3948
    .end local v9           #bmIcon:Landroid/graphics/Bitmap;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #defaultAvatarId:I
    .end local v14           #icon:Landroid/graphics/Bitmap;
    .end local v15           #iconWithicon:Landroid/graphics/Bitmap;
    .end local v17           #nResId:I
    .end local v19           #photoId:J
    :cond_5
    :goto_2
    return-object v16

    .line 3838
    :cond_6
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3839
    const-string v2, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3844
    const v2, 0x7f0a0140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3846
    :cond_7
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3848
    const v2, 0x7f0a0140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3850
    :cond_8
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.SEND_SMS"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.SEND_MSG"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3853
    :cond_9
    const v2, 0x7f0a0279

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3855
    :cond_a
    const-string v8, ""

    goto/16 :goto_0

    .line 3889
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #defaultAvatarId:I
    .restart local v14       #icon:Landroid/graphics/Bitmap;
    .restart local v17       #nResId:I
    .restart local v19       #photoId:J
    :cond_b
    :try_start_1
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3892
    :cond_c
    const-string v2, "type_phone_type"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 3894
    .local v18, nType:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_4

    .line 3898
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/util/ContactsUtils;->getShortcutDrawableIdOfPhoneType(I)I

    move-result v17

    goto/16 :goto_1

    .line 3901
    .end local v18           #nType:I
    :cond_d
    const-string v2, "android.intent.action.SENDTO"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.intent.action.SEND_SMS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3904
    :cond_e
    const-string v2, "type_mail"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3908
    const v17, 0x7f020044

    goto/16 :goto_1

    .line 3909
    :cond_f
    const-string v2, "type_message"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3913
    const v17, 0x7f020047

    goto/16 :goto_1

    .line 3938
    .end local v17           #nResId:I
    :cond_10
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v12}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3943
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #defaultAvatarId:I
    .end local v14           #icon:Landroid/graphics/Bitmap;
    .end local v19           #photoId:J
    :catch_0
    move-exception v13

    .line 3944
    .local v13, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ContactListSearchPicker"

    const-string v3, "loadContactPhoto: OutOfMemoryError"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3945
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v13

    .line 3946
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "ContactListSearchPicker"

    const-string v3, "loadContactPhoto: exception"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private returnGetSinglePhoneNumber(JJLjava/lang/String;)V
    .locals 5
    .parameter "person"
    .parameter "phoneId"
    .parameter "number"

    .prologue
    .line 3758
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3759
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 3760
    .local v0, dataUri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x1fffffcd

    if-ne v3, v4, :cond_2

    .line 3761
    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3763
    const-string v3, "phone"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3764
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3780
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3782
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 3783
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 3784
    .local v2, personid:[I
    const/4 v3, 0x0

    long-to-int v4, p1

    aput v4, v2, v3

    .line 3785
    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3787
    .end local v2           #personid:[I
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->setResult(ILandroid/content/Intent;)V

    .line 3790
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    .line 3791
    return-void

    .line 3765
    :cond_2
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x1fffffc8

    if-ne v3, v4, :cond_3

    .line 3766
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3769
    const-string v3, "postal"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3771
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3772
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x3fffffce

    if-ne v3, v4, :cond_4

    .line 3773
    const-string v3, "phone"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3774
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3775
    :cond_4
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x3fffffc9

    if-ne v3, v4, :cond_0

    .line 3776
    const-string v3, "postal"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setAllNewItemChecked(Z)V
    .locals 12
    .parameter "check"

    .prologue
    .line 2800
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-nez v10, :cond_1

    .line 2838
    :cond_0
    :goto_0
    return-void

    .line 2802
    :cond_1
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2803
    .local v1, cursorCurrent:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2805
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 2806
    .local v8, nInitPosition:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 2807
    .local v5, nCount:I
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v9

    .line 2809
    .local v9, typeIndex:I
    const-string v10, "ext_account_name"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2811
    .local v0, accountNameIdx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 2812
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2813
    const-string v10, "_id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v6, v10

    .line 2815
    .local v6, nID:J
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v6, v7}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v10

    if-ltz v10, :cond_3

    .line 2811
    .end local v6           #nID:J
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2818
    .restart local v6       #nID:J
    :cond_3
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10, v2, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2819
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v6, v7, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2821
    const v10, -0x778fffb5

    iget v11, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    if-eqz v10, :cond_2

    .line 2822
    :cond_4
    const-string v10, "com.anddroid.contacts.sim"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2824
    .local v4, isSim:Z
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v6, v7, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2825
    iget-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    if-eqz v10, :cond_2

    .line 2826
    const/4 v3, 0x0

    .line 2827
    .local v3, isSDN:Z
    if-ltz v0, :cond_5

    .line 2828
    if-eqz v4, :cond_6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/htccontacts/ContactListSearchPicker;->isSIMSDNContact(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    .line 2830
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimSDNMap:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v6, v7, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2828
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 2835
    .end local v3           #isSDN:Z
    .end local v4           #isSim:Z
    .end local v6           #nID:J
    :cond_7
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2836
    const/4 v1, 0x0

    .line 2837
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0
.end method

.method private static tryObtainPeopleSearchCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 4550
    sget-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorUsed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorDirty:Z

    if-eqz v0, :cond_1

    .line 4551
    :cond_0
    const/4 v0, 0x0

    .line 4554
    :goto_0
    return-object v0

    .line 4553
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsPreloadCursorUsed:Z

    .line 4554
    sget-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->mPreloadPeopleSearchCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method private static tryRequeryPreloadPeopleSearchCursor(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    const/16 v3, 0x1000

    .line 4593
    sget-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;->removeMessages(I)V

    .line 4594
    sget-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->sPreloadHandler:Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4598
    return-void
.end method


# virtual methods
.method protected checkMode()Z
    .locals 13

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 347
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, action:Ljava/lang/String;
    const/4 v7, 0x0

    .line 350
    .local v7, result:Z
    const-string v10, "DefaultCheckAll"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mDefaultCheckAll:Z

    .line 351
    const-string v10, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, title:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 353
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ContactListSearchPicker;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 357
    .local v1, dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 358
    const-string v10, "onlyPhone"

    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, onlyphone:Ljava/lang/String;
    if-eqz v6, :cond_1

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 362
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 366
    .end local v6           #onlyphone:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 367
    const-string v10, "excludeSIM"

    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, excludeSIM:Ljava/lang/String;
    if-eqz v2, :cond_2

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 371
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    .line 375
    .end local v2           #excludeSIM:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 376
    const-string v10, "excludeReadOnly"

    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, onlyWritable:Ljava/lang/String;
    if-eqz v5, :cond_3

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 380
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->isOnlyWritable:Z

    .line 385
    .end local v5           #onlyWritable:Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->isHasInsertDataExtraOverSIM(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 386
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    .line 389
    :cond_4
    iget-boolean v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-nez v10, :cond_5

    .line 390
    const-string v10, "onlyPhone"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 392
    :cond_5
    const-string v10, "DELETE_CONTACT"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    .line 394
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "REQUEST_OBTAIN_SIM_IS_SDN"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    .line 396
    iget-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    iget-boolean v11, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    or-int/2addr v11, v10

    const v10, -0x778fffb5

    iget v12, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v10, v12

    if-lez v10, :cond_a

    const/4 v10, 0x1

    :goto_1
    or-int/2addr v10, v11

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    .line 398
    const-string v10, "android.intent.action.PICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 399
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, type:Ljava/lang/String;
    if-eqz v9, :cond_b

    const-string v10, "text/x-vcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 401
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsPickVCARD:Z

    .line 402
    const v10, -0x77ffffd8

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 497
    .end local v9           #type:Ljava/lang/String;
    :goto_2
    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v11, -0x3fffffce

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v11, -0x1fffffcd

    if-ne v10, v11, :cond_7

    .line 498
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 501
    :cond_7
    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v11, 0x20

    and-int/2addr v10, v11

    if-lez v10, :cond_8

    .line 502
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    .line 504
    :cond_8
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->obtainDeletionCheckBoxResId()I

    move-result v10

    iput v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mDeletionBoxResId:I

    .line 506
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->ensureRequestMultiSelection()V

    .line 508
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->retreateSIMShowHide()V

    .line 509
    return v7

    .line 394
    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    .line 396
    :cond_a
    const/4 v10, 0x0

    goto :goto_1

    .line 404
    .restart local v9       #type:Ljava/lang/String;
    :cond_b
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->checkMode()Z

    move-result v7

    goto :goto_2

    .line 406
    .end local v9           #type:Ljava/lang/String;
    :cond_c
    const-string v10, "com.android.htccontacts.ACTION_DELETE_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 407
    const v10, -0x778fffb5

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto :goto_2

    .line 408
    :cond_d
    const-string v10, "com.android.htccontacts.ACTION_GROUP_CANDIDATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 410
    const-string v10, "group_name"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_e

    const-string v10, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 412
    const v10, -0x77afffa3

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto :goto_2

    .line 415
    :cond_e
    const-string v10, "from_group_widget"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 416
    const v10, -0x776fffad

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto :goto_2

    .line 419
    :cond_f
    const v10, -0x77afffb0

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto :goto_2

    .line 422
    .end local v4           #name:Ljava/lang/String;
    :cond_10
    const-string v10, "com.android.htccontacts.ACTION_PICK_JOINT_MEMBERS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 423
    const v10, -0x566fffab

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 424
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRawContactList:Z

    goto/16 :goto_2

    .line 425
    :cond_11
    const-string v10, "com.android.htccontacts.ACTION_PICK_FAVORITE_CANDIDATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 426
    const v10, -0x776fffa6

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 427
    :cond_12
    const-string v10, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 428
    const v10, -0x77afffa1

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 429
    :cond_13
    const-string v10, "com.android.htccontacts.ACTION_PICK_BY_ACCOUNT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 430
    const v10, -0x766fff9e

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 431
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRawContactList:Z

    goto/16 :goto_2

    .line 432
    :cond_14
    const-string v10, "com.android.htccontacts.ACTION_SELECT_BY_ACCOUNT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 433
    const v10, -0x762fff98

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 434
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRawContactList:Z

    goto/16 :goto_2

    .line 435
    :cond_15
    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 437
    const-string v10, "email"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    const-string v10, "phone"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 439
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    .line 441
    :cond_16
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->checkMode()Z

    move-result v7

    goto/16 :goto_2

    .line 442
    :cond_17
    const-string v10, "com.android.htccontact.action.people_search"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 443
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    .line 445
    const/16 v10, 0x3c

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 446
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "query"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto/16 :goto_2

    .line 448
    :cond_18
    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 449
    invoke-virtual {v3, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 450
    .restart local v9       #type:Ljava/lang/String;
    if-eqz v9, :cond_19

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 451
    const v10, -0x3fffff99

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 453
    :cond_19
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->checkMode()Z

    move-result v7

    goto/16 :goto_2

    .line 457
    .end local v9           #type:Ljava/lang/String;
    :cond_1a
    const-string v10, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 461
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "alias.DialShortcut"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 463
    const v10, -0x77ffffd8

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 464
    const-string v10, "android.intent.action.CALL"

    iput-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 476
    :goto_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    goto/16 :goto_2

    .line 466
    :cond_1b
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "alias.MessageShortcut"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 468
    const v10, -0x77ffffd8

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 469
    const-string v10, "android.intent.action.SENDTO"

    iput-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    goto :goto_3

    .line 472
    :cond_1c
    const v10, -0x77ffffd8

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 473
    const-string v10, "android.intent.action.VIEW"

    iput-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    goto :goto_3

    .line 477
    :cond_1d
    const-string v10, "com.android.htccontacts.ACTION_REMOVE_GROUP_MEMBER_CANDIDATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 479
    const v10, -0x772fff9b

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 480
    :cond_1e
    const-string v10, "com.android.htccontacts.ACTION_PICK_SN_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 481
    const v10, -0x77efff97

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 482
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsShowAnySoialNetworkContact:Z

    goto/16 :goto_2

    .line 483
    :cond_1f
    const-string v10, "com.android.htccontacts.ACTION_PICK_CONTACT_LINK_TO"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 484
    const v10, -0x77afff96

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 485
    :cond_20
    const-string v10, "com.android.htccontacts.ACTION_PICK_CONTACT_EXCLUDE_ACCOUNT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 486
    const v10, -0x77afff95

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 487
    :cond_21
    const-string v10, "com.android.htccontacts.ACTION_PICK_CONTACT_WITH_ACCOUNT_TYPES"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 488
    const v10, -0x77efff94

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 489
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsShowAnySoialNetworkContact:Z

    goto/16 :goto_2

    .line 490
    :cond_22
    const-string v10, "com.android.htccontacts.ACTION_PICK_CONTACT_ADD_MEMBER_WITH_GROUPS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 491
    const v10, -0x77afff92

    iput v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 494
    :cond_23
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->checkMode()Z

    move-result v7

    goto/16 :goto_2
.end method

.method protected checkSelectAllOverCounts()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 4693
    iget v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 4716
    :cond_0
    :goto_0
    return v3

    .line 4697
    :cond_1
    const/4 v2, 0x0

    .line 4698
    .local v2, localSize:I
    const/4 v0, 0x0

    .line 4699
    .local v0, companySize:I
    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v4, :cond_2

    .line 4700
    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 4701
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4702
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 4706
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    if-eqz v4, :cond_3

    .line 4707
    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 4708
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4709
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 4713
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    add-int v4, v2, v0

    iget v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    if-le v4, v5, :cond_0

    .line 4714
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public closeCursorInBackground(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 4654
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v0, :cond_0

    .line 4657
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 4658
    return-void
.end method

.method protected countCheckedItem()I
    .locals 6

    .prologue
    .line 4027
    const/4 v0, 0x0

    .line 4028
    .local v0, counts:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 4029
    .local v2, items:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 4030
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 4031
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 4032
    .local v4, value:Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4033
    add-int/lit8 v0, v0, 0x1

    .line 4030
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4036
    .end local v4           #value:Ljava/lang/Boolean;
    :cond_1
    return v0
.end method

.method protected doCancelAction()V
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->setResult(I)V

    .line 964
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    .line 965
    return-void
.end method

.method protected doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .parameter "filter"

    .prologue
    .line 1645
    const/16 v20, 0x0

    .line 1646
    .local v20, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1647
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v21, 0x0

    .line 1648
    .local v21, filterSelection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1649
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1651
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v4

    .line 1652
    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1654
    .local v7, order:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    .line 1656
    .local v24, isEmpty:Z
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v6, :sswitch_data_0

    .line 1790
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v8, 0x10

    and-int/2addr v6, v8

    if-nez v6, :cond_11

    .line 1791
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/ContactsListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2079
    :goto_0
    return-object v6

    .line 1659
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1660
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    const-string v8, "android.intent.action.CALL"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    const-string v8, "android.intent.action.SENDTO"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1662
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1663
    const-string v6, "with"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1664
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1670
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1671
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1672
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1673
    if-eqz v24, :cond_1

    .line 1674
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1677
    :cond_1
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v6, v20

    .line 1679
    goto :goto_0

    .line 1667
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 1682
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsPickVCARD:Z

    if-eqz v6, :cond_6

    .line 1683
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1685
    if-nez v24, :cond_4

    .line 1686
    const/16 v21, 0x0

    .line 1689
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1690
    const-string v6, "ext_account_Type"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeVcardLimitContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1693
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v8, "for_export_only"

    const-string v9, "true"

    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1696
    if-eqz v24, :cond_5

    .line 1697
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1700
    :cond_5
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v6, v20

    .line 1702
    goto/16 :goto_0

    .line 1704
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/ContactsListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_0

    .line 1709
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1710
    if-nez v24, :cond_7

    .line 1711
    const/16 v21, 0x0

    .line 1713
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1714
    const-string v6, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1716
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1717
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1720
    if-eqz v24, :cond_8

    .line 1721
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    :cond_8
    move-object/from16 v6, v20

    .line 1724
    goto/16 :goto_0

    .line 1732
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1733
    if-nez v24, :cond_9

    .line 1734
    const/16 v21, 0x0

    .line 1736
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1737
    const v6, -0x3fffffc9

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v6, v8, :cond_a

    const v6, -0x1fffffc8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v6, v8, :cond_d

    .line 1738
    :cond_a
    if-eqz v5, :cond_b

    .line 1739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/htccontacts/ContactListSearchPicker;->getOnlyWithDataWhereString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1750
    :cond_b
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1752
    if-eqz v24, :cond_c

    .line 1753
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1756
    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v6, v20

    .line 1758
    goto/16 :goto_0

    .line 1743
    :cond_d
    const v6, -0x3fffff99

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v6, v8, :cond_b

    .line 1744
    if-eqz v5, :cond_b

    .line 1745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/htccontacts/ContactListSearchPicker;->getOnlyWithDataWhereString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1761
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v6, :cond_10

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1763
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1764
    const-string v6, "strong_query_contacts"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1766
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    .line 1767
    .local v15, builder:Landroid/net/Uri$Builder;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1768
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1770
    :cond_e
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1774
    .local v16, cTime:J
    if-eqz v24, :cond_f

    .line 1775
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1778
    :cond_f
    sget-object v10, Lcom/android/htccontacts/ContactListSearchPicker;->STRONG_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v6, v20

    .line 1782
    goto/16 :goto_0

    .line 1785
    .end local v15           #builder:Landroid/net/Uri$Builder;
    .end local v16           #cTime:J
    :cond_10
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/ContactsListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_0

    .line 1793
    :cond_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v6, :sswitch_data_1

    :goto_3
    move-object/from16 v6, v20

    .line 2079
    goto/16 :goto_0

    .line 1795
    :sswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1797
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1799
    if-eqz v24, :cond_12

    .line 1800
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1803
    :cond_12
    if-nez v24, :cond_13

    .line 1804
    const/16 v21, 0x0

    .line 1806
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1807
    const-string v6, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1810
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v8, "com.anddroid.contacts.sim"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 1811
    .local v27, simBookReady:Z
    if-nez v27, :cond_14

    .line 1812
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ext_account_Type"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "<> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "com.anddroid.contacts.sim"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1816
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   AND  ( "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-super/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ) "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1818
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1819
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ext_account_name"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " <> \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "SIM_SDN"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1821
    :cond_15
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1824
    goto/16 :goto_3

    .line 1829
    .end local v27           #simBookReady:Z
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getGroupCandidateQuery()Landroid/net/Uri;

    move-result-object v3

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1831
    if-nez v24, :cond_16

    .line 1832
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1835
    :cond_16
    if-eqz v24, :cond_17

    .line 1836
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1839
    :cond_17
    const-string v6, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1841
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1844
    goto/16 :goto_3

    .line 1847
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "group_name"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1848
    .local v26, mGroupName:Ljava/lang/String;
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 1849
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1850
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1851
    if-nez v24, :cond_18

    .line 1852
    const/16 v21, 0x0

    .line 1854
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1856
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1857
    if-eqz v26, :cond_19

    const-string v6, "Frequent Contacts"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 1858
    const-string v6, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1861
    :cond_19
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1863
    goto/16 :goto_3

    .line 1866
    .end local v26           #mGroupName:Ljava/lang/String;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->queryPickFavoriteGroup(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1867
    goto/16 :goto_3

    .line 1870
    :sswitch_8
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "favorite_candidate"

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1873
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1875
    if-nez v24, :cond_1a

    .line 1876
    const/16 v21, 0x0

    .line 1878
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1880
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1881
    const-string v6, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1884
    if-eqz v24, :cond_1b

    .line 1885
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1888
    :cond_1b
    sget-object v10, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v6, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1892
    goto/16 :goto_3

    .line 1896
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getRawContactUri()Landroid/net/Uri;

    move-result-object v3

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "account_type"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1898
    .local v28, type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "contact_id"

    const-wide/16 v11, -0x1

    invoke-virtual {v6, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1899
    .local v18, contact_id:J
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 1900
    const-string v6, "All"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1902
    const-string v5, " (( account_type = \'com.google\' OR account_type = \'com.htc.android.mail.eas\' OR account_type = \'com.htc.android.pcsc\'"

    .line 1913
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "aggregation_mode"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " <> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1917
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") AND ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "contact_id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " <> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " )) "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1922
    :cond_1c
    if-nez v24, :cond_1d

    .line 1923
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1926
    :cond_1d
    if-eqz v24, :cond_1e

    .line 1927
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1930
    :cond_1e
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1932
    goto/16 :goto_3

    .line 1909
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " (( account_type = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 1936
    .end local v18           #contact_id:J
    .end local v28           #type:Ljava/lang/String;
    :sswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1938
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1939
    if-nez v24, :cond_20

    .line 1940
    const/16 v21, 0x0

    .line 1942
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1944
    if-eqz v24, :cond_21

    .line 1945
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1948
    :cond_21
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1951
    goto/16 :goto_3

    .line 1954
    :sswitch_b
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1955
    const-string v6, "linked_sn"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1958
    if-nez v24, :cond_22

    .line 1959
    const/16 v21, 0x0

    .line 1960
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1962
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1964
    if-eqz v24, :cond_23

    .line 1965
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1968
    :cond_23
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1971
    goto/16 :goto_3

    .line 1974
    :sswitch_c
    sget-object v3, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_LINKED_TO_ACCOUNT_URI:Landroid/net/Uri;

    .line 1976
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1977
    if-nez v24, :cond_24

    .line 1978
    const/16 v21, 0x0

    .line 1979
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1982
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendAccountParameterUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    .line 1984
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1986
    if-eqz v24, :cond_25

    .line 1987
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1990
    :cond_25
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1993
    goto/16 :goto_3

    .line 1996
    :sswitch_d
    sget-object v3, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_EXCLUDE_ACCOUNT:Landroid/net/Uri;

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 1999
    if-nez v24, :cond_26

    .line 2000
    const/16 v21, 0x0

    .line 2001
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2004
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendAccountParameterUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    .line 2006
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2008
    if-eqz v24, :cond_27

    .line 2009
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 2012
    :cond_27
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2015
    goto/16 :goto_3

    .line 2018
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 2019
    .local v23, intent:Landroid/content/Intent;
    const-string v6, "EXTRA_PICK_WITH_TYPES"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 2020
    .local v29, typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 2021
    .local v14, buf:Ljava/lang/StringBuffer;
    if-eqz v29, :cond_29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_29

    .line 2022
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_28
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2023
    .restart local v28       #type:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 2024
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2025
    const/16 v6, 0x3b

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2029
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #type:Ljava/lang/String;
    :cond_29
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    .line 2030
    .local v25, len:I
    if-lez v25, :cond_2c

    .line 2031
    add-int/lit8 v6, v25, -0x1

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2037
    sget-object v3, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_WITH_ACCOUNT_TYPES:Landroid/net/Uri;

    .line 2038
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 2040
    if-nez v24, :cond_2a

    .line 2041
    const/16 v21, 0x0

    .line 2042
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2045
    :cond_2a
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v8, "PARAM_ACCOUNT_TYPES"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2048
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2050
    if-eqz v24, :cond_2b

    .line 2051
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 2054
    :cond_2b
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2056
    goto/16 :goto_3

    .line 2035
    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2060
    .end local v14           #buf:Ljava/lang/StringBuffer;
    .end local v23           #intent:Landroid/content/Intent;
    .end local v25           #len:I
    .end local v29           #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_f
    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    .line 2062
    .local v10, selfProjection:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v6, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2063
    array-length v6, v4

    const-string v8, "photo"

    aput-object v8, v10, v6

    .line 2065
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->getGroupCandidateQueryWithGroups(Z)Landroid/net/Uri;

    move-result-object v3

    .line 2067
    if-nez v24, :cond_2d

    .line 2068
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2071
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 2072
    const-string v6, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2075
    const/4 v12, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v11, v5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_3

    .line 1656
    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_0
        -0x6fffffd3 -> :sswitch_1
        -0x3fffffce -> :sswitch_2
        -0x3fffffc9 -> :sswitch_2
        -0x3fffff99 -> :sswitch_2
        -0x1fffffcd -> :sswitch_2
        -0x1fffffc8 -> :sswitch_2
        0x3c -> :sswitch_3
    .end sparse-switch

    .line 1793
    :sswitch_data_1
    .sparse-switch
        -0x77efff97 -> :sswitch_b
        -0x77efff94 -> :sswitch_e
        -0x77afffb0 -> :sswitch_5
        -0x77afffa3 -> :sswitch_7
        -0x77afffa1 -> :sswitch_a
        -0x77afff96 -> :sswitch_c
        -0x77afff95 -> :sswitch_d
        -0x77afff92 -> :sswitch_f
        -0x778fffb5 -> :sswitch_4
        -0x776fffad -> :sswitch_5
        -0x776fffa6 -> :sswitch_8
        -0x772fff9b -> :sswitch_6
        -0x766fff9e -> :sswitch_9
        -0x762fff98 -> :sswitch_9
    .end sparse-switch
.end method

.method protected doPostiveAction()V
    .locals 0

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleOkForMultipleCheckBox()V

    .line 960
    return-void
.end method

.method protected ensureRequestMultiSelection()V
    .locals 3

    .prologue
    .line 4663
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4664
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_PICKER_REQUST_MUTIPLE_SELECTION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    .line 4665
    return-void
.end method

.method protected ensureSubTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3502
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3503
    .local v0, border:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->shouldEnableCompanyDirectorySearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3504
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3506
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 3507
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setSubHeaderEnabled(Z)V

    .line 3508
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 3509
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->enableCompanySearch(Z)V

    .line 3519
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->notifyDataSetChanged()V

    .line 3521
    :cond_0
    return-void

    .line 3512
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 3513
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setSubHeaderEnabled(Z)V

    .line 3514
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 3515
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->enableCompanySearch(Z)V

    goto :goto_0
.end method

.method protected getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filter"

    .prologue
    .line 2083
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 2084
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2105
    :goto_0
    return-object v0

    .line 2085
    :cond_0
    const/4 v0, 0x0

    .line 2086
    .local v0, uri:Landroid/net/Uri;
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 2101
    :sswitch_0
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2090
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getGroupCandidateQuery()Landroid/net/Uri;

    move-result-object v0

    .line 2092
    goto :goto_0

    .line 2086
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ffffd8 -> :sswitch_0
        -0x77afffb0 -> :sswitch_1
        -0x77afffa3 -> :sswitch_0
        -0x77afffa1 -> :sswitch_0
        -0x776fffad -> :sswitch_1
        -0x776fffa6 -> :sswitch_0
        -0x6fffffd3 -> :sswitch_0
        -0x67ffffd6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getContactSelection()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4044
    const-string v1, " "

    .line 4046
    .local v1, whereClause:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsShowAnySoialNetworkContact:Z

    if-nez v2, :cond_0

    .line 4047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_FLICKR_CONTACT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ext_account_Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.htc.htctwitter"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ext_account_Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ext_account_Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.twitter.android.auth.login"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4068
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4070
    iget-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v2, :cond_1

    .line 4071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "has_phone_number=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4075
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filter_account_mode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4077
    .local v0, account_mode:I
    packed-switch v0, :pswitch_data_0

    .line 4110
    :goto_0
    :pswitch_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    if-eqz v2, :cond_2

    .line 4111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4116
    :cond_2
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsOnlyVisibleContact:Z

    if-eqz v2, :cond_3

    .line 4117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in_visible_group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4125
    :cond_3
    :goto_1
    return-object v1

    .line 4081
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4083
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    goto :goto_0

    .line 4086
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4089
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    goto :goto_0

    .line 4092
    :pswitch_3
    const-string v2, "contact_is_read_only"

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4094
    goto/16 :goto_0

    .line 4096
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_is_read_only"

    invoke-direct {p0, v1, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4100
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    goto/16 :goto_0

    .line 4121
    :cond_4
    const-string v1, "in_visible_group = 1"

    goto :goto_1

    .line 4077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getContactUri(I)Landroid/net/Uri;
    .locals 9
    .parameter "position"

    .prologue
    .line 2110
    const/4 v6, 0x0

    .line 2111
    .local v6, uri:Landroid/net/Uri;
    iget v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v8, 0x10

    and-int/2addr v7, v8

    if-lez v7, :cond_1

    .line 2112
    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    .line 2113
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Position not in list bounds"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2117
    :cond_0
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v7, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 2118
    .local v2, cursor:Landroid/database/Cursor;
    iget v7, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 2120
    const-string v7, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2122
    .local v4, mIdIdx:I
    const-string v7, "lookup"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2124
    .local v5, mLookupIdx:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2125
    .local v0, contactId:J
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2126
    .local v3, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2134
    .end local v0           #contactId:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #mIdIdx:I
    .end local v5           #mLookupIdx:I
    :goto_0
    return-object v6

    .line 2132
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0
.end method

.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v0, :cond_0

    .line 969
    const v0, 0x7f030071

    .line 971
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030005

    goto :goto_0
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 10

    .prologue
    .line 2856
    const/4 v3, 0x0

    .line 2857
    .local v3, count:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    .line 2858
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2860
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v6, :cond_1

    .line 2861
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 2863
    .local v1, array:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_1

    .line 2864
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    .line 2865
    .local v8, size:I
    const/4 v7, 0x0

    .local v7, pos:I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 2866
    invoke-interface {v0, v7}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    .line 2867
    .local v4, id:J
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v4, v5, v9}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2868
    .local v2, checked:Z
    if-eqz v2, :cond_0

    .line 2869
    add-int/lit8 v3, v3, 0x1

    .line 2865
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2874
    .end local v1           #array:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v2           #checked:Z
    .end local v4           #id:J
    .end local v7           #pos:I
    .end local v8           #size:I
    :cond_1
    return v3
.end method

.method protected getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "key"

    .prologue
    .line 4282
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v0

    .line 4283
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4284
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 4286
    :cond_0
    return-object v0
.end method

.method protected getInsertContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4364
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4365
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    if-eqz v1, :cond_0

    .line 4366
    const-string v1, "EXTRA_EXCLUDE_SIM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4368
    :cond_0
    return-object v0
.end method

.method protected getProjectionForQuery()[Ljava/lang/String;
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 4351
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v1, -0x77ffffd5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v1, -0x67ffffd4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v1, -0x5fffffbf

    if-ne v0, v1, :cond_1

    .line 4354
    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v0

    .line 4360
    :goto_0
    return-object v0

    .line 4356
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 4357
    sget-object v0, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PICKER_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 4360
    :cond_2
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRawContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4129
    const-string v0, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getUriToQuery()Landroid/net/Uri;
    .locals 7

    .prologue
    .line 1105
    const/4 v4, 0x0

    .line 1106
    .local v4, uri:Landroid/net/Uri;
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v5, :cond_4

    .line 1107
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1108
    const-string v5, "strong_query_contacts"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1113
    :goto_0
    if-nez v4, :cond_0

    .line 1114
    sget-object v4, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 1117
    :cond_0
    sget-object v5, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1118
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsExcludeSIM:Z

    if-eqz v5, :cond_1

    .line 1119
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1120
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "excludeSIM"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1127
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1128
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "PARAM_LINKED_TO_ACCOUNT_NAME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1129
    .local v2, linkedToAccountName:Ljava/lang/String;
    const-string v5, "PARAM_LINKED_TO_ACCOUNT_TYPE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1132
    .local v3, linkedToAccountType:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1133
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1134
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v5, "account_type"

    invoke-virtual {v0, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1136
    const-string v5, "account_name"

    invoke-virtual {v0, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1138
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1141
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_3
    return-object v4

    .line 1110
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #linkedToAccountName:Ljava/lang/String;
    .end local v3           #linkedToAccountType:Ljava/lang/String;
    :cond_4
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method protected handleButtonFrameView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 675
    const v5, 0x7f070017

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ContactListSearchPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 676
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 681
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 683
    .local v1, cancelButton:Lcom/htc/widget/HtcFooterButton;
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v6, 0x40

    and-int/2addr v5, v6

    if-gtz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v5, :cond_7

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    .line 693
    :goto_1
    invoke-virtual {v0, v9}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 695
    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v5, :cond_4

    .line 704
    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/android/htccontacts/ContactListSearchPicker$3;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ContactListSearchPicker$3;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v5, :cond_3

    .line 711
    const v5, 0x7f0a013d

    iput v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    .line 712
    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    iget v6, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 714
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 715
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_icon_delete_on"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 717
    .local v3, mButtonDeleteRes:I
    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v9, v3, v9, v9}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 721
    .end local v3           #mButtonDeleteRes:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    .line 724
    :cond_4
    if-eqz v1, :cond_5

    .line 725
    new-instance v5, Lcom/android/htccontacts/ContactListSearchPicker$4;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/ContactListSearchPicker$4;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 734
    .local v2, data:Landroid/content/Intent;
    const-string v5, "REQUEST_SET_BUTTON_STYLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, style:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 736
    const-string v5, "send_cancel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v5, :cond_6

    .line 738
    const v5, 0x7f0a0151

    iput v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    .line 739
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    .line 741
    :cond_6
    if-eqz v1, :cond_0

    .line 742
    const v5, 0x7f0a0152

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto/16 :goto_0

    .line 685
    .end local v2           #data:Landroid/content/Intent;
    .end local v4           #style:Ljava/lang/String;
    :cond_7
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v6, 0x80

    and-int/2addr v5, v6

    if-lez v5, :cond_8

    .line 686
    const-string v5, "cancel"

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->rebuildButtons(Ljava/lang/String;)V

    .line 687
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 688
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    goto/16 :goto_1

    .line 690
    :cond_8
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected handleCreateNew()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/high16 v7, -0x8000

    .line 4138
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v6, -0x6fffffd3

    if-ne v5, v6, :cond_1

    .line 4139
    const/4 v1, 0x0

    .line 4140
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4141
    const/high16 v5, 0x200

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4142
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4143
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->recopyExtra(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 4144
    .local v3, newExtras:Landroid/os/Bundle;
    const-string v5, "picker_mode"

    iget v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_0

    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4146
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4147
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    .line 4148
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    .line 4159
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #newExtras:Landroid/os/Bundle;
    :goto_1
    return-void

    .line 4144
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #newExtras:Landroid/os/Bundle;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 4150
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #newExtras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4151
    .local v2, newContact:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4152
    .restart local v0       #extras:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 4153
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4155
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4157
    invoke-virtual {p0, v2, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected handleFilterUIAndTitle()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 751
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 752
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 754
    .local v1, titleBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 756
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    .line 758
    :cond_0
    if-eqz v1, :cond_1

    .line 759
    invoke-virtual {v1, v3}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar(I)V

    .line 762
    :cond_1
    const/high16 v2, 0x2000

    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v2, v3

    if-lez v2, :cond_4

    .line 766
    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setVisibility(I)V

    .line 768
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->handleTitleBar(Lcom/android/htccontacts/widget/title/BrowseHeaderBar;)V

    .line 770
    :cond_2
    if-eqz v0, :cond_3

    .line 771
    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 788
    :cond_3
    :goto_0
    return-void

    .line 779
    :cond_4
    if-eqz v1, :cond_5

    .line 780
    invoke-virtual {v1, v5}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setVisibility(I)V

    .line 782
    :cond_5
    if-eqz v0, :cond_6

    .line 783
    invoke-virtual {v0, v4}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 785
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->handleTitleBar(Lcom/android/htccontacts/widget/title/BrowseHeaderBar;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleSearchBox()V

    goto :goto_0
.end method

.method protected handleOkForMultipleCheckBox()V
    .locals 25

    .prologue
    .line 791
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v12, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 793
    .local v6, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 796
    :cond_0
    const/16 v16, 0x0

    .line 797
    .local v16, isSimArray:[Z
    const/4 v14, 0x0

    .line 798
    .local v14, isSDNArray:[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/LongSparseArray;->size()I

    move-result v19

    .line 801
    .local v19, size:I
    const v22, -0x778fffb5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 802
    :cond_1
    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 804
    move/from16 v0, v19

    new-array v14, v0, [Z

    .line 808
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v8, v0, :cond_9

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    .line 810
    .local v21, value:Ljava/lang/Boolean;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 812
    .local v10, id:Ljava/lang/Long;
    if-nez v10, :cond_4

    .line 808
    .end local v10           #id:Ljava/lang/Long;
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 815
    .restart local v10       #id:Ljava/lang/Long;
    :cond_4
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    const v22, -0x778fffb5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 817
    :cond_5
    if-eqz v16, :cond_6

    .line 818
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v5, v22, -0x1

    .line 819
    .local v5, currentIdx:I
    if-ltz v5, :cond_6

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    .line 821
    .local v15, isSIM:Ljava/lang/Boolean;
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    :goto_2
    aput-boolean v22, v16, v5

    .line 824
    .end local v5           #currentIdx:I
    .end local v15           #isSIM:Ljava/lang/Boolean;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 825
    if-eqz v14, :cond_3

    .line 826
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v5, v22, -0x1

    .line 827
    .restart local v5       #currentIdx:I
    if-ltz v5, :cond_3

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimSDNMap:Landroid/util/LongSparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 829
    .local v13, isSDN:Ljava/lang/Boolean;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    :goto_3
    aput-boolean v22, v14, v5

    goto :goto_1

    .line 821
    .end local v13           #isSDN:Ljava/lang/Boolean;
    .restart local v15       #isSIM:Ljava/lang/Boolean;
    :cond_7
    const/16 v22, 0x0

    goto :goto_2

    .line 829
    .end local v15           #isSIM:Ljava/lang/Boolean;
    .restart local v13       #isSDN:Ljava/lang/Boolean;
    :cond_8
    const/16 v22, 0x0

    goto :goto_3

    .line 838
    .end local v5           #currentIdx:I
    .end local v8           #i:I
    .end local v10           #id:Ljava/lang/Long;
    .end local v13           #isSDN:Ljava/lang/Boolean;
    .end local v19           #size:I
    .end local v21           #value:Ljava/lang/Boolean;
    :cond_9
    if-nez v6, :cond_a

    .line 887
    :goto_4
    return-void

    .line 842
    :cond_a
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v17, resultIntent:Landroid/content/Intent;
    const-string v22, "SELECTED_ID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/htccontacts/ContactListSearchPicker;->transferLongListToIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 846
    const v22, -0x778fffb5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 847
    const-string v22, "SELECT_CONTACT_IS_SIM"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 850
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 851
    const-string v22, "SELECTED_SIM_CONTACT_IS_SDN"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 855
    :cond_c
    const v22, -0x77afff92

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 856
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v18, selectedGroupTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 858
    .local v10, id:J
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-gez v22, :cond_d

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mNegativeIdToTitle:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 860
    .local v20, title:Ljava/lang/String;
    if-eqz v20, :cond_d

    .line 861
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 865
    .end local v10           #id:J
    .end local v20           #title:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_f

    .line 866
    const-string v22, "SELECTED_GROUP_TITLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 874
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v18           #selectedGroupTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    const v22, -0x778fffb5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 875
    new-instance v4, Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 878
    .local v4, actionListener:Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;
    const v22, 0x7f0a014b

    const v23, 0x7f0a022e

    const v24, 0x1080027

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getComfirmDialog(Landroid/content/Context;IIILcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;)Landroid/app/Dialog;

    move-result-object v7

    .line 881
    .local v7, dialog:Landroid/app/Dialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 882
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/ContactListSearchPicker;->manageDialog(Landroid/app/Dialog;)V

    goto/16 :goto_4

    .line 884
    .end local v4           #actionListener:Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;
    .end local v7           #dialog:Landroid/app/Dialog;
    :cond_10
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->setResult(ILandroid/content/Intent;)V

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    goto/16 :goto_4
.end method

.method protected handleSearch()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3552
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 3553
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v1, :cond_1

    .line 3554
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3562
    :cond_0
    :goto_0
    return v3

    .line 3556
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3559
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->clearFilterText()V

    goto :goto_0
.end method

.method protected handleSearchBox()V
    .locals 4

    .prologue
    .line 943
    const v0, 0x7f0a01a5

    .line 944
    .local v0, resId:I
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v3, -0x566fffab

    if-ne v2, v3, :cond_2

    .line 945
    const v0, 0x7f0a027a

    .line 952
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 956
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void

    .line 946
    :cond_2
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v3, -0x778fffb5

    if-ne v2, v3, :cond_3

    .line 947
    const v0, 0x7f0a027b

    goto :goto_0

    .line 948
    :cond_3
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v2, :cond_0

    .line 949
    const v0, 0x7f0a0139

    goto :goto_0
.end method

.method protected handleSelectionCacheUpdate()V
    .locals 11

    .prologue
    .line 4304
    const/high16 v9, 0x40

    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v9, v10

    if-gtz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v9, :cond_1

    .line 4305
    :cond_0
    iget-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4347
    :cond_1
    :goto_0
    return-void

    .line 4310
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 4312
    .local v8, tempSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCount()I

    move-result v0

    .line 4313
    .local v0, count:I
    const/4 v7, 0x0

    .local v7, pos:I
    :goto_1
    if-ge v7, v0, :cond_3

    .line 4314
    iget-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v9, v7}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 4316
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4313
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4319
    .end local v3           #id:J
    :cond_3
    iget-boolean v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsFreshing:Z

    if-eqz v9, :cond_9

    .line 4321
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4322
    .local v1, diffsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFinalQueryList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4323
    .local v5, oldId:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 4324
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4328
    .end local v5           #oldId:J
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_9

    .line 4329
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4330
    .restart local v3       #id:J
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 4331
    const v9, -0x778fffb5

    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v9, v10, :cond_7

    iget-boolean v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    if-eqz v9, :cond_6

    .line 4332
    :cond_7
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 4333
    iget-boolean v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    if-eqz v9, :cond_6

    .line 4334
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimSDNMap:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_3

    .line 4338
    .end local v3           #id:J
    :cond_8
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    .line 4342
    .end local v1           #diffsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 4344
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFinalQueryList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 4345
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFinalQueryList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method protected isEnableSectionIndexer(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 4377
    const/4 v0, 0x0

    .line 4378
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    .line 4395
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->isEnableSectionIndexer(I)Z

    move-result v0

    .line 4397
    :goto_0
    return v0

    .line 4387
    :sswitch_0
    const/4 v0, 0x1

    .line 4388
    goto :goto_0

    .line 4392
    :sswitch_1
    const/4 v0, 0x0

    .line 4393
    goto :goto_0

    .line 4378
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77afffb0 -> :sswitch_0
        -0x77afffa3 -> :sswitch_0
        -0x77afffa1 -> :sswitch_0
        -0x778fffb5 -> :sswitch_0
        -0x776fffad -> :sswitch_0
        -0x776fffa6 -> :sswitch_0
        -0x772fff9b -> :sswitch_1
        -0x766fff9e -> :sswitch_0
        -0x762fff98 -> :sswitch_0
        -0x566fffab -> :sswitch_1
    .end sparse-switch
.end method

.method protected isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 4134
    const/4 v0, 0x1

    return v0
.end method

.method public launchIME(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 3324
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 3325
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3331
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 3332
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3336
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3338
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    if-nez v0, :cond_2

    .line 3339
    new-instance v0, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    invoke-direct {v0, p1}, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    .line 3341
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 3343
    :cond_3
    return-void
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1002
    new-instance v0, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;

    const v1, 0x209006c

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method protected obtainMarkSearchKeyString(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "text"
    .parameter "keyword"

    .prologue
    .line 2610
    move-object v0, p1

    .line 2611
    .local v0, markStr:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2612
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2615
    :cond_0
    return-object v0
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 2879
    new-instance v0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 3809
    const v1, 0x800001

    if-ne v1, p1, :cond_1

    .line 3810
    if-ne v2, p2, :cond_0

    .line 3811
    invoke-direct {p0, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->returnContactToShortCut(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 3812
    .local v0, intentShortcut:Landroid/content/Intent;
    invoke-virtual {p0, v2, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->setResult(ILandroid/content/Intent;)V

    .line 3815
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->informWidgetForShortCut()V

    .line 3816
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    .line 3823
    .end local v0           #intentShortcut:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3821
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onContentChanged()V

    .line 663
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2686
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 514
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 515
    iget-boolean v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mFinish:Z

    if-eqz v3, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    new-instance v3, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    .line 519
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->initSpanColor()V

    .line 521
    invoke-direct {p0, v7}, Lcom/android/htccontacts/ContactListSearchPicker;->getExtraKeyCode(I)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    .line 523
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 524
    .local v0, data:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 525
    const-string v3, "max_selected_contacts_count"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    .line 526
    const-string v3, "EXTRA_ONLY_VISIBLE_CONTACTS"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsOnlyVisibleContact:Z

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleButtonFrameView()V

    .line 530
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleFilterUIAndTitle()V

    .line 532
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->shouldEnableContextMenu()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSupportContactContextMenu:Z

    .line 533
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->shouldEnableCompanyDirectorySearch()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsEnableCompanyDirectorySupport:Z

    .line 535
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSupportContactContextMenu:Z

    if-eqz v3, :cond_3

    .line 536
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->registerForContextMenu(Landroid/view/View;)V

    .line 539
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 540
    .local v2, listView:Lcom/htc/widget/HtcListView;
    const/high16 v3, 0x2000

    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v3, v4

    if-lez v3, :cond_8

    .line 541
    if-eqz v2, :cond_4

    .line 542
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 550
    :cond_4
    :goto_1
    const v3, 0x7f0a016a

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->setEmptyText(I)V

    .line 552
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->initListHeaderView()V

    .line 555
    new-instance v1, Lcom/android/htccontacts/ContactListSearchPicker$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactListSearchPicker$1;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    .line 563
    .local v1, linstener:Landroid/view/View$OnFocusChangeListener;
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    .line 564
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 567
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_6

    .line 568
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 572
    :cond_6
    new-instance v3, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-direct {v3}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;-><init>()V

    iput-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    .line 573
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .line 574
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 575
    new-instance v3, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const v4, 0x209006c

    sget-object v5, Lcom/android/htccontacts/ContactListSearchPicker;->STRONG_QUERY_PROJECTION:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsEnableCompanyDirectorySupport:Z

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;-><init>(Landroid/app/Activity;I[Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    .line 578
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iput-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .line 579
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 580
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 582
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListAdapter:Lcom/android/htccontacts/widget/FilterableGroupListAdapter;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 583
    iput-boolean v7, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDestroy:Z

    .line 585
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->setListLoading()V

    .line 589
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v3, :cond_7

    .line 590
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/htccontacts/ContactListSearchPicker$2;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ContactListSearchPicker$2;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 597
    :cond_7
    iget v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    if-eqz v3, :cond_0

    .line 598
    iget v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    invoke-direct {p0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->getKeyCodeToCharString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyString:Ljava/lang/String;

    .line 599
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyString:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 601
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 545
    .end local v1           #linstener:Landroid/view/View$OnFocusChangeListener;
    :cond_8
    if-eqz v2, :cond_4

    .line 546
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2654
    move-object v4, p3

    check-cast v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 2656
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v5, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 2658
    .local v5, itemPos:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 2660
    .local v6, obj:Ljava/lang/Object;
    instance-of v7, v6, Landroid/database/Cursor;

    if-eqz v7, :cond_2

    .line 2661
    const/4 v0, 0x0

    .local v0, accountType:Ljava/lang/String;
    move-object v2, v6

    .line 2662
    check-cast v2, Landroid/database/Cursor;

    .line 2663
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 2664
    .local v1, curPos:I
    if-eqz v2, :cond_2

    .line 2665
    iget-object v7, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v1, v7

    .line 2666
    iget-object v7, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v7}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCount()I

    move-result v7

    if-gt v1, v7, :cond_0

    if-gez v1, :cond_1

    .line 2682
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #curPos:I
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 2671
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v1       #curPos:I
    .restart local v2       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    const-string v7, "ext_account_Type"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2676
    const-string v7, "eas_accounttype"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2680
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #curPos:I
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 2672
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v1       #curPos:I
    .restart local v2       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .line 2673
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, d:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 655
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    .line 646
    :pswitch_0
    const v2, 0x7f0a014d

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, temp:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a014c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0160

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 652
    goto :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0xf0f001
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 2700
    const/high16 v0, 0x1000

    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 2701
    const/4 v0, 0x3

    const v1, 0x7f0a0134

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2704
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 2619
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onDestroy()V

    .line 2621
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v0, :cond_0

    .line 2622
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->processPreloadCursorOnDestroy()V

    .line 2625
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 2626
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2629
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSupportContactContextMenu:Z

    if-eqz v0, :cond_2

    .line 2630
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->unregisterForContextMenu(Landroid/view/View;)V

    .line 2632
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDestroy:Z

    .line 2633
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    if-eqz v0, :cond_3

    .line 2634
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->destroy()V

    .line 2647
    :cond_3
    return-void
.end method

.method protected onFilterComplete(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 4214
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4221
    :goto_0
    return-void

    .line 4217
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onFilterComplete(Landroid/database/Cursor;)V

    .line 4218
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5001

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4220
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onFilterCompleteUIAction(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 4238
    return-void
.end method

.method protected onFilterCompleteUIActionAfterChangeCursor()V
    .locals 4

    .prologue
    const/16 v3, 0x5002

    .line 4224
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4226
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4227
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4231
    :cond_0
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 2
    .parameter "IsChecked"

    .prologue
    .line 4670
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->checkSelectAllOverCounts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4671
    const v1, 0xf0f001

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->showDialog(I)V

    .line 4672
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    .line 4673
    .local v0, box:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 4674
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 4680
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    return-void

    .line 4678
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->setAllItemChecked(Z)V

    .line 4679
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 62
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2891
    const/16 v23, 0x1

    .line 2892
    .local v23, bClose:Z
    move/from16 v16, p3

    .line 2897
    .local v16, originalPosition:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v3, :cond_4

    .line 2898
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v30, p3, v3

    .line 2899
    .local v30, cur_pos:I
    if-gez v30, :cond_3

    const/16 v42, 0x1

    .line 2900
    .local v42, isHeaderPressed:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v3, :cond_1

    .line 2901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 2903
    :cond_1
    if-eqz v42, :cond_4

    .line 3260
    .end local v30           #cur_pos:I
    .end local v42           #isHeaderPressed:Z
    :cond_2
    :goto_1
    return-void

    .line 2899
    .restart local v30       #cur_pos:I
    :cond_3
    const/16 v42, 0x0

    goto :goto_0

    .line 2908
    .end local v30           #cur_pos:I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->refineToGruopAdapterPosition(I)I

    move-result v54

    .line 2909
    .local v54, pos:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsEnableCompanyDirectorySupport:Z

    if-eqz v3, :cond_6

    .line 2910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCount()I

    move-result v3

    move/from16 v0, v54

    if-lt v0, v3, :cond_6

    .line 2911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCount()I

    move-result v3

    sub-int v54, v54, v3

    .line 2912
    if-ltz v54, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getCount()I

    move-result v3

    move/from16 v0, v54

    if-gt v0, v3, :cond_2

    .line 2915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v53

    .line 2916
    .local v53, obj:Ljava/lang/Object;
    move-object/from16 v0, v53

    instance-of v3, v0, Landroid/database/Cursor;

    if-nez v3, :cond_5

    .line 2917
    const-string v3, "SEARCH_PROMPT"

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 2920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v34

    .line 2921
    .local v34, editable:Landroid/text/Editable;
    if-eqz v34, :cond_2

    .line 2922
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v57

    .line 2923
    .local v57, searchString:Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->executeSearch(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v31

    .line 2925
    .local v31, d:Landroid/app/Dialog;
    if-eqz v31, :cond_2

    .line 2926
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->manageDialog(Landroid/app/Dialog;)V

    .line 2927
    invoke-virtual/range {v31 .. v31}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .end local v31           #d:Landroid/app/Dialog;
    .end local v34           #editable:Landroid/text/Editable;
    .end local v57           #searchString:Ljava/lang/String;
    :cond_5
    move-object/from16 v10, v53

    .line 2935
    check-cast v10, Landroid/database/Cursor;

    .line 2936
    .local v10, c:Landroid/database/Cursor;
    const-string v3, "ext_account_Type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 2937
    .local v22, accountTypeIndex:I
    if-ltz v22, :cond_6

    .line 2939
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2940
    .local v21, accountType:Ljava/lang/String;
    if-eqz v21, :cond_6

    const-string v3, "eas_accounttype"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2941
    const-string v3, "ContactListSearchPicker"

    const-string v4, ":Pop up view company directory "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getTitleCount()I

    move-result v3

    sub-int v55, v54, v3

    .line 2944
    .local v55, refixIndex:I
    if-ltz v55, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getCount()I

    move-result v3

    move/from16 v0, v55

    if-ge v0, v3, :cond_6

    .line 2945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v26

    .line 2946
    .local v26, colleageCursor:Landroid/database/Cursor;
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    .line 2947
    .local v24, bundle:Landroid/os/Bundle;
    const-string v3, "colleage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v32

    .line 2948
    .local v32, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    const-string v3, "account"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/accounts/Account;

    .line 2949
    .local v19, account:Landroid/accounts/Account;
    if-eqz v32, :cond_6

    .line 2950
    move-object/from16 v0, v32

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/pim/eas/EASGalElement;

    .line 2951
    .local v35, element:Lcom/htc/android/pim/eas/EASGalElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->startViewColleageActivity(Landroid/accounts/Account;Lcom/htc/android/pim/eas/EASGalElement;)V

    goto/16 :goto_1

    .line 2961
    .end local v10           #c:Landroid/database/Cursor;
    .end local v19           #account:Landroid/accounts/Account;
    .end local v21           #accountType:Ljava/lang/String;
    .end local v22           #accountTypeIndex:I
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v26           #colleageCursor:Landroid/database/Cursor;
    .end local v32           #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    .end local v35           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v53           #obj:Ljava/lang/Object;
    .end local v55           #refixIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCount()I

    move-result v3

    move/from16 v0, v54

    if-lt v0, v3, :cond_7

    .line 2962
    const-string v3, "ContactListSearchPicker"

    const-string v4, "error "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2970
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x6fffffd3

    if-ne v3, v4, :cond_d

    .line 2971
    const/16 v41, 0x0

    .line 2972
    .local v41, intent:Landroid/content/Intent;
    if-nez p3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mHeaderCreateNewItemExist:Z

    if-eqz v3, :cond_9

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v41

    .line 2993
    :goto_2
    const/high16 v3, 0x200

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2994
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v37

    .line 2995
    .local v37, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->recopyExtra(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v52

    .line 2997
    .local v52, newExtras:Landroid/os/Bundle;
    if-nez v52, :cond_8

    .line 2998
    new-instance v52, Landroid/os/Bundle;

    .end local v52           #newExtras:Landroid/os/Bundle;
    invoke-direct/range {v52 .. v52}, Landroid/os/Bundle;-><init>()V

    .line 3000
    .restart local v52       #newExtras:Landroid/os/Bundle;
    :cond_8
    const-string v4, "picker_mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v5, -0x8000

    and-int/2addr v3, v5

    const/high16 v5, -0x8000

    if-ne v3, v5, :cond_c

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3003
    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3004
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    .line 3005
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    goto/16 :goto_1

    .line 2976
    .end local v37           #extras:Landroid/os/Bundle;
    .end local v52           #newExtras:Landroid/os/Bundle;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v3

    sub-int p3, p3, v3

    .line 2977
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v12

    .line 2979
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->checkExtrasHasOnlyPhoneOrEmail(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2980
    new-instance v41, Landroid/content/Intent;

    .end local v41           #intent:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts.ACTION_SAVE_DATA_TO_EXIST_CONTACT"

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2982
    .restart local v41       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 2983
    .restart local v10       #c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget v3, v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2984
    .restart local v21       #accountType:Ljava/lang/String;
    if-eqz v21, :cond_a

    const-string v3, "com.anddroid.contacts.sim"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2986
    const-string v3, "isSim"

    const/4 v4, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2991
    .end local v10           #c:Landroid/database/Cursor;
    .end local v21           #accountType:Ljava/lang/String;
    :cond_a
    :goto_4
    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2989
    :cond_b
    new-instance v41, Landroid/content/Intent;

    .end local v41           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, v41

    invoke-direct {v0, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v41       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 3000
    .end local v12           #uri:Landroid/net/Uri;
    .restart local v37       #extras:Landroid/os/Bundle;
    .restart local v52       #newExtras:Landroid/os/Bundle;
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 3007
    .end local v37           #extras:Landroid/os/Bundle;
    .end local v41           #intent:Landroid/content/Intent;
    .end local v52           #newExtras:Landroid/os/Bundle;
    :cond_d
    const v3, -0x77ffffd8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsPickVCARD:Z

    if-eqz v3, :cond_f

    .line 3008
    const/4 v12, 0x0

    .line 3009
    .restart local v12       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3010
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "lookup"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3011
    .local v48, lookupIdx:I
    move/from16 v0, v48

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3013
    .local v49, lookupKey:Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3014
    move-wide/from16 v0, p4

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 3018
    :goto_5
    new-instance v47, Landroid/content/Intent;

    const-string v3, "com.android.htccontacts.ACTION_GET_VCARD"

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3019
    .local v47, launchIntent:Landroid/content/Intent;
    const-string v3, "text/x-vcard"

    move-object/from16 v0, v47

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3021
    const/high16 v3, 0x200

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3028
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    .line 3029
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    goto/16 :goto_1

    .line 3016
    .end local v47           #launchIntent:Landroid/content/Intent;
    :cond_e
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    goto :goto_5

    .line 3030
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v48           #lookupIdx:I
    .end local v49           #lookupKey:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x77ffffd8

    if-ne v3, v4, :cond_10

    .line 3036
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v3

    sub-int p3, p3, v3

    .line 3037
    const-string v3, "ContactListSearchPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----------PICK POSTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3039
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 3040
    .local v51, nameIdx:I
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3041
    .local v40, idx:I
    const-string v3, "lookup"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3042
    .restart local v48       #lookupIdx:I
    move/from16 v0, v48

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3043
    .restart local v49       #lookupKey:Ljava/lang/String;
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 3044
    .local v27, contactId:J
    move/from16 v0, v51

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3045
    .local v11, name:Ljava/lang/String;
    move-wide/from16 v0, v27

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v4}, Lcom/android/htccontacts/ContactListSearchPicker;->launchDefaultActionActivity(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3048
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v27           #contactId:J
    .end local v40           #idx:I
    .end local v48           #lookupIdx:I
    .end local v49           #lookupKey:Ljava/lang/String;
    .end local v51           #nameIdx:I
    :cond_10
    const v3, -0x3fffffce

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_11

    const v3, -0x3fffffc9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_11

    const v3, -0x3fffff99

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_11

    const v3, -0x1fffffcd

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_11

    const v3, -0x1fffffc8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v3, v4, :cond_1b

    .line 3052
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3053
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3054
    .restart local v40       #idx:I
    const-string v3, "lookup"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3056
    .restart local v48       #lookupIdx:I
    const/4 v11, 0x0

    .line 3057
    .restart local v11       #name:Ljava/lang/String;
    if-ltz v40, :cond_12

    .line 3058
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3061
    :cond_12
    move/from16 v0, v48

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3063
    .restart local v49       #lookupKey:Ljava/lang/String;
    move-wide/from16 v0, p4

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 3065
    .restart local v12       #uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v50, v0

    .line 3066
    .local v50, mimetypes:[Ljava/lang/String;
    const v3, -0x3fffffce

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_13

    const v3, -0x1fffffcd

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v3, v4, :cond_16

    .line 3067
    :cond_13
    const/4 v3, 0x0

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v50, v3

    .line 3076
    :cond_14
    :goto_6
    new-instance v61, Landroid/content/ContentValues;

    invoke-direct/range {v61 .. v61}, Landroid/content/ContentValues;-><init>()V

    .line 3077
    .local v61, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v61

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->createPickDataDialog(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v33

    .line 3079
    .local v33, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3081
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3083
    :cond_15
    if-eqz v33, :cond_19

    .line 3084
    const/16 v23, 0x0

    .line 3085
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mDataPickDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3095
    :goto_7
    if-eqz v23, :cond_2

    .line 3096
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    goto/16 :goto_1

    .line 3069
    .end local v33           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v61           #values:Landroid/content/ContentValues;
    :cond_16
    const v3, -0x3fffffc9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_17

    const v3, -0x1fffffc8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v3, v4, :cond_18

    .line 3071
    :cond_17
    const/4 v3, 0x0

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    aput-object v4, v50, v3

    goto :goto_6

    .line 3072
    :cond_18
    const v3, -0x3fffff99

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v3, v4, :cond_14

    .line 3073
    const/4 v3, 0x0

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v50, v3

    goto :goto_6

    .line 3088
    .restart local v33       #dialog:Lcom/htc/widget/HtcAlertDialog;
    .restart local v61       #values:Landroid/content/ContentValues;
    :cond_19
    const-string v3, "_id"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v39

    .line 3089
    .local v39, idObj:Ljava/lang/Long;
    const-string v3, "data1"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3090
    .local v8, data:Ljava/lang/String;
    if-eqz v39, :cond_1a

    .line 3091
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v3, p0

    move-wide/from16 v4, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/htccontacts/ContactListSearchPicker;->returnGetSinglePhoneNumber(JJLjava/lang/String;)V

    .line 3093
    :cond_1a
    const/16 v23, 0x1

    goto :goto_7

    .line 3099
    .end local v8           #data:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v33           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v39           #idObj:Ljava/lang/Long;
    .end local v40           #idx:I
    .end local v48           #lookupIdx:I
    .end local v49           #lookupKey:Ljava/lang/String;
    .end local v50           #mimetypes:[Ljava/lang/String;
    .end local v61           #values:Landroid/content/ContentValues;
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x5fffffbf

    if-ne v3, v4, :cond_1e

    .line 3100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3101
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 3102
    .restart local v51       #nameIdx:I
    const-string v3, "lookup"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3103
    .restart local v48       #lookupIdx:I
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3104
    .local v29, contactIdIdx:I
    const/4 v11, 0x0

    .line 3105
    .restart local v11       #name:Ljava/lang/String;
    if-ltz v51, :cond_1c

    .line 3106
    move/from16 v0, v51

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3108
    :cond_1c
    if-ltz v29, :cond_1d

    .line 3109
    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 3111
    :cond_1d
    move/from16 v0, v48

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3112
    .restart local v49       #lookupKey:Ljava/lang/String;
    move-wide/from16 v0, p4

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 3114
    .local v38, fixedUri:Landroid/net/Uri;
    new-instance v41, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3115
    .restart local v41       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    .line 3116
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    goto/16 :goto_1

    .line 3118
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v29           #contactIdIdx:I
    .end local v38           #fixedUri:Landroid/net/Uri;
    .end local v41           #intent:Landroid/content/Intent;
    .end local v48           #lookupIdx:I
    .end local v49           #lookupKey:Ljava/lang/String;
    .end local v51           #nameIdx:I
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-lez v3, :cond_33

    .line 3121
    new-instance v56, Landroid/content/Intent;

    invoke-direct/range {v56 .. v56}, Landroid/content/Intent;-><init>()V

    .line 3122
    .local v56, resultIntent:Landroid/content/Intent;
    const/16 v47, 0x0

    .line 3124
    .restart local v47       #launchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-lez v3, :cond_1f

    .line 3125
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v3

    sub-int p3, p3, v3

    .line 3127
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-gtz v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v3, :cond_29

    .line 3128
    :cond_20
    const/16 v23, 0x0

    .line 3130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .line 3132
    .local v25, checked:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    if-lez v3, :cond_22

    if-nez v25, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->countCheckedItem()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    if-lt v3, v4, :cond_22

    .line 3133
    const v3, 0xf0f001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->showDialog(I)V

    .line 3254
    .end local v25           #checked:Z
    :cond_21
    :goto_8
    if-eqz v23, :cond_2

    .line 3255
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->finish()V

    goto/16 :goto_1

    .line 3136
    .restart local v25       #checked:Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    if-nez v25, :cond_27

    const/4 v3, 0x1

    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3137
    const v3, -0x778fffb5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v3, v4, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    if-eqz v3, :cond_25

    .line 3138
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v60

    .line 3139
    .local v60, typeIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3140
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "com.anddroid.contacts.sim"

    move/from16 v0, v60

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 3142
    .local v44, isSim:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3143
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    if-eqz v3, :cond_25

    .line 3144
    const-string v3, "ext_account_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 3146
    .local v20, accountNameIdx:I
    const/16 v43, 0x0

    .line 3147
    .local v43, isSDN:Z
    if-ltz v20, :cond_24

    .line 3148
    if-eqz v44, :cond_28

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->isSIMSDNContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v43, 0x1

    .line 3150
    :cond_24
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimSDNMap:Landroid/util/LongSparseArray;

    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3154
    .end local v10           #c:Landroid/database/Cursor;
    .end local v20           #accountNameIdx:I
    .end local v43           #isSDN:Z
    .end local v44           #isSim:Z
    .end local v60           #typeIndex:I
    :cond_25
    const v3, -0x77afff92

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v3, v4, :cond_26

    .line 3155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3156
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v59

    .line 3157
    .local v59, titleIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v3

    if-ltz v3, :cond_26

    if-ltz v59, :cond_26

    .line 3158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 3159
    .local v36, ext_account_type:Ljava/lang/String;
    if-eqz v36, :cond_26

    const-string v3, "com.android.contacts.Groups"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3160
    move/from16 v0, v59

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 3161
    .local v58, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mNegativeIdToTitle:Ljava/util/HashMap;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    .end local v10           #c:Landroid/database/Cursor;
    .end local v36           #ext_account_type:Ljava/lang/String;
    .end local v58           #title:Ljava/lang/String;
    .end local v59           #titleIdx:I
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    .line 3166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto/16 :goto_8

    .line 3136
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 3148
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v20       #accountNameIdx:I
    .restart local v43       #isSDN:Z
    .restart local v44       #isSim:Z
    .restart local v60       #typeIndex:I
    :cond_28
    const/16 v43, 0x0

    goto :goto_a

    .line 3170
    .end local v10           #c:Landroid/database/Cursor;
    .end local v20           #accountNameIdx:I
    .end local v25           #checked:Z
    .end local v43           #isSDN:Z
    .end local v44           #isSim:Z
    .end local v60           #typeIndex:I
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x566fffab

    if-ne v3, v4, :cond_2a

    .line 3171
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 3173
    .restart local v12       #uri:Landroid/net/Uri;
    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3174
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 3175
    .end local v12           #uri:Landroid/net/Uri;
    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x766fff9e

    if-ne v3, v4, :cond_2d

    .line 3176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3177
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3178
    .restart local v40       #idx:I
    const/4 v11, 0x0

    .line 3179
    .restart local v11       #name:Ljava/lang/String;
    if-ltz v40, :cond_2b

    .line 3180
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3182
    :cond_2b
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 3184
    .restart local v12       #uri:Landroid/net/Uri;
    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3185
    const-string v3, "display_name"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3187
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3188
    const/4 v3, -0x1

    move/from16 v0, v40

    if-ge v3, v0, :cond_2c

    .line 3189
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 3190
    .local v45, lContactId:J
    const-string v3, "contact_id"

    move-object/from16 v0, v56

    move-wide/from16 v1, v45

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3193
    .end local v45           #lContactId:J
    :cond_2c
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 3194
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v40           #idx:I
    :cond_2d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x776fffa6

    if-ne v3, v4, :cond_2f

    .line 3195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3196
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3197
    .restart local v40       #idx:I
    const/4 v11, 0x0

    .line 3198
    .restart local v11       #name:Ljava/lang/String;
    if-ltz v40, :cond_2e

    .line 3199
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3201
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactUri(I)Landroid/net/Uri;

    move-result-object v12

    .line 3202
    .restart local v12       #uri:Landroid/net/Uri;
    new-instance v47, Landroid/content/Intent;

    .end local v47           #launchIntent:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts.ACTION_SELECT_DEFAULT_ACTION"

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3204
    .restart local v47       #launchIntent:Landroid/content/Intent;
    move-object/from16 v0, v47

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3205
    const-string v3, "person_id"

    move-object/from16 v0, v47

    move-wide/from16 v1, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3207
    const-string v3, "for_shortcut"

    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3208
    const-string v3, "display_name"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3210
    const-string v3, "enable_contact_card_option"

    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3212
    const-string v3, "default_action_for_group"

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "group_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3213
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 3218
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v40           #idx:I
    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x776fffad

    if-ne v3, v4, :cond_31

    .line 3219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3220
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3221
    .restart local v40       #idx:I
    const/4 v11, 0x0

    .line 3222
    .restart local v11       #name:Ljava/lang/String;
    if-ltz v40, :cond_30

    .line 3223
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3226
    :cond_30
    new-instance v47, Landroid/content/Intent;

    .end local v47           #launchIntent:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts.ACTION_SELECT_DEFAULT_ACTION"

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3228
    .restart local v47       #launchIntent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3230
    const-string v3, "for_shortcut"

    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3231
    const-string v3, "display_name"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3232
    const-string v3, "person_id"

    move-object/from16 v0, v47

    move-wide/from16 v1, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3233
    const-string v3, "default_action_for_group"

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "group_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3237
    const-string v3, "enable_contact_card_option"

    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3238
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 3240
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v40           #idx:I
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v4, -0x8000

    and-int/2addr v3, v4

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_21

    .line 3241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;

    .line 3242
    .restart local v10       #c:Landroid/database/Cursor;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3243
    .restart local v40       #idx:I
    const-string v3, "lookup"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3244
    .restart local v48       #lookupIdx:I
    const/4 v11, 0x0

    .line 3245
    .restart local v11       #name:Ljava/lang/String;
    if-ltz v40, :cond_32

    .line 3246
    move/from16 v0, v40

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3248
    :cond_32
    move/from16 v0, v48

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3249
    .restart local v49       #lookupKey:Ljava/lang/String;
    move-wide/from16 v0, p4

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 3250
    .restart local v12       #uri:Landroid/net/Uri;
    const/4 v15, 0x1

    move-object/from16 v9, p0

    move-wide/from16 v13, p4

    invoke-virtual/range {v9 .. v15}, Lcom/android/htccontacts/ContactListSearchPicker;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    goto/16 :goto_8

    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v40           #idx:I
    .end local v47           #launchIntent:Landroid/content/Intent;
    .end local v48           #lookupIdx:I
    .end local v49           #lookupKey:Ljava/lang/String;
    .end local v56           #resultIntent:Landroid/content/Intent;
    :cond_33
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v17, p4

    .line 3258
    invoke-super/range {v13 .. v18}, Lcom/android/htccontacts/app/ContactsListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2727
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2734
    .local v0, itemId:I
    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 2735
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleCreateNew()V

    .line 2737
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 618
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 619
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsRequestMultipleSelection:Z

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 623
    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 613
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onPostResume()V

    .line 614
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2722
    const/4 v0, 0x1

    return v0
.end method

.method protected onQueryAndAdapterFinish(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 4291
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    .line 4292
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleSelectionCacheUpdate()V

    .line 4293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsFreshing:Z

    .line 4294
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mDefaultCheckAll:Z

    if-eqz v0, :cond_0

    .line 4295
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker;->setAllNewItemChecked(Z)V

    .line 4296
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->updateSaveButtonState()V

    .line 4298
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 638
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;

    .line 639
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 977
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onResume()V

    .line 978
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->rebindEASService()V

    .line 979
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 629
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 630
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 633
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 2842
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 990
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onStart()V

    .line 991
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 983
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onStop()V

    .line 984
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->unbindEAService()V

    .line 985
    return-void
.end method

.method protected refineToGruopAdapterPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V
    .locals 0
    .parameter "cursor"
    .parameter "name"
    .parameter "uri"
    .parameter "id"
    .parameter "uriPerms"

    .prologue
    .line 1568
    invoke-super/range {p0 .. p6}, Lcom/android/htccontacts/app/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;JI)V

    .line 1569
    return-void
.end method

.method protected setAllItemChecked(Z)V
    .locals 19
    .parameter "check"

    .prologue
    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 2744
    .local v4, cursorCurrent:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 2746
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 2747
    .local v13, nInitPosition:I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 2748
    .local v12, nCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v16

    .line 2750
    .local v16, typeIndex:I
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2751
    .local v9, idIdx:I
    const-string v17, "display_name"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2752
    .local v14, nameIdx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v2

    .line 2754
    .local v2, accountIdx:I
    const-string v17, "ext_account_name"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2756
    .local v3, accountNameIdx:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v12, :cond_7

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2758
    invoke-interface {v4, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2759
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v7, v0

    .line 2760
    .local v7, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2762
    const v17, -0x778fffb5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainSIMInfo:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2763
    :cond_2
    const-string v17, "com.anddroid.contacts.sim"

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 2765
    .local v11, isSim:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2766
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsObtainIsSDN:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2767
    const/4 v10, 0x0

    .line 2768
    .local v10, isSDN:Z
    if-ltz v3, :cond_3

    .line 2769
    if-eqz v11, :cond_6

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ContactListSearchPicker;->isSIMSDNContact(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v10, 0x1

    .line 2771
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimSDNMap:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2774
    .end local v10           #isSDN:Z
    .end local v11           #isSim:Z
    :cond_4
    const v17, -0x77afff92

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2775
    if-eqz p1, :cond_5

    .line 2776
    if-ltz v14, :cond_5

    if-lez v2, :cond_5

    .line 2777
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2778
    .local v5, ext_account_type:Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string v17, "com.android.contacts.Groups"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2779
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2780
    .local v15, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mNegativeIdToTitle:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    .end local v5           #ext_account_type:Ljava/lang/String;
    .end local v7           #id:J
    .end local v15           #title:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 2769
    .restart local v7       #id:J
    .restart local v10       #isSDN:Z
    .restart local v11       #isSim:Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 2788
    .end local v7           #id:J
    .end local v10           #isSDN:Z
    .end local v11           #isSim:Z
    :cond_7
    const v17, -0x77afff92

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2789
    if-nez p1, :cond_8

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mNegativeIdToTitle:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 2793
    :cond_8
    invoke-interface {v4, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2794
    const/4 v4, 0x0

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0
.end method

.method public setContactsItemListAdapterCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 998
    :cond_0
    return-void
.end method

.method protected shouldEnableCompanyDirectorySearch()Z
    .locals 1

    .prologue
    .line 4410
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v0, :cond_0

    .line 4411
    const/4 v0, 0x1

    .line 4413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldEnableContextMenu()Z
    .locals 1

    .prologue
    .line 4402
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v0, :cond_0

    .line 4403
    const/4 v0, 0x1

    .line 4405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 36

    .prologue
    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/htccontacts/ContactListSearchPicker;->time:J

    .line 1169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterMode:Z

    .line 1170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getFilterText()Ljava/lang/String;

    move-result-object v25

    .line 1172
    .local v25, filterText:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    if-nez v2, :cond_0

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v29

    .line 1174
    .local v29, listview:Lcom/htc/widget/HtcListView;
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1175
    invoke-virtual/range {v29 .. v29}, Lcom/htc/widget/HtcListView;->clearTextFilter()V

    .line 1176
    const/4 v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1177
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    .line 1184
    .end local v25           #filterText:Ljava/lang/String;
    .end local v29           #listview:Lcom/htc/widget/HtcListView;
    :cond_0
    const/4 v7, 0x0

    .line 1185
    .local v7, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1186
    .local v5, queryUri:Landroid/net/Uri;
    sget-object v6, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 1189
    .local v6, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3fc

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v6

    .line 1196
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1198
    .local v9, order:Ljava/lang/String;
    const v2, -0x77ffffd8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1201
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1202
    const-string v2, "with"

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1203
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1209
    :goto_0
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_2
    :goto_1
    return-void

    .line 1206
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 1216
    :cond_4
    const v2, -0x77ffffd8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsPickVCARD:Z

    if-eqz v2, :cond_5

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1219
    const-string v2, "ext_account_Type"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeVcardLimitContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1222
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "for_export_only"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1225
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1230
    :cond_5
    const v2, -0x6fffffd3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_6

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1233
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1237
    const-string v2, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1241
    :cond_6
    const v2, -0x3fffffce

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v2, v3, :cond_7

    const v2, -0x3fffffc9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v2, v3, :cond_7

    const v2, -0x3fffff99

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v2, v3, :cond_7

    const v2, -0x1fffffcd

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v2, v3, :cond_7

    const v2, -0x1fffffc8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_b

    .line 1244
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1246
    const v2, -0x3fffffc9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-eq v2, v3, :cond_8

    const v2, -0x1fffffc8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_a

    .line 1247
    :cond_8
    if-eqz v7, :cond_9

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->getOnlyWithDataWhereString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1260
    :cond_9
    :goto_2
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1252
    :cond_a
    const v2, -0x3fffff99

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_9

    .line 1253
    if-eqz v7, :cond_9

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->getOnlyWithDataWhereString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1264
    :cond_b
    const/16 v2, 0x3c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimpleSearchContact:Z

    if-eqz v2, :cond_13

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    if-eqz v2, :cond_d

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    .line 1277
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mRunKeyCodeFilter:Z

    .line 1278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mExtraKeyCode:I

    .line 1279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    .line 1285
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1286
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v21

    .line 1287
    .local v21, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1293
    .end local v21           #builder:Landroid/net/Uri$Builder;
    :goto_3
    const/16 v11, 0x3f2

    .line 1296
    .local v11, token:I
    sget-boolean v2, Lcom/android/htccontacts/ContactListSearchPicker;->sIsEnableCachePeopleSearchCursor:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    if-eqz v2, :cond_11

    .line 1297
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->tryObtainPeopleSearchCursor()Landroid/database/Cursor;

    move-result-object v24

    .line 1298
    .local v24, cursor:Landroid/database/Cursor;
    if-eqz v24, :cond_11

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mContentReady:Z

    if-nez v2, :cond_e

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->restoreList()V

    .line 1301
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mContentReady:Z

    .line 1303
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 1304
    if-eqz v24, :cond_f

    .line 1305
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    .line 1307
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    .line 1312
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v11, 0x3fc

    const/4 v12, 0x0

    sget-object v14, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .end local v11           #token:I
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    move-object v15, v7

    invoke-virtual/range {v10 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    goto/16 :goto_1

    .line 1290
    .end local v24           #cursor:Landroid/database/Cursor;
    :cond_10
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_3

    .line 1321
    .restart local v11       #token:I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1322
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "2000"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1323
    const/16 v11, 0x3e9

    .line 1325
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/4 v12, 0x0

    sget-object v14, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    move-object v15, v7

    invoke-virtual/range {v10 .. v17}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    goto/16 :goto_1

    .line 1330
    .end local v11           #token:I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-lez v2, :cond_1b

    .line 1331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    .line 1484
    :sswitch_0
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1485
    const-string v2, "linked_sn"

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1486
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1334
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1335
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1338
    const-string v2, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v3, "com.anddroid.contacts.sim"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    .line 1342
    .local v32, simBookReady:Z
    if-nez v32, :cond_14

    .line 1343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ext_account_Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1347
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   AND  ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-super/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1349
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ext_account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_SDN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1352
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1360
    .end local v32           #simBookReady:Z
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getGroupCandidateQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1361
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1364
    const-string v2, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1372
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 1373
    .local v27, intent:Landroid/content/Intent;
    const-string v2, "requestAccountType"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1376
    .local v31, preRequestType:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v35

    .line 1377
    .local v35, uri:Landroid/net/Uri;
    if-eqz v35, :cond_2

    .line 1378
    invoke-static/range {v35 .. v35}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 1379
    .local v22, contact_id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getRawContactUri()Landroid/net/Uri;

    move-result-object v5

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ( contact_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0 ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1383
    const-string v2, "raw_contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1385
    if-eqz v7, :cond_16

    if-eqz v31, :cond_16

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1392
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    sget-object v16, Lcom/android/htccontacts/ContactListSearchPicker;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1399
    .end local v22           #contact_id:J
    .end local v27           #intent:Landroid/content/Intent;
    .end local v31           #preRequestType:Ljava/lang/String;
    .end local v35           #uri:Landroid/net/Uri;
    :sswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->handlePickFavoriteGroup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1404
    :sswitch_5
    sget-object v35, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1405
    .restart local v35       #uri:Landroid/net/Uri;
    const-string v2, "favorite_candidate"

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1408
    const-string v2, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1411
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    sget-object v16, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1422
    .end local v35           #uri:Landroid/net/Uri;
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getRawContactUri()Landroid/net/Uri;

    move-result-object v5

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1424
    .local v33, type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "contact_id"

    const-wide/16 v12, -0x1

    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 1425
    .restart local v22       #contact_id:J
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1426
    const-string v2, "All"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1428
    const-string v7, " (( account_type = \'com.google\' OR account_type = \'com.htc.android.mail.eas\' OR account_type = \'com.htc.android.pcsc\'"

    .line 1439
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aggregation_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1447
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1449
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1451
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1435
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (( account_type = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 1454
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    sget-object v16, Lcom/android/htccontacts/ContactListSearchPicker;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1463
    .end local v22           #contact_id:J
    .end local v33           #type:Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v5

    .line 1464
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1472
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "group_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1473
    .local v30, mGroupName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1474
    sget-object v5, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 1475
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1494
    .end local v30           #mGroupName:Ljava/lang/String;
    :sswitch_9
    sget-object v5, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_LINKED_TO_ACCOUNT_URI:Landroid/net/Uri;

    .line 1495
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendAccountParameterUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    .line 1498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1504
    :sswitch_a
    sget-object v5, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_EXCLUDE_ACCOUNT:Landroid/net/Uri;

    .line 1505
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendAccountParameterUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    .line 1508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    sget-object v2, Lcom/android/htccontacts/ContactListSearchPicker;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1514
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 1515
    .restart local v27       #intent:Landroid/content/Intent;
    const-string v2, "EXTRA_PICK_WITH_TYPES"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    .line 1516
    .local v34, typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 1517
    .local v20, buf:Ljava/lang/StringBuffer;
    if-eqz v34, :cond_1a

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 1518
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_19
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 1519
    .restart local v33       #type:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1520
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1521
    const/16 v2, 0x3b

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1525
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v33           #type:Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    .line 1526
    .local v28, len:I
    if-lez v28, :cond_2

    .line 1527
    add-int/lit8 v2, v28, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1534
    sget-object v5, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_WITH_ACCOUNT_TYPES:Landroid/net/Uri;

    .line 1535
    invoke-static {v5}, Lcom/android/htccontacts/ContactListSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1536
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1537
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "PARAM_ACCOUNT_TYPES"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1539
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ContactListSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1545
    .end local v20           #buf:Ljava/lang/StringBuffer;
    .end local v27           #intent:Landroid/content/Intent;
    .end local v28           #len:I
    .end local v34           #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c
    array-length v2, v6

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1547
    .local v16, selfProjection:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v6

    move-object/from16 v0, v16

    invoke-static {v6, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1548
    array-length v2, v6

    const-string v3, "photo"

    aput-object v3, v16, v2

    .line 1550
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getGroupCandidateQueryWithGroups(Z)Landroid/net/Uri;

    move-result-object v5

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v7

    .line 1552
    const-string v2, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->appendExcludeReadOnlyContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v19, v9

    invoke-virtual/range {v12 .. v19}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1559
    .end local v16           #selfProjection:[Ljava/lang/String;
    :cond_1b
    invoke-super/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    goto/16 :goto_1

    .line 1331
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77efff97 -> :sswitch_0
        -0x77efff94 -> :sswitch_b
        -0x77afffb0 -> :sswitch_2
        -0x77afffa3 -> :sswitch_4
        -0x77afffa1 -> :sswitch_7
        -0x77afff96 -> :sswitch_9
        -0x77afff95 -> :sswitch_a
        -0x77afff92 -> :sswitch_c
        -0x778fffb5 -> :sswitch_1
        -0x776fffad -> :sswitch_2
        -0x776fffa6 -> :sswitch_5
        -0x772fff9b -> :sswitch_8
        -0x766fff9e -> :sswitch_6
        -0x762fff98 -> :sswitch_6
        -0x566fffab -> :sswitch_3
    .end sparse-switch
.end method

.method protected startViewColleageActivity(Landroid/accounts/Account;Lcom/htc/android/pim/eas/EASGalElement;)V
    .locals 3
    .parameter "account"
    .parameter "elements"

    .prologue
    .line 4417
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4418
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/colleage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4422
    sget-object v2, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->EXTRA_COMPANY_DIRECTORY_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4425
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 4427
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4428
    const-string v2, "account_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4430
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->startActivity(Landroid/content/Intent;)V

    .line 4431
    return-void
.end method

.method protected throwWarningException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "description"

    .prologue
    .line 4372
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected transferLongListToIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4243
    .local p1, longList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4244
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4245
    .local v3, value:J
    long-to-int v1, v3

    .line 4246
    .local v1, intValue:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4248
    .end local v1           #intValue:I
    .end local v3           #value:J
    :cond_0
    return-object v2
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 4684
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getCurrentCursorCount()I

    move-result v0

    .line 4685
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 4686
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 4687
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-lez v0, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 4689
    :cond_0
    return-void

    .line 4687
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateSaveButtonState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4012
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_0

    .line 4013
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->countCheckedItem()I

    move-result v0

    .line 4014
    .local v0, counts:I
    iget-object v5, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-lez v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 4015
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 4016
    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4017
    .local v1, text:Ljava/lang/String;
    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    if-lez v2, :cond_3

    .line 4018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mMaxSelectedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4022
    :goto_2
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 4024
    .end local v0           #counts:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0       #counts:I
    :cond_1
    move v2, v4

    .line 4014
    goto :goto_0

    :cond_2
    move v3, v4

    .line 4015
    goto :goto_1

    .line 4020
    .restart local v1       #text:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
