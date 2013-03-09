.class public final Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;,
        Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;
    }
.end annotation


# static fields
.field private static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field private static final DEBUG:Z = false

.field private static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field static final HANDLER_EVENT_BASE:I = 0x5000

.field static final HANDLER_EVENT_DISMISS_PROGRESS_BAR:I = 0x5006

.field static final HANDLER_EVENT_NETWORK_QUERY_500ERROR:I = 0x5001

.field static final HANDLER_EVENT_NETWORK_QUERY_SYSTEMERROR:I = 0x5002

.field static final HANDLER_EVENT_RESETUP_VIEW:I = 0x5003

.field static final HANDLER_EVENT_SHOW_PROGRESS_BAR:I = 0x5005

.field static final HANDLER_EVENT_TEXT_WATCHER_DO_NETWORK_QUERY:I = 0x5004

.field static final HANDLER_SHOW_CHOICE_ACCOUNT_DIALOG:I = 0x5007

.field private static final TAG:Ljava/lang/String; = "HtcCompanyDirectoryPicker"

.field private static mResultReceiver:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;


# instance fields
.field private final TITLE_ERROR:I

.field private buttonSearchWatcher:Landroid/text/TextWatcher;

.field private mChoiceAccountDialog:Landroid/app/Dialog;

.field private mChoosedAccount:Landroid/accounts/Account;

.field private mColleageAdapter:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;

.field private mColleageContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

.field private mEASSvcConn:Landroid/content/ServiceConnection;

