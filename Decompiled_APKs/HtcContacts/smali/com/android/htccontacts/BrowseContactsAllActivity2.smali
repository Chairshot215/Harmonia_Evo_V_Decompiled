.class public Lcom/android/htccontacts/BrowseContactsAllActivity2;
.super Lcom/android/htccontacts/ContactListSearchPicker;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$GetSIMMaxAlphaTagLengthThread;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$DelayedStartQueryMyContactAndIndicator;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$viewEditMyContactCardTask;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$Prefs;
    }
.end annotation


# static fields
.field static final CONTEXT_MENU_ADD_AS_BLACKLIST:I = 0x8

.field static final CONTEXT_MENU_DELETE_CONTACT:I = 0x4

.field static final CONTEXT_MENU_EDIT_CONTACT:I = 0x3

.field static final CONTEXT_MENU_EDIT_MY_CONTACT_CARD:I = 0x6

.field static final CONTEXT_MENU_ITEM_CALL_DEFAULT:I = 0x1

.field static final CONTEXT_MENU_ITEM_SEND_SMS:I = 0x2

.field static final CONTEXT_MENU_SEND_MY_CONTACT_CARD:I = 0x7

.field static final CONTEXT_MENU_SHARE_CONTACT_VIA_SMS:I = 0x5

.field public static final DEFAULT_ACCOUNT_NAME_ALL_CONTACTS:Ljava/lang/String; = "All Contacts"

.field public static final DEFAULT_ACCOUNT_TYPE_ALL_CONTACTS:Ljava/lang/String; = "com.htc.contacts.default.allcontacts"

.field private static final DIALOG_PROGRESS:I = 0x1e61

.field private static final DIALOG_SELECTVISIBLEACCOINTS:I = 0x22b8

.field private static final ID_DELETE_CONTACT_PROGRESS_DIALOG:I = 0x64

.field private static final ID_SAVE_CONTACT_PROGRESS_DIALOG:I = 0x65

.field private static final MENU_ADD_CONTACT:I = 0x2

.field private static final MENU_CHANGE_FONT_SIZE:I = 0x17

.field private static final MENU_COMPANY_DIRECTORY:I = 0x6

.field private static final MENU_DELETE_CONTACT:I = 0x4

.field private static final MENU_DE_DUPLICATE_CONTACTS:I = 0x18

.field private static final MENU_DISPLAY_OPTION:I = 0x3

.field private static final MENU_GO_TO_BLACKLIST:I = 0x9

.field private static final MENU_HELP:I = 0x15

.field private static final MENU_HOME:I = 0x1

.field private static final MENU_IMPORT_EXPORT:I = 0x5

.field private static final MENU_MANAGE_CALL:I = 0xd

.field private static final MENU_MOVE_CONTACTS:I = 0x16

.field private static final MENU_PIM:I = 0x14

.field private static final MENU_SAVE_CONTACTS_SIM_TO_SIM:I = 0x8

.field private static final MENU_SEARCH:I = 0xc

.field private static final MENU_SEND_CONTACT:I = 0xf

.field private static final MENU_SET_AAB:I = 0xe

.field private static final MENU_SIM_CAPACITY:I = 0x10

.field private static final MENU_TEST:I = 0x64

.field private static final MENU_VIEW_LINKED_CONTACT:I = 0xa

.field private static final MENU_VODA_360:I = 0xb

.field private static final MENU_VZW_BACKUP_ASSISTANT:I = 0x7

.field static final MSG_FILTER_BY_ACCOUNT:I = 0x270f

.field private static final QUERY_TOKEN:I = 0x3e8

.field private static final REQUEST_BASE:I = 0xf000

.field private static final REQUEST_DELETE_CONTACTS:I = 0xf001

.field private static final REQUEST_SAVE_CONTACTS_PHONE_TO_SIM:I = 0xf004

.field private static final REQUEST_SAVE_CONTACTS_SIM_TO_SIM:I = 0xf003

.field private static final REQUEST_SETUP_WIZARD:I = 0xf006

.field private static final REQUEST_VIEW_CONTACTS_OPTION:I = 0xf002

.field private static final REQUEST_VOICE_INPUT:I = 0xf005

.field static final SIGNAL_GO:Ljava/lang/String; = "com.htc.content.Intent.ACTION_SOCIAL_GO"

.field static final SIGNAL_PAUSE:Ljava/lang/String; = "com.htc.content.Intent.ACTION_SOCIAL_PAUSE"

.field private static final TAG:Ljava/lang/String; = "BrowseContactsAllActivity2"

.field private static final TASK_BASE:I = 0xf0

.field private static final TASK_DELETE_CONTACTS:I = 0xf1

.field private static final TASK_SAVE_CONTACTS_PHONE_TO_SIM:I = 0xf2

.field private static mMaxAlphaTagLength:I = 0x0

.field private static final sDefaultMaxAlphaTagLength:I = 0xf


# instance fields
.field protected delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

.field protected delayedStartQueryMyContactAndIndicatorRunnable:Ljava/lang/Runnable;

.field private isEnableAddItemSeparable:Z

.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountListAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContactAccountFilterFlag:Z

.field private mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

.field private mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

.field protected mDisplayViewHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

.field private mDropView:Lcom/htc/widget/HeaderBarDropDown;

.field private mFilterStringCache:Ljava/lang/String;

.field private mFontSize:I

.field private mHandler:Landroid/os/Handler;

.field mInputEditorFocusedInForeground:Z

.field mInputEditorFocusedWhenWindowFocusLoss:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsShowDropDown:Z

.field private mManagedDialog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

.field private mNoFreeSIMEmailFields:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mService:Lcom/android/syncml/service/ISyncMLService;

.field private mShouldRefocusSearch:Z

.field private mSources:Lcom/android/htccontacts/model/AccountTypeManager;

.field private mToast:Landroid/widget/Toast;

.field mUIHandler:Landroid/os/Handler;