.field private mExchangeAccounts:[Landroid/accounts/Account;

.field protected mFilterText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mInflaterService:Landroid/view/LayoutInflater;

.field private volatile mIsDestroy:Z

.field private mIsResultMode:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mNetWorkSearcher:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

.field protected mSearchClickListener:Landroid/view/View$OnClickListener;

.field private mSearchKey:Ljava/lang/String;

.field private mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

.field private mStatus:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

.field private noContactFoundResTextId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageContactList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetWorkButtonQueryTextWatcher;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->buttonSearchWatcher:Landroid/text/TextWatcher;

    .line 104
    const v0, 0x7f0a0223

    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->TITLE_ERROR:I

    .line 118
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvcConn:Landroid/content/ServiceConnection;

    .line 393
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    .line 741
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchClickListener:Landroid/view/View$OnClickListener;

    .line 994
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Lcom/htc/android/pim/eas/IEASSvc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Lcom/htc/android/pim/eas/IEASSvc;)Lcom/htc/android/pim/eas/IEASSvc;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mStatus:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->showMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;)Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mStatus:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->runNetworkQuery(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->createAccountSelectionDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/widget/AlphabetIndexer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/widget/AlphabetIndexer;)Landroid/widget/AlphabetIndexer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mInflaterService:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->refreshCompanyDirectoryList(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->query(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mResultReceiver:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mResultReceiver:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsResultMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->startNetworkSearchProcedure(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private checkUserInput()I
    .locals 3

    .prologue
    .line 781
    iget-boolean v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsResultMode:Z

    if-eqz v2, :cond_2

    .line 783
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 784
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 785
    const-string v2, "intent_extra_data_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, searchKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    iput-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    .line 791
    .end local v1           #searchKey:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    .line 799
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    sget v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_USER_INPUT_EMPTY:I

    .line 802
    :goto_1
    return v2

    .line 796
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    goto :goto_0

    .line 802
    :cond_3
    sget v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->STATUS_OK:I

    goto :goto_1
.end method

.method private createAccountSelectionDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 1062
    const/4 v3, 0x0

    .line 1063
    .local v3, d:Landroid/app/Dialog;
    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    if-eqz v7, :cond_2

    .line 1064
    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    array-length v5, v7

    .line 1065
    .local v5, len:I
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 1066
    .local v1, array:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1067
    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    aget-object v0, v7, v4

    .line 1068
    .local v0, acc:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1069
    const-string v7, ""

    aput-object v7, v1, v4

    .line 1066
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v1, v4

    goto :goto_1

    .line 1076
    .end local v0           #acc:Landroid/accounts/Account;
    :cond_1
    new-instance v6, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    .line 1086
    .local v6, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1087
    .local v2, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v2, v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 1088
    const v7, 0x7f0a035d

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 1089
    new-instance v7, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$8;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$8;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1096
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 1098
    .end local v1           #array:[Ljava/lang/CharSequence;
    .end local v2           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    return-object v3
.end method

.method private dismissSearchProgressDialog()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 827
    :cond_0
    return-void
.end method

.method private displayProgress(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 778
    return-void
.end method

.method public static generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"
    .parameter "key"

    .prologue
    .line 832
    sget-object v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    sget-object v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, p1, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getColleageResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/ArrayList;
    .locals 1
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    .line 488
    .local v0, myDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    return-object v0
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 974
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->BACKGROUND_SPAN_COLOR:I

    .line 975
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 976
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->FOREGROUND_SPAN_COLOR:I

    .line 977
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 978
    return-void
.end method

.method private query(Landroid/accounts/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    if-eqz v2, :cond_3

    .line 616
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/android/pim/eas/IEASSvc;->searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    .line 622
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v2, v2, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 623
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z

    if-nez v2, :cond_0

    .line 637
    new-instance v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    .line 645
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 626
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5002

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcCompanyDirectoryPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: Search:\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshCompanyDirectoryList(Z)V
    .locals 5
    .parameter "queryResult"

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, keys:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 447
    .local v2, views:[I
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    invoke-direct {p0, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getColleageResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    .local v0, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .restart local v0       #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :cond_0
    if-nez p1, :cond_3

    .line 454
    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 464
    :goto_1
    if-eqz p1, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->dismissSearchProgressDialog()V

    .line 468
    :cond_1
    new-instance v3, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;

    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageAdapter:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;

    .line 469
    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageAdapter:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    return-void

    .line 447
    .end local v0           #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 460
    .restart local v0       #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 461
    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageContactList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private runNetworkQuery(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mNetWorkSearcher:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mNetWorkSearcher:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mStatus:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->checkUserInput()I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->Code:I

    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->STATUS_OK:I

    if-ne v1, v0, :cond_0

    .line 593
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->displayProgress(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mNetWorkSearcher:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    if-nez v0, :cond_2

    .line 597
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mNetWorkSearcher:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mNetWorkSearcher:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->requestSearch(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method private showMessage(ILjava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 807
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a014f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 812
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->manageDialog(Landroid/app/Dialog;)V

    .line 813
    return-void
.end method

.method private showSearchProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 816
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 817
    const v1, 0x7f0a0224

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 820
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startNetworkSearchProcedure(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    const/16 v2, 0x5004

    .line 753
    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->checkUserInput()I

    .line 754
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setListLoading()V

    .line 756
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->refreshCompanyDirectoryList(Z)V

    .line 767
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->showSearchProgressDialog()V

    .line 764
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 765
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 766
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method checkDataConnectionStatus()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1028
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1029
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1030
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1032
    .local v3, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1033
    .local v2, mobileOn:Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 1034
    .local v4, wifiOn:Z
    if-eq v2, v6, :cond_0

    if-eq v4, v6, :cond_0

    .line 1038
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public launchIME(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 840
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 845
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 847
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    sget-object v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mResultReceiver:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 851
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 181
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->requestWindowFeature(I)Z

    .line 183
    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->requestWindowFeature(I)Z

    .line 184
    const v6, 0x7f030020

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setContentView(I)V

    .line 185
    iput-boolean v10, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z

    .line 188
    const v6, 0x7f07001e

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 189
    .local v3, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v3, :cond_0

    .line 190
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 191
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    .line 192
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 193
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    const v7, 0x7f0a039d

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderSearchButton()Lcom/htc/widget/HeaderBarImage;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->initSpanColor()V

    .line 200
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 204
    const-string v6, "com.htc.intent.ACTION_SEARCH_COMPANY_DIRECTORY_RESULT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    const-string v6, "intent_extra_data_key"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, searchKey:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 207
    iput-boolean v9, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsResultMode:Z

    .line 213
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #searchKey:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    const/16 v7, 0xb1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 215
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 216
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 220
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 222
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 224
    new-instance v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$2;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    .line 232
    .local v2, linstener:Landroid/view/View$OnFocusChangeListener;
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 233
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->buttonSearchWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v7, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$3;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$3;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.android.mail.eassvc.EASAppSvc.bind"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 255
    const-string v6, "HtcCompanyDirectoryPicker"

    const-string v7, "Fail to bind EAS AppSvc!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mInflaterService:Landroid/view/LayoutInflater;

    .line 268
    const v6, 0x7f0a0225

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setEmptyText(I)V

    .line 269
    const v6, 0x7f0a0224

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setLoadingText(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setListEmpty()V

    .line 275
    iget-boolean v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsResultMode:Z

    if-eqz v6, :cond_6

    .line 276
    if-eqz v3, :cond_4

    .line 277
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 279
    :cond_4
    const v6, 0x7f070016

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 280
    .local v5, titleBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    if-eqz v5, :cond_5

    .line 281
    invoke-virtual {v5, v9}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 282
    invoke-virtual {v5, v10}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setVisibility(I)V

    .line 284
    :cond_5
    const v6, 0x7f0a0221

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->setGenericTitleBar(I)V

    .line 286
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 288
    .end local v5           #titleBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    :cond_6
    return-void
.end method

.method protected final onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z

    .line 327
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvcConn:Landroid/content/ServiceConnection;

    .line 333
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5004

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5002

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 351
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 353
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v2, v4}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 360
    :cond_3
    return-void

    .line 335
    .end local v1           #listView:Lcom/htc/widget/HtcListView;
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcCompanyDirectoryPicker"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, elements:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageContactList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 369
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mColleageContactList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/android/pim/eas/EASGalElement;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 374
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.htccontacts"

    const-string v5, "com.android.htccontacts.HtcViewCompanyContactActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    sget-object v4, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->EXTRA_COMPANY_DIRECTORY_ELEMENT:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, accoutName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 381
    iget-object v4, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 384
    :cond_1
    if-eqz v1, :cond_2

    .line 385
    const-string v4, "account_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->startActivity(Landroid/content/Intent;)V

    .line 390
    .end local v1           #accoutName:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 370
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 316
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPostResume()V

    .line 303
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->checkDataConnectionStatus()Z

    move-result v0

    .line 304
    .local v0, networkStatus:Z
    if-nez v0, :cond_0

    .line 305
    const v1, 0x7f0a0206

    iput v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->noContactFoundResTextId:I

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    const v1, 0x7f0a0225

    iput v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->noContactFoundResTextId:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 296
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 297
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 321
    return-void
.end method