.field private mWeakAsyncTaskManage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/htccontacts/util/WeakAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field final sLookupProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mManagedDialog:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mWeakAsyncTaskManage:Ljava/util/HashMap;

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mHandler:Landroid/os/Handler;

    .line 242
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mToast:Landroid/widget/Toast;

    .line 248
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mShouldRefocusSearch:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->isEnableAddItemSeparable:Z

    .line 254
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFontSize:I

    .line 261
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z

    .line 264
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mConnection:Landroid/content/ServiceConnection;

    .line 285
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIntentFilter:Landroid/content/IntentFilter;

    .line 289
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mInputEditorFocusedInForeground:Z

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mAccountList:Ljava/util/ArrayList;

    .line 851
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIsShowDropDown:Z

    .line 870
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$8;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$8;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mUIHandler:Landroid/os/Handler;

    .line 3339
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    .line 3341
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicatorRunnable:Ljava/lang/Runnable;

    .line 3963
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayViewHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

    .line 4003
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sLookupProjection:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mAccountListAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->loadPrefs()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFontSize:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->resetEmptyView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->doAddContact()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/BrowseContactsAllActivity2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->editMyContactCard(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->veiwMyContactCard()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/htc/widget/HeaderBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mShouldRefocusSearch:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/BrowseContactsAllActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mShouldRefocusSearch:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/htccontacts/BrowseContactsAllActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p5}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSaveToSimResultString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->handleImportRequest(I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->handleExportRequest(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveContactsPhoneToSIM()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->doShareVisibleContacts()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/htccontacts/BrowseContactsAllActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8000()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    return v0
.end method

.method static synthetic access$8002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    sput p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    return p0
.end method

.method static synthetic access$8200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    return-object p1
.end method

.method private checkifDisplaySelectContactAccount()V
    .locals 4

    .prologue
    const/16 v3, 0x22b8

    const/16 v2, 0x1e61

    .line 3598
    invoke-static {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->checkOperation(Landroid/app/Activity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3616
    :goto_0
    return-void

    .line 3601
    :pswitch_0
    const-wide/high16 v0, 0x4008

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3604
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mUIHandler:Landroid/os/Handler;

    const v1, 0xf006

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3606
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, v3, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->startDialogAsync(Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 3611
    :pswitch_1
    const-string v0, "BrowseContactsAllActivity2"

    const-string v1, "account change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    const/4 v0, 0x1

    invoke-static {p0, v0, v3, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->startDialogAsync(Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 3598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createFontSizeDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1384
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private deleteContacts()V
    .locals 2

    .prologue
    .line 1611
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteContactsIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0xf001

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1612
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 3999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 4001
    :cond_0
    return-void
.end method

.method private displayImportExportDialog()V
    .locals 9

    .prologue
    .line 3156
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v6, 0x103000c

    invoke-direct {v3, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3157
    .local v3, dialogContext:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3158
    .local v5, res:Landroid/content/res/Resources;
    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3162
    .local v4, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$12;

    const v6, 0x2090007

    invoke-direct {v0, p0, p0, v6, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2$12;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 3177
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isCanReadWriteSIM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3178
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3179
    const v6, 0x7f0a028c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3186
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3187
    const v6, 0x7f0a028f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3195
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSD_Card_Plugin()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3196
    const v6, 0x7f0a0291

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3199
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSD_Card_Plugin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3200
    const v6, 0x7f0a0293

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3203
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->hasInternalFat()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3204
    const v6, 0x7f0a0292

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3207
    :cond_3
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->hasInternalFat()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3208
    const v6, 0x7f0a0294

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3211
    :cond_4
    const v6, 0x7f0c0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3212
    const v6, 0x7f0a03ea

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3215
    :cond_5
    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;

    invoke-direct {v1, p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/widget/ArrayAdapter;)V

    .line 3253
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0295

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v0, v7, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 3258
    .local v2, d:Landroid/app/Dialog;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->manageDialog(Landroid/app/Dialog;)V

    .line 3260
    return-void

    .line 3180
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #d:Landroid/app/Dialog;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3181
    const v6, 0x7f0a028d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3183
    :cond_7
    const v6, 0x7f0a028b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3188
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3189
    const v6, 0x7f0a0290

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3191
    :cond_9
    const v6, 0x7f0a028e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private doAddContact()V
    .locals 1

    .prologue
    .line 1603
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getAddContactIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1604
    return-void
.end method

.method private doShareVisibleContacts()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 4008
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sLookupProjection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4011
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4012
    const v0, 0x7f0a03eb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4033
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4035
    return-void

    .line 4016
    :cond_0
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4017
    .local v10, uriListBuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 4018
    .local v7, index:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4019
    if-eqz v7, :cond_1

    .line 4020
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4021
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    add-int/lit8 v7, v7, 0x1

    .line 4018
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4033
    .end local v7           #index:I
    .end local v10           #uriListBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4024
    .restart local v7       #index:I
    .restart local v10       #uriListBuilder:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 4028
    .local v9, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4029
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4030
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4031
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private doViewDisplayOption()V
    .locals 2

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayOptionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0xf002

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1608
    return-void
.end method

.method private editMyContactCard(J)V
    .locals 3
    .parameter "lMyContactId"

    .prologue
    .line 1597
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1598
    .local v0, rawContactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1599
    return-void
.end method

.method private getSIMMaxAlphaTagLength()V
    .locals 2

    .prologue
    .line 3588
    sget v1, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    if-gez v1, :cond_0

    .line 3589
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$GetSIMMaxAlphaTagLengthThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$GetSIMMaxAlphaTagLengthThread;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$1;)V

    .line 3590
    .local v0, getTagLenThread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3591
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3593
    .end local v0           #getTagLenThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private getSaveToSimResultString(I)Ljava/lang/String;
    .locals 2
    .parameter "saveToSimResultCode"

    .prologue
    .line 3506
    invoke-static {p1}, Lcom/android/htccontacts/util/UpdateSIMStatus;->getSIMErrorDescirptionResource(I)I

    move-result v0

    .line 3507
    .local v0, resId:I
    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3508
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3507
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private handleDeleteContactList(Ljava/util/ArrayList;[Z)V
    .locals 3
    .parameter
    .parameter "isSimArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 1629
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v0, 0xf1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->runAyncTask(I[Ljava/lang/Object;)Z

    .line 1630
    return-void
.end method

.method private handleExportRequest(I)V
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v3, 0x1

    .line 3284
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 3286
    .local v2, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 3287
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3288
    .local v1, size:I
    if-le v1, v3, :cond_0

    .line 3289
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->showDialog(I)V

    .line 3294
    :goto_0
    return-void

    .line 3293
    :cond_0
    if-ne v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    :goto_1
    invoke-static {p0, p1, v3}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doExport(Landroid/content/Context;ILcom/android/htccontacts/model/AccountWithDataSet;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleImportRequest(I)V
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v3, 0x1

    .line 3267
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 3269
    .local v2, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 3270
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3271
    .local v1, size:I
    if-le v1, v3, :cond_0

    .line 3272
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->showDialog(I)V

    .line 3277
    :goto_0
    return-void

    .line 3276
    :cond_0
    if-ne v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountWithDataSet;

    :goto_1
    invoke-static {p0, p1, v3}, Lcom/android/htccontacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/htccontacts/model/AccountWithDataSet;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleSaveContactListPhoneToSIM(Ljava/util/ArrayList;[Z)V
    .locals 3
    .parameter
    .parameter "isSimArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 1633
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v0, 0xf2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->runAyncTask(I[Ljava/lang/Object;)Z

    .line 1634
    return-void
.end method

.method private initBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1528
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.MY_CONTACT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1529
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$10;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$10;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1537
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1538
    return-void
.end method

.method private isContainDoubleByteChars(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 3514
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 3515
    .local v3, utf8Bytes:[B
    array-length v4, v3

    .line 3516
    .local v4, utf8Length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3517
    .local v2, originalLength:I
    if-eq v2, v4, :cond_1

    .line 3519
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 3520
    aget-byte v0, v3, v1

    .line 3521
    .local v0, check:B
    and-int/lit8 v5, v0, 0x7f

    int-to-byte v0, v5

    .line 3522
    aget-byte v5, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v5, :cond_0

    .line 3531
    .end local v0           #check:B
    .end local v1           #i:I
    .end local v2           #originalLength:I
    .end local v3           #utf8Bytes:[B
    .end local v4           #utf8Length:I
    :goto_1
    return v1

    .line 3519
    .restart local v0       #check:B
    .restart local v1       #i:I
    .restart local v2       #originalLength:I
    .restart local v3       #utf8Bytes:[B
    .restart local v4       #utf8Length:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3527
    .end local v0           #check:B
    .end local v1           #i:I
    .end local v2           #originalLength:I
    .end local v3           #utf8Bytes:[B
    .end local v4           #utf8Length:I
    :catch_0
    move-exception v5

    .line 3531
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isRestricted(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 3575
    const/4 v0, 0x0

    return v0
.end method

.method private loadPrefs()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    .line 705
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    if-nez v0, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setSelectedAccountToDefault()V

    .line 712
    :cond_1
    return-void
.end method

.method private prepareSourceInstance()V
    .locals 3

    .prologue
    .line 3333
    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;-><init>(Landroid/content/Context;)V

    .line 3334
    .local v1, runnable:Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3335
    .local v0, handler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;->postInBackgroundDelay(Ljava/lang/Runnable;I)V

    .line 3336
    return-void
.end method

.method private saveContactsPhoneToSIM()V
    .locals 3

    .prologue
    .line 1615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1617
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1618
    const v1, 0xf004

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1619
    return-void
.end method

.method private saveContactsSIMToSIM()V
    .locals 3

    .prologue
    .line 1622
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1623
    .local v0, importIntent:Landroid/content/Intent;
    const-string v1, "account_name"

    const-string v2, "SIM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const-string v1, "account_type"

    const-string v2, "com.anddroid.contacts.sim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const v1, 0xf003

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1626
    return-void
.end method

.method private saveToSim(Ljava/lang/String;)I
    .locals 5
    .parameter "number"

    .prologue
    .line 3489
    const/4 v0, 0x1

    .line 3491
    .local v0, resultCode:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3492
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3493
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    const-string v3, "number1"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    const-string v3, "number2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    const-string v3, "emails"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 3500
    .local v1, resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/htccontacts/util/UpdateSIMStatus;->processSIMUpdateErrorUri(Landroid/net/Uri;)I

    move-result v0

    .line 3502
    return v0
.end method

.method private saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "name"

    .prologue
    const/4 v6, 0x1

    .line 3446
    const/4 v0, 0x1

    .line 3447
    .local v0, resultCode:I
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3448
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3449
    move-object p5, p1

    .line 3452
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->trimSIMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3453
    .local v2, trimedName:Ljava/lang/String;
    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3455
    move-object p5, v2

    .line 3459
    :cond_1
    if-ne v0, v6, :cond_2

    .line 3460
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3461
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    const-string v4, "number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    const-string v4, "number1"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3464
    const-string v4, "number2"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    iget-boolean v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z

    if-eqz v4, :cond_3

    .line 3466
    const-string v4, "emails"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 3474
    .local v1, resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/htccontacts/util/UpdateSIMStatus;->processSIMUpdateErrorUri(Landroid/net/Uri;)I

    move-result v0

    .line 3476
    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    .line 3478
    iput-boolean v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z

    .line 3479
    invoke-direct/range {p0 .. p5}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3480
    if-ne v0, v6, :cond_2

    .line 3481
    const/16 v0, 0x8

    .line 3485
    .end local v1           #resultUri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    return v0

    .line 3468
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v4, "emails"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMultipleContacts()V
    .locals 2

    .prologue
    .line 3632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_SEND_MULTIPLE_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3633
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 3634
    return-void
.end method

.method private setMenuItemEnable(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 1188
    if-nez p1, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1192
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1193
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 3990
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 3991
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3992
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 3994
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showSIMCapacity()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 3651
    const-string v0, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3652
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3654
    .local v6, amount:I
    const-string v0, "gsm.adn.records.capacity"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3655
    .local v8, capacity:I
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3656
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 3657
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3658
    const-string v0, "com.anddroid.contacts.sim"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3659
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3663
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3664
    const/4 v9, 0x0

    .line 3666
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3668
    .local v11, msg:Ljava/lang/String;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3670
    .local v7, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3671
    const v0, 0x7f0a03c0

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3677
    :goto_0
    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3678
    const v0, 0x7f0a00eb

    invoke-virtual {v7, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3679
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    .line 3680
    .local v10, d:Landroid/app/Dialog;
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->manageDialog(Landroid/app/Dialog;)V

    .line 3681
    return-void

    .line 3672
    .end local v10           #d:Landroid/app/Dialog;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3673
    const v0, 0x7f0a03c1

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 3675
    :cond_4
    const v0, 0x7f0a03bd

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private trimSIMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3536
    const/4 v2, 0x0

    .line 3537
    .local v2, rtn:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v1

    .line 3538
    .local v1, firstDoubleByte:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 3543
    sget v3, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_1

    .line 3544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3545
    .local v0, end:I
    :goto_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3562
    .end local v0           #end:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3544
    :cond_0
    sget v3, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v0, v3, 0x2

    goto :goto_0

    .line 3546
    :cond_1
    sget v3, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 3547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3548
    .restart local v0       #end:I
    :goto_2
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3549
    goto :goto_1

    .end local v0           #end:I
    :cond_2
    move v0, v1

    .line 3547
    goto :goto_2

    .line 3550
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3551
    .restart local v0       #end:I
    :goto_3
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3552
    goto :goto_1

    .line 3550
    .end local v0           #end:I
    :cond_4
    sget v3, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_3

    .line 3555
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    if-le v3, v4, :cond_6

    .line 3556
    sget v3, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMaxAlphaTagLength:I

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3558
    :cond_6
    move-object v2, p1

    goto :goto_1
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1542
    return-void
.end method

.method private updatePrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefsName"
    .parameter "mString"

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 723
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 726
    return-void
.end method

.method private updatePrefs(Ljava/lang/String;Z)V
    .locals 2
    .parameter "prefsName"
    .parameter "mBoolean"

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 716
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 718
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 719
    return-void
.end method

.method private veiwMyContactCard()V
    .locals 1

    .prologue
    .line 1594
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getMyContactCardIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1595
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 1

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3392
    return-void
.end method

.method createDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 2765
    const/4 v0, 0x0

    .line 2766
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mManagedDialog:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
    return-object v0
.end method

.method createProgressDialog(III)Lcom/htc/app/HtcProgressDialog;
    .locals 5
    .parameter "id"
    .parameter "titleresID"
    .parameter "msgresID"

    .prologue
    const/16 v4, 0x14

    .line 2771
    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 2772
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    .line 2786
    :goto_0
    return-object v1

    .line 2776
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mManagedDialog:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 2777
    .local v0, d:Landroid/app/Dialog;
    const/4 v1, 0x0

    .line 2778
    .local v1, dialog:Lcom/htc/app/HtcProgressDialog;
    if-nez v0, :cond_1

    .line 2779
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    .line 2781
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mManagedDialog:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2784
    check-cast v1, Lcom/htc/app/HtcProgressDialog;

    goto :goto_0
.end method

.method createToast()Landroid/widget/Toast;
    .locals 2

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2791
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mToast:Landroid/widget/Toast;

    .line 2793
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3376
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3378
    .local v0, pm:Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3379
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->releaseWakeLock()V

    .line 3382
    :cond_0
    const/4 v1, 0x1

    const-string v2, "BrowseContactsAllActivity2"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3383
    return-void
.end method

.method protected doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "filter"

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2576
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getUriToQuery()Landroid/net/Uri;

    move-result-object v1

    .line 2577
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/htccontacts/BrowseContactsAllActivity2;->CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    .line 2579
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2580
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2581
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2583
    :cond_0
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    if-eqz v3, :cond_1

    .line 2585
    const-string v3, "account_type"

    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v4, v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2586
    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v4, v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2588
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2589
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2590
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method protected doOnResumeWithourRequery()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndicator()V

    .line 891
    :cond_0
    return-void
.end method

.method protected ensureSubTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3638
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    if-eqz v0, :cond_0

    .line 3639
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3640
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setSubHeaderEnabled(Z)V

    .line 3641
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->enableCompanySearch(Z)V

    .line 3648
    :cond_0
    :goto_0
    return-void

    .line 3644
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setSubHeaderEnabled(Z)V

    .line 3645
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->enableCompanySearch(Z)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 3417
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 3418
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3419
    const-string v1, "BrowseContactsAllActivity2"

    const-string v2, "UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->releaseWakeLock()V

    .line 3426
    :cond_1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    :goto_0
    return-void

    .line 3427
    :catch_0
    move-exception v0

    .line 3428
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "BrowseContactsAllActivity2"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getContactSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, whereClause:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    if-nez v1, :cond_0

    .line 648
    const-string v1, ""

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Contacts;->addClauseOnlyVisible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_0
    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_1

    .line 651
    if-eqz v0, :cond_2

    .line 652
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

    .line 658
    :cond_1
    :goto_0
    return-object v0

    .line 655
    :cond_2
    const-string v0, "has_phone_number=1"

    goto :goto_0
.end method

.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 547
    const v0, 0x7f030007

    return v0
.end method

.method protected getFilterAccounts()[Landroid/accounts/Account;
    .locals 5

    .prologue
    .line 662
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/accounts/Account;

    const/4 v1, 0x0

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v4, v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFirstAdapter()Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    return-object v0
.end method

.method protected getPreContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 896
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v0

    .line 897
    .local v0, app:Lcom/android/htccontacts/PeopleApp;
    if-nez v0, :cond_0

    .line 898
    const/4 v1, 0x0

    .line 900
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/htccontacts/PeopleApp;->getPreInflatedAllContactLayout()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected handleSearch()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3684
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->isUseServoSearchClient(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3685
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getlaunchServoSearchClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3686
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 3687
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 3709
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 3692
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 3693
    .local v2, listView:Lcom/htc/widget/HtcListView;
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 3694
    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3695
    .local v0, firstVisible:I
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v0, :cond_3

    .line 3697
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 3700
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    if-eqz v3, :cond_3

    .line 3701
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->focusSearchBoxIfExisted()V

    .line 3706
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->launchIME(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public isAABSettingExists()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3979
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3980
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYRIAD_SYNCML_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3982
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3983
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3987
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    return v0
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x1

    return v0
.end method

.method protected launchAccountListDialog()V
    .locals 4

    .prologue
    .line 552
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a013a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mAccountListAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;

    new-instance v3, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 575
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->manageDialog(Landroid/app/Dialog;)V

    .line 576
    return-void
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1638
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/htccontacts/app/BaseListActivity;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    .line 1639
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    return-object v0
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 2619
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 2625
    packed-switch p1, :pswitch_data_0

    .line 2713
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->onActivityResult(IILandroid/content/Intent;)V

    .line 2716
    :cond_0
    :goto_0
    return-void

    .line 2627
    :pswitch_0
    if-eqz p3, :cond_0

    .line 2630
    const-string v9, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2631
    .local v5, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/ArrayAdapter;

    const v11, 0x1090003

    invoke-direct {v10, p0, v11, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v11, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;

    invoke-direct {v11, p0, v5}, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2649
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->manageDialog(Landroid/app/Dialog;)V

    .line 2650
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 2653
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    if-ne p2, v9, :cond_0

    .line 2654
    if-eqz p3, :cond_0

    .line 2655
    const-string v9, "SELECTED_ID"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2656
    .local v3, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    .line 2658
    .local v4, isSimArray:[Z
    invoke-direct {p0, v3, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->handleDeleteContactList(Ljava/util/ArrayList;[Z)V

    goto :goto_0

    .line 2664
    .end local v3           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #isSimArray:[Z
    :pswitch_2
    if-ne p2, v9, :cond_0

    .line 2665
    if-eqz p3, :cond_0

    .line 2666
    const-string v9, "DISPLAY_VIEW_OPTION_FLAG"

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2667
    .local v8, viewOptionFlag:Z
    const-string v9, "ALL_CONTACT_DISPLAY_NAME_ORDER"

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2668
    .local v1, displayNameOrderChange:Z
    const-string v9, "ALL_CONTACT_SORT_NAME_ORDER"

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2669
    .local v7, sortNameOrderChange:Z
    if-nez v8, :cond_1

    if-nez v1, :cond_1

    if-eqz v7, :cond_0

    .line 2670
    :cond_1
    iput-boolean v11, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    goto :goto_0

    .line 2690
    .end local v1           #displayNameOrderChange:Z
    .end local v7           #sortNameOrderChange:Z
    .end local v8           #viewOptionFlag:Z
    :pswitch_3
    if-eqz p3, :cond_0

    .line 2693
    const-string v9, "error"

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2694
    .local v6, result:Z
    if-eqz v6, :cond_0

    .line 2695
    const-string v9, "error_msg"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2696
    .local v2, error_msg:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2697
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v9, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2702
    .end local v2           #error_msg:Ljava/lang/String;
    .end local v6           #result:Z
    :pswitch_4
    if-ne p2, v9, :cond_0

    .line 2703
    if-eqz p3, :cond_0

    .line 2704
    const-string v9, "SELECTED_ID"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2705
    .restart local v3       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    .line 2707
    .restart local v4       #isSimArray:[Z
    invoke-direct {p0, v3, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->handleSaveContactListPhoneToSIM(Ljava/util/ArrayList;[Z)V

    goto/16 :goto_0

    .line 2625
    nop

    :pswitch_data_0
    .packed-switch 0xf001
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 977
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 294
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreate(Landroid/os/Bundle;)V

    .line 296
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

    .line 301
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->setFontSize(Landroid/content/Context;)V

    .line 302
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFontSize:I

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->createWakeLock(Landroid/content/Context;)V

    .line 307
    invoke-static {}, Landroid/app/SyncConfig;->isMyCommunityeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/htc/util/contacts/TMOClient;->getInstance(Landroid/content/Context;Z)Lcom/htc/util/contacts/TMOClient;

    .line 311
    :cond_2
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/syncml/service/ISyncMLService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 314
    .local v1, result:Z
    const-string v2, "BrowseContactsAllActivity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind ISyncMLService result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-nez v1, :cond_3

    .line 316
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->unbindService(Landroid/content/ServiceConnection;)V

    .line 317
    const-string v2, "BrowseContactsAllActivity2"

    const-string v3, "unbindService..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v1           #result:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->initBroadcastReceiver()V

    .line 323
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSIMMaxAlphaTagLength()V

    .line 325
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPrefs:Landroid/content/SharedPreferences;

    .line 329
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setTitleBar()V

    .line 333
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setListViewListener()V

    .line 337
    invoke-static {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->isFirstTimeLaunch(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 338
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 339
    :cond_4
    const-string v2, "BrowseContactsAllActivity2"

    const-string v3, "start activity with intent android.intent.action.IMPORT_SIM_TO_MYPHONEBOOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.IMPORT_SIM_TO_MYPHONEBOOK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, importIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 344
    .end local v0           #importIntent:Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 919
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v5, v0

    .line 921
    .local v5, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v9, v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v9, v9, Lcom/htc/widget/HtcListView;

    if-eqz v9, :cond_0

    .line 922
    iget-object v9, v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v9, Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x2080700

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :cond_0
    iget v6, v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 931
    .local v6, itemPos:I
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 933
    .local v7, obj:Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string v9, "MyProfile"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 934
    invoke-static {p1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->setupContextMenuForHeader(Landroid/view/ContextMenu;)V

    .line 935
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    .line 936
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    instance-of v9, v9, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    if-eqz v9, :cond_1

    .line 940
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    check-cast v9, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getProfileLookupUri()Landroid/net/Uri;

    move-result-object v8

    .line 941
    .local v8, profileLookupUri:Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 942
    iget-object v9, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mContextMenuBundle:Landroid/os/Bundle;

    const-string v10, "LookUpUri"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v5           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v6           #itemPos:I
    .end local v7           #obj:Ljava/lang/Object;
    .end local v8           #profileLookupUri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v4

    .line 927
    .local v4, e:Ljava/lang/ClassCastException;
    const-string v9, "BrowseContactsAllActivity2"

    const-string v10, "bad menuInfo"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 944
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v5       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v6       #itemPos:I
    .restart local v7       #obj:Ljava/lang/Object;
    .restart local v8       #profileLookupUri:Landroid/net/Uri;
    :cond_2
    const-string v9, "BrowseContactsAllActivity2"

    const-string v10, "onCreateContextMenu profileLookupUri NULL!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    .end local v8           #profileLookupUri:Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 951
    instance-of v9, v7, Landroid/database/Cursor;

    if-eqz v9, :cond_1

    .line 952
    const/4 v1, 0x0

    .local v1, accountType:Ljava/lang/String;
    move-object v3, v7

    .line 953
    check-cast v3, Landroid/database/Cursor;

    .line 954
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 955
    .local v2, curPos:I
    if-eqz v3, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v9

    sub-int/2addr v2, v9

    .line 957
    iget-object v9, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getCount()I

    move-result v9

    if-gt v2, v9, :cond_1

    if-ltz v2, :cond_1

    .line 961
    :try_start_1
    const-string v9, "ext_account_Type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 962
    :catch_1
    move-exception v4

    .line 963
    .local v4, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1407
    sparse-switch p1, :sswitch_data_0

    .line 1436
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1413
    :sswitch_0
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/AccountSelectionUtil;->getSelectAccountDialogWithoutSim(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1418
    :sswitch_1
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1422
    :sswitch_2
    const v2, 0x7f0a0128

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, displayStr:Ljava/lang/String;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1424
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1425
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1426
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 1430
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    .end local v1           #displayStr:Ljava/lang/String;
    :sswitch_3
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->createDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1407
    :sswitch_data_0
    .sparse-switch
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_3
        0x7f0a028b -> :sswitch_0
        0x7f0a028c -> :sswitch_0
        0x7f0a028d -> :sswitch_0
        0x7f0a0291 -> :sswitch_0
        0x7f0a0292 -> :sswitch_0
        0x7f0a0293 -> :sswitch_1
        0x7f0a0294 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x7

    const/16 v8, 0xda

    const/16 v7, 0x10

    const v6, 0x2080a68

    const/4 v5, 0x0

    .line 984
    const/4 v1, 0x2

    const v2, 0x7f0a0108

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x208031d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 990
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isBackupAssistantEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_menu_backup_assistant"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 993
    .local v0, resId:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_d

    .line 994
    const v1, 0x7f0a0313

    invoke-interface {p1, v5, v9, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1003
    .end local v0           #resId:I
    :cond_0
    :goto_1
    const/4 v1, 0x3

    const v2, 0x7f0a01f7

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080336

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1005
    const/4 v1, 0x4

    const v2, 0x7f0a013d

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080323

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1009
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v8, :cond_1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1013
    :cond_1
    const/16 v1, 0x17

    const v2, 0x7f0a03e5

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020016

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1025
    :goto_2
    const-wide/high16 v1, 0x4008

    invoke-static {v1, v2}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1026
    const/16 v1, 0xf

    const v2, 0x7f0a03ac

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a75

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1034
    :goto_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v8, :cond_3

    .line 1036
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1037
    const/16 v1, 0x8

    const v2, 0x7f0a0286

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1042
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_13

    .line 1043
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1044
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1045
    const v1, 0x7f0a03be

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1058
    :cond_4
    :goto_4
    const/16 v1, 0x16

    const v2, 0x7f0a03da

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809fc

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1061
    const/16 v1, 0x18

    const v2, 0x7f0a03cb

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080323

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1064
    sget-boolean v1, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v1, :cond_5

    .line 1065
    const/16 v1, 0x9

    const v2, 0x7f0a02f8

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809dc

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1069
    :cond_5
    sget-boolean v1, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v1, :cond_6

    .line 1070
    const/16 v1, 0xd

    const v2, 0x7f0a0353

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a1c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1074
    :cond_6
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    .line 1076
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_menu_link"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1077
    .restart local v0       #resId:I
    const/16 v1, 0xa

    const v2, 0x7f0a0316

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_14

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1083
    .end local v0           #resId:I
    :cond_7
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1084
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->isAABSettingExists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1085
    const/16 v1, 0xe

    const v2, 0x7f0a02c4

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020031

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1090
    :cond_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v8, :cond_9

    .line 1091
    const/16 v1, 0x14

    const v2, 0x7f0a03c6

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020030

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1094
    :cond_9
    const/16 v1, 0x15

    const v2, 0x7f0a03c7

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a16

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1097
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1101
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-eq v1, v2, :cond_a

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_a

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v8, :cond_a

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1105
    :cond_a
    const/4 v1, 0x5

    const v2, 0x7f0a02c3

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1108
    :cond_b
    const/4 v1, 0x1

    return v1

    .line 994
    .restart local v0       #resId:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 997
    :cond_d
    const v1, 0x7f0a0312

    invoke-interface {p1, v5, v9, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6

    .line 1016
    .end local v0           #resId:I
    :cond_f
    const/4 v1, 0x5

    const v2, 0x7f0a02c3

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1029
    :cond_10
    const/16 v1, 0xc

    const v2, 0x7f0a0139

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080333

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1046
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1047
    const v1, 0x7f0a03bf

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1049
    :cond_12
    const v1, 0x7f0a03bc

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1052
    :cond_13
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v9, :cond_4

    .line 1053
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1054
    const v1, 0x7f0a03bf

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1077
    .restart local v0       #resId:I
    :cond_14
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onDestroy()V

    .line 511
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mWeakAsyncTaskManage:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 512
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mManagedDialog:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 513
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 518
    .end local v0           #d:Landroid/app/Dialog;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v2, :cond_2

    .line 519
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 522
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v2, :cond_3

    .line 523
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->unbindService(Landroid/content/ServiceConnection;)V

    .line 524
    const-string v2, "BrowseContactsAllActivity2"

    const-string v3, "unbindService..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    .line 527
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 528
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 529
    iput-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 531
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->unregisterBroadcastReceiver()V

    .line 533
    invoke-static {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->clearActivityRef(Landroid/app/Activity;)V

    .line 534
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarDropDown;->isShown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 535
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 538
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    if-eqz v2, :cond_6

    .line 539
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->clearMessage()V

    .line 541
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 542
    return-void
.end method

.method protected onFilterComplete(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 3369
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    if-eqz v0, :cond_0

    .line 3370
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3372
    :cond_0
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1441
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1442
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 1524
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :goto_0
    return-void

    .line 1446
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_0
    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1453
    .local v7, itemObject:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->pauseIndicator()V

    .line 1455
    if-eqz v7, :cond_1

    const-string v9, "MyProfile"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1456
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getMyContactCardIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1461
    :cond_1
    instance-of v9, v0, Lcom/android/htccontacts/widget/GroupListAdapter;

    if-eqz v9, :cond_a

    .line 1462
    check-cast v0, Lcom/android/htccontacts/widget/GroupListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/widget/GroupListAdapter;->getAdapterForPosition(I)Landroid/widget/BaseAdapter;

    move-result-object v1

    .line 1463
    .local v1, baseAdapter:Landroid/widget/BaseAdapter;
    if-eqz v1, :cond_a

    .line 1464
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1465
    .local v6, item:Ljava/lang/Object;
    instance-of v9, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v9, :cond_a

    instance-of v9, v6, Landroid/database/Cursor;

    if-eqz v9, :cond_a

    move-object v3, v1

    .line 1466
    check-cast v3, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .local v3, contactAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    move-object v2, v6

    .line 1467
    check-cast v2, Landroid/database/Cursor;

    .line 1468
    .local v2, c:Landroid/database/Cursor;
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isMyContactItem(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1470
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getMyContactCardIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1472
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1474
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v8

    .line 1475
    .local v8, uri:Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "account_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.anddroid.contacts.sim"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1478
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsUtils;->getOpenContactDetailIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1485
    .end local v8           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v8

    .line 1486
    .restart local v8       #uri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsUtils;->getOpenContactDetailIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 1487
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "info_category"

    const v10, 0x7f0a00ef

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const-string v9, "photo_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1489
    .local v4, index:I
    if-ltz v4, :cond_4

    .line 1490
    const-string v9, "info_thumbnail_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1492
    :cond_4
    const-string v9, "display_name"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1493
    if-ltz v4, :cond_5

    .line 1494
    const-string v9, "info_display_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    :cond_5
    const-string v9, "lookup"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1497
    if-ltz v4, :cond_6

    .line 1498
    const-string v9, "info_lookup_key"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    :cond_6
    const-string v9, "contact_presence"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1501
    if-ltz v4, :cond_7

    .line 1502
    const-string v9, "info_presence"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    :cond_7
    const-string v9, "contact_chat_capability"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1505
    if-ltz v4, :cond_8

    .line 1506
    const-string v9, "info_chat_capability"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1508
    :cond_8
    const-string v9, "ext_account_Type"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1509
    if-ltz v4, :cond_9

    .line 1510
    const-string v9, "info_account_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1522
    .end local v1           #baseAdapter:Landroid/widget/BaseAdapter;
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #contactAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .end local v4           #index:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #item:Ljava/lang/Object;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_a
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/ContactListSearchPicker;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 1199
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1379
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1201
    :sswitch_0
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Add contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->doAddContact()V

    .line 1210
    const/4 v0, 0x1

    goto :goto_0

    .line 1212
    :sswitch_1
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]View settings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->doViewDisplayOption()V

    .line 1214
    const/4 v0, 0x1

    goto :goto_0

    .line 1216
    :sswitch_2
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Delete contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->deleteContacts()V

    .line 1218
    const/4 v0, 0x1

    goto :goto_0

    .line 1220
    :sswitch_3
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Save to SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveContactsSIMToSIM()V

    .line 1222
    const/4 v0, 0x1

    goto :goto_0

    .line 1224
    :sswitch_4
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->showSIMCapacity()V

    .line 1225
    const/4 v0, 0x1

    goto :goto_0

    .line 1227
    :sswitch_5
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Import/export contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->displayImportExportDialog()V

    .line 1229
    const/4 v0, 0x1

    goto :goto_0

    .line 1233
    :sswitch_6
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Company directory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->checkExchangeReady(Landroid/content/Context;)Z

    move-result v10

    .line 1238
    .local v10, hasExchange:Z
    if-eqz v10, :cond_0

    .line 1239
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v12, intent:Landroid/content/Intent;
    const-string v0, "com.android.htccontacts"

    const-string v1, "com.android.htccontacts.HtcCompanyDirectoryPicker"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1248
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1243
    .end local v12           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.easclient.ExchangeSvrSetting"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1251
    .end local v10           #hasExchange:Z
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_7
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Att address book"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1253
    .local v6, aab_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->isAABSettingExists()Z

    move-result v13

    .line 1255
    .local v13, isAABEnabled:Z
    if-eqz v13, :cond_1

    .line 1256
    const-string v0, "android.settings.MYRIAD_SYNCML_SETTINGS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1262
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1259
    :cond_1
    const-string v0, "android.settings.SYNC_SETTINGS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1265
    .end local v6           #aab_intent:Landroid/content/Intent;
    .end local v13           #isAABEnabled:Z
    :sswitch_8
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Verizon Backup Assistant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isBackupAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1269
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.fusionone.android.sync.provider.settings/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "name=\'app.state\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1271
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1272
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1274
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.VzWBackupAssistantClient.ENTER_BA_SYNC"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v7, ba_intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1276
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1278
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1280
    .end local v7           #ba_intent:Landroid/content/Intent;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1282
    :sswitch_9
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Voda360"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1285
    new-instance v14, Landroid/content/Intent;

    const-string v0, "com.htc.VfNowplusClient.SETUP_PAGE"

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v14, vf360_intent:Landroid/content/Intent;
    invoke-virtual {p0, v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1288
    .end local v14           #vf360_intent:Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1290
    :sswitch_a
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Go to black list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1292
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v0, "com.android.htccontacts"

    const-string v1, "com.android.htccontacts.blacklist.HtcEnterBlacklistPwActivity"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1295
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1299
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_b
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Go to manage call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1301
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v0, "com.android.htccontacts"

    const-string v1, "com.android.htccontacts.blacklist.HtcManageCallsTabActivity"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1304
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_c
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]View linkced contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v0, "com.android.htccontacts"

    const-string v1, "com.android.htccontacts.link.DisplayLinkedActivity"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1313
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1318
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_d
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Search contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->onSearchRequested()Z

    .line 1320
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1324
    :sswitch_e
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Send contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sendMultipleContacts()V

    .line 1327
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1333
    :sswitch_f
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1334
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v0, "com.mogenesis.product.pim"

    const-string v1, "com.mogenesis.product.pim.pim"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    .end local v12           #intent:Landroid/content/Intent;
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1337
    :catch_0
    move-exception v9

    .line 1338
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "onOptionsItemSelected"

    const-string v1, "MENU_PIM"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1344
    .end local v9           #e:Ljava/lang/Exception;
    :sswitch_10
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[BrowseContactsAllActivity2]Test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :sswitch_11
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getHelpIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1356
    .restart local v12       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1357
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1361
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_12
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.android.contacts.move_contacts"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1362
    .restart local v12       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v12}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1364
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1367
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_13
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->createFontSizeDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1368
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1372
    :sswitch_14
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1373
    .local v11, i:Landroid/content/Intent;
    const-string v0, "com.android.contacts.de_duplicate_contacts"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1375
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1199
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_8
        0x8 -> :sswitch_3
        0x9 -> :sswitch_a
        0xa -> :sswitch_c
        0xb -> :sswitch_9
        0xc -> :sswitch_d
        0xd -> :sswitch_b
        0xe -> :sswitch_7
        0xf -> :sswitch_e
        0x10 -> :sswitch_4
        0x14 -> :sswitch_f
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x17 -> :sswitch_13
        0x18 -> :sswitch_14
        0x64 -> :sswitch_10
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 482
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onPause()V

    .line 484
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->resumeSocialNetworkSync()V

    .line 486
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    .line 1114
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isBackupAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.fusionone.android.sync.provider.settings/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "name=\'app.state\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1117
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 1118
    const-string v0, "BrowseContactsAllActivity2"

    const-string v1, "onPrepareOptionsMenu fusionone provider cursor ==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1123
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1124
    .local v9, index:I
    if-ltz v9, :cond_1

    .line 1125
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1127
    .local v6, app_state:I
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_5

    .line 1128
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    const v10, 0x7f0a0314

    .line 1131
    .local v10, string_id:I
    :goto_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    .end local v6           #app_state:I
    .end local v9           #index:I
    .end local v10           #string_id:I
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1140
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1142
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1153
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "com.vodafone.people"

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/Vodafone360Util;->is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 1155
    .local v7, bLogin:Z
    if-eqz v7, :cond_8

    .line 1157
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1170
    .end local v7           #bLogin:Z
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1171
    const/16 v0, 0x15

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 1184
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 1128
    .restart local v6       #app_state:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #index:I
    :cond_4
    const v10, 0x7f0a0313

    goto :goto_0

    .line 1130
    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    const v10, 0x7f0a0314

    .restart local v10       #string_id:I
    :goto_3
    goto :goto_0

    .end local v10           #string_id:I
    :cond_6
    const v10, 0x7f0a0312

    goto :goto_3

    .line 1135
    .end local v6           #app_state:I
    .end local v9           #index:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 1160
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #bLogin:Z
    :cond_8
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0315

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1165
    .end local v7           #bLogin:Z
    :cond_9
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1173
    :cond_a
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    goto :goto_2
.end method

.method protected onQueryAndAdapterFinish(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 3359
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    .line 3360
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z

    if-eqz v0, :cond_0

    .line 3361
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3363
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->prepareSourceInstance()V

    .line 3364
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 433
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->pauseSocialNetworkSync()V

    .line 436
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x17

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xda

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v0

    .line 441
    .local v0, fontSize:I
    iget v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFontSize:I

    if-eq v4, v0, :cond_1

    .line 442
    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFontSize:I

    .line 443
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 444
    .local v2, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->updateResource()V

    .line 445
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->resetEmptyView()V

    .line 446
    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;

    .line 447
    iget-object v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v4, :cond_1

    .line 448
    iget-object v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 453
    .end local v0           #fontSize:I
    .end local v2           #mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    :cond_1
    iput-boolean v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    .line 455
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;

    .line 456
    .local v3, parent:Lcom/android/htccontacts/BrowseLayerCarouselActivity;
    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;

    if-eqz v4, :cond_2

    .line 457
    invoke-virtual {v3}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getHasOnNewIntentAndReset()Z

    move-result v1

    .line 458
    .local v1, hasOnNewIntent:Z
    if-eqz v1, :cond_2

    .line 459
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsIMESearchEnabled:Z

    .line 460
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->clearFilterText()V

    .line 461
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsIMESearchEnabled:Z

    .line 465
    .end local v1           #hasOnNewIntent:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->loadPrefs()V

    .line 466
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setAccountInfoTitle(Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)V

    .line 469
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onResume()V

    .line 472
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->checkifDisplaySelectContactAccount()V

    .line 478
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 3955
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarDropDown;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3956
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 3958
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 3959
    .local v0, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setDropDownListAdapter(Ljava/util/ArrayList;)V

    .line 3961
    .end local v0           #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v1           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onStart()V

    .line 493
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mWeakAsyncTaskManage:Ljava/util/HashMap;

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/WeakAsyncTask;

    .line 494
    .local v1, task:Lcom/android/htccontacts/util/WeakAsyncTask;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;

    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {v1}, Lcom/android/htccontacts/util/WeakAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 496
    .local v0, status:Landroid/os/AsyncTask$Status;
    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v0, :cond_0

    .line 497
    check-cast v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;

    .end local v1           #task:Lcom/android/htccontacts/util/WeakAsyncTask;
    invoke-virtual {v1, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->reInitProgressDialog(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    .line 500
    .end local v0           #status:Landroid/os/AsyncTask$Status;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 504
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onStop()V

    .line 505
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->cleanManagedDialog()V

    .line 506
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 3727
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onWindowFocusChanged(Z)V

    .line 3729
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3730
    if-eqz p1, :cond_3

    .line 3731
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mInputEditorFocusedInForeground:Z

    if-eqz v0, :cond_0

    .line 3735
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIsShowDropDown:Z

    if-eqz v0, :cond_2

    .line 3736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIsShowDropDown:Z

    .line 3737
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->saveChangeValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3738
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->showProgressDialog()V

    .line 3760
    :cond_1
    :goto_0
    return-void

    .line 3742
    :cond_2
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mInputEditorFocusedWhenWindowFocusLoss:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 3743
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3749
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mInputEditorFocusedWhenWindowFocusLoss:Z

    .line 3751
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mInputEditorFocusedInForeground:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3752
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3755
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mIsShowDropDown:Z

    goto :goto_0
.end method

.method public pauseSocialNetworkSync()V
    .locals 2

    .prologue
    .line 3435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_SOCIAL_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3436
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 3437
    return-void
.end method

.method protected refineToGruopAdapterPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3628
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->refineToGruopAdapterPosition(I)I

    move-result v0

    return v0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 3395
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3396
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3402
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3404
    :cond_0
    monitor-exit v1

    .line 3405
    return-void

    .line 3404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeSocialNetworkSync()V
    .locals 2

    .prologue
    .line 3441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_SOCIAL_GO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3442
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 3443
    return-void
.end method

.method protected varargs runAyncTask(I[Ljava/lang/Object;)Z
    .locals 11
    .parameter "request"
    .parameter "params"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2720
    const/4 v5, 0x0

    .line 2721
    .local v5, task:Lcom/android/htccontacts/util/WeakAsyncTask;
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mWeakAsyncTaskManage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #task:Lcom/android/htccontacts/util/WeakAsyncTask;
    check-cast v5, Lcom/android/htccontacts/util/WeakAsyncTask;

    .line 2722
    .restart local v5       #task:Lcom/android/htccontacts/util/WeakAsyncTask;
    const/4 v3, 0x0

    .line 2723
    .local v3, result:Z
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/htccontacts/util/WeakAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v6, v7, :cond_2

    .line 2724
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2760
    :cond_1
    :goto_0
    return v3

    .line 2727
    :pswitch_0
    if-eqz p2, :cond_1

    array-length v6, p2

    if-eqz v6, :cond_1

    .line 2728
    aget-object v6, p2, v8

    instance-of v6, v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 2732
    aget-object v6, p2, v9

    check-cast v6, [Z

    move-object v1, v6

    check-cast v1, [Z

    .line 2734
    .local v1, isSimArray:[Z
    aget-object v2, p2, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 2735
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v0, p0, v6}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V

    .line 2736
    .local v0, deleteTask:Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mWeakAsyncTaskManage:Ljava/util/HashMap;

    const/16 v7, 0xf1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2737
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2738
    const/4 v3, 0x1

    .line 2739
    goto :goto_0

    .line 2741
    .end local v0           #deleteTask:Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;
    .end local v1           #isSimArray:[Z
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    if-eqz p2, :cond_1

    array-length v6, p2

    if-eqz v6, :cond_1

    .line 2744
    aget-object v6, p2, v8

    instance-of v6, v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 2747
    aget-object v6, p2, v9

    check-cast v6, [Z

    move-object v1, v6

    check-cast v1, [Z

    .line 2749
    .restart local v1       #isSimArray:[Z
    aget-object v2, p2, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 2750
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, p0, v6}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V

    .line 2751
    .local v4, saveTask:Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mWeakAsyncTaskManage:Ljava/util/HashMap;

    const/16 v7, 0xf2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2753
    const/4 v3, 0x1

    goto :goto_0

    .line 2757
    .end local v1           #isSimArray:[Z
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #saveTask:Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;
    :cond_2
    invoke-virtual {v5}, Lcom/android/htccontacts/util/WeakAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/android/htccontacts/util/WeakAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v6, v7, :cond_1

    .line 2758
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 2724
    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setAccountInfoTitle(Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)V
    .locals 6
    .parameter "mAccountInfo"

    .prologue
    .line 762
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const-string v1, ""

    .line 766
    .local v1, displayLabel:Ljava/lang/CharSequence;
    iget-object v3, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    const-string v4, "com.htc.contacts.default.allcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 778
    :goto_1
    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 779
    .local v2, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    .end local v2           #mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v4, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    .line 775
    .local v0, accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public setContactsItemListAdapterCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1648
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1650
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mHasFirstQueryCompleted:Z

    if-ne v3, v4, :cond_1

    .line 1652
    const v3, 0x20201ba

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/Title1;

    .line 1653
    .local v2, title:Lcom/htc/widget/Title1;
    if-eqz v2, :cond_1

    .line 1655
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, text:Ljava/lang/String;
    const v3, 0x2020053

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1657
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 1658
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1660
    :cond_0
    const v3, 0x2020054

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #textView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1661
    .restart local v1       #textView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 1662
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1666
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #textView:Landroid/widget/TextView;
    .end local v2           #title:Lcom/htc/widget/Title1;
    :cond_1
    return-void
.end method

.method protected setDropDownAction(Lcom/htc/widget/HeaderBarDropDown;)V
    .locals 2
    .parameter "headerBarDropDown"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    .line 363
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$3;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-void
.end method

.method protected setDropDownListAdapter(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const/4 v2, 0x1

    .line 853
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    .line 855
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayViewHandler:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->setOnDataBaseActionHandler(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;)V

    .line 856
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iput-boolean v2, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    .line 857
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->queryAllAccountData(Ljava/util/ArrayList;)V

    .line 867
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iput-boolean v2, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    .line 860
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected setListViewListener()V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 376
    .local v0, listView:Lcom/htc/widget/HtcListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 378
    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$4;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$4;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 393
    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$5;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$5;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 411
    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$6;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$6;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 429
    return-void
.end method

.method public setSelectedAccountToDefault()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    const-string v1, "com.htc.contacts.default.allcontacts"

    iput-object v1, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    const-string v1, "All Contacts"

    iput-object v1, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    .line 739
    return-void
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 348
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 349
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar(I)V

    .line 351
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(I)V

    .line 352
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getHeaderImage()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/BrowseContactsAllActivity2$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$2;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getHeaderDropDown()Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setDropDownAction(Lcom/htc/widget/HeaderBarDropDown;)V

    .line 359
    return-void
.end method

.method protected shouldEnableCompanyDirectorySearch()Z
    .locals 1

    .prologue
    .line 3624
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldEnableContextMenu()Z
    .locals 1

    .prologue
    .line 3619
    const/4 v0, 0x1

    return v0
.end method

.method protected startQuery()V
    .locals 15

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 581
    sget-object v4, Lcom/android/htccontacts/BrowseContactsAllActivity2;->CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    .line 582
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getUriToQuery()Landroid/net/Uri;

    move-result-object v8

    .line 585
    .local v8, uri:Landroid/net/Uri;
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 588
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 590
    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    if-ne v0, v1, :cond_2

    .line 591
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 592
    const/4 v14, 0x0

    .line 603
    .local v14, isCursorPreloaded:Z
    if-nez v14, :cond_1

    .line 605
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 607
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .end local v3           #queryUri:Landroid/net/Uri;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsFirstQuery:Z

    .line 641
    .end local v14           #isCursorPreloaded:Z
    :goto_1
    return-void

    .line 611
    .restart local v14       #isCursorPreloaded:Z
    :cond_1
    invoke-static {v8}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 612
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 613
    iget-object v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContactSelection()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v4

    invoke-virtual/range {v5 .. v12}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    .end local v14           #isCursorPreloaded:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getFilterText()Ljava/lang/String;

    move-result-object v13

    .line 621
    .local v13, filter:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 622
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 624
    :cond_3
    invoke-static {v8}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 625
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 626
    iget-object v5, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContactSelection()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v4

    invoke-virtual/range {v5 .. v12}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected updateCurrentAccount(Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)V
    .locals 2
    .parameter "mAccount"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v1, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v1, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    const-string v1, "com.htc.contacts.default.allcontacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountName:Ljava/lang/String;

    const-string v1, "All Contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    .line 844
    :goto_0
    const-string v0, "Display contacts filter by account"

    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->updatePrefs(Ljava/lang/String;Z)V

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setAccountInfoTitle(Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)V

    .line 846
    return-void

    .line 842
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mContactAccountFilterFlag:Z

    goto :goto_0
.end method
