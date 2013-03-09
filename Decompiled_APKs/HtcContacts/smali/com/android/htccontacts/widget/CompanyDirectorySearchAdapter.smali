.class public Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CompanyDirectorySearchAdapter.java"

# interfaces
.implements Lcom/android/htccontacts/widget/FilterableGroupListAdapter$FirstSelectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$CompanySearchOnAccountsUpdateListener;,
        Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;,
        Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;,
        Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;,
        Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$ErrorHandler;,
        Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EAS_ACCOUNT_TYPE:Ljava/lang/String; = "eas_accounttype"

.field private static final HANDLER_EVENT_BASE:I = 0x5000

.field private static final HANDLER_EVENT_COMPLETE_SEARCHING_NETWORK:I = 0x5009

.field private static final HANDLER_EVENT_FILTER_COMPLETE:I = 0x5004

.field private static final HANDLER_EVENT_NETWORK_PROBLEM:I = 0x5006

.field private static final HANDLER_EVENT_NETWORK_QUERY_500ERROR:I = 0x5001

.field private static final HANDLER_EVENT_NETWORK_QUERY_NO_RESULT:I = 0x5005

.field private static final HANDLER_EVENT_NETWORK_QUERY_SYSTEMERROR:I = 0x5002

.field private static final HANDLER_EVENT_START_SEARCHING_NETWORK:I = 0x5008

.field private static final HANDLER_EVENT_TEXT_WATCHER_DO_NETWORK_QUERY:I = 0x5003

.field private static final HANDLE_FILTER_COMPLETE_DELAYED_ACTION_AFTER_CHANGE_CURSOR:I = 0x5007

.field private static final TAG:Ljava/lang/String; = "CompanyDirectorySearchAdapter"

.field public static final TAG_VIEW_LOADING:Ljava/lang/String; = "LOADING"

.field public static final TAG_VIEW_SEARCH_PROMPT:Ljava/lang/String; = "SEARCH_PROMPT"

.field public static final TAG_VIEW_SUBHEADER:Ljava/lang/String; = "VIEW_TYPE_SUBHEADER"

.field public static final VIEW_TYPE_CONTENT:I = 0x2

.field public static final VIEW_TYPE_SEARCHING:I = 0x3

.field public static final VIEW_TYPE_SEARCH_PROMPT:I = 0x1

.field public static final VIEW_TYPE_SUBHEADER:I


# instance fields
.field private final TITLE_ERROR:I

.field private _SearchString:Ljava/lang/String;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mBackupSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

.field private mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

.field private mEASSvcConn:Landroid/content/ServiceConnection;

.field private mExchangeAccounts:[Landroid/accounts/Account;

.field private mHandler:Landroid/os/Handler;

.field mHasCallBindService:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCompanyAccountReady:Z

.field private mIsCompanySearchEnabled:Z

.field private mIsDestroy:Z

.field private mIsNetworkSearching:Z

.field protected mListProjection:[Ljava/lang/String;

.field private mNetworkSearcher:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

.field private mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

.field private mSearchingProgressView:Landroid/view/View;

.field private mStatus:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "layout"
    .parameter "listProjection"

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;-><init>(Landroid/app/Activity;I[Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I[Ljava/lang/String;Z)V
    .locals 6
    .parameter "activity"
    .parameter "layout"
    .parameter "listProjection"
    .parameter "isEnable"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 250
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 103
    const v0, 0x7f0a0223

    iput v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->TITLE_ERROR:I

    .line 123
    new-instance v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvcConn:Landroid/content/ServiceConnection;

    .line 247
    iput-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHasCallBindService:Z

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 252
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 254
    iput-object p3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mListProjection:[Ljava/lang/String;

    .line 255
    iput-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    .line 257
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.android.mail.eassvc.EASAppSvc.bind"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "CompanyDirectorySearchAdapter"

    const-string v3, "Failed to bind EAS AppSvc!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHasCallBindService:Z

    .line 263
    if-nez p4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanySearchEnabled:Z

    .line 264
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 265
    if-eqz p4, :cond_1

    .line 266
    new-instance v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$CompanySearchOnAccountsUpdateListener;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$CompanySearchOnAccountsUpdateListener;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 268
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v2, v5, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 271
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 263
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->showMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->startNetworkSearchProcedure(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->buildCompanyDirectoryCursor(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->query(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->runNetworkQuery(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchingProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Lcom/htc/android/pim/eas/IEASSvc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Lcom/htc/android/pim/eas/IEASSvc;)Lcom/htc/android/pim/eas/IEASSvc;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mStatus:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;)Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mStatus:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;

    return-object p1
.end method

.method private buildCompanyDirectoryCursor(Landroid/accounts/Account;)V
    .locals 9
    .parameter "account"

    .prologue
    const/16 v8, 0x5006

    const/16 v7, 0x5005

    .line 786
    const/4 v4, -0x1

    .line 787
    .local v4, searchReturnCode:I
    const/4 v5, -0x1

    .line 789
    .local v5, storeReturnCode:I
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    if-eqz v6, :cond_0

    .line 790
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v4, v6, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    .line 791
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v5, v6, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    .line 803
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    invoke-direct {p0, v6}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getColleageResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/ArrayList;

    move-result-object v2

    .line 805
    .local v2, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    if-nez v2, :cond_1

    .line 806
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .restart local v2       #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 823
    const/4 v3, 0x0

    .line 858
    .local v3, matrixCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v3

    .line 859
    move-object v0, v2

    .line 873
    .local v0, colleageDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    if-nez v3, :cond_2

    .line 874
    new-instance v3, Landroid/database/MatrixCursor;

    .end local v3           #matrixCursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mListProjection:[Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 877
    .restart local v3       #matrixCursor:Landroid/database/Cursor;
    :cond_2
    new-instance v1, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;

    invoke-direct {v1, p0, v3, v0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/accounts/Account;)V

    .line 881
    .local v1, cursorWrapper:Landroid/database/CursorWrapper;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 899
    .end local v0           #colleageDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    .end local v1           #cursorWrapper:Landroid/database/CursorWrapper;
    .end local v3           #matrixCursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-void

    .line 882
    :cond_4
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    if-eqz v6, :cond_6

    .line 883
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v6, v6, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v6, v6, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    if-lez v6, :cond_5

    .line 885
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 887
    :cond_5
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v6, v6, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v6, v6, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    if-gez v6, :cond_3

    .line 889
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 891
    :cond_6
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    if-nez v6, :cond_3

    .line 892
    if-lez v4, :cond_7

    if-lez v5, :cond_7

    .line 893
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 895
    :cond_7
    if-gez v4, :cond_3

    if-gez v5, :cond_3

    .line 896
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkUserInput()I
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->_SearchString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->_SearchString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    :cond_0
    const/4 v0, 0x6

    .line 905
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createAccountSelectionDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 11
    .parameter "searchString"

    .prologue
    .line 648
    const/4 v4, 0x0

    .line 649
    .local v4, d:Landroid/app/Dialog;
    iget-object v10, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 650
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v5, v4

    .line 680
    .end local v4           #d:Landroid/app/Dialog;
    .local v5, d:Landroid/app/Dialog;
    :goto_0
    return-object v5

    .line 653
    .end local v5           #d:Landroid/app/Dialog;
    .restart local v4       #d:Landroid/app/Dialog;
    :cond_1
    iget-object v10, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    if-eqz v10, :cond_4

    .line 654
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    .line 655
    .local v6, exchangeAccounts:[Landroid/accounts/Account;
    array-length v8, v6

    .line 656
    .local v8, len:I
    new-array v2, v8, [Ljava/lang/CharSequence;

    .line 657
    .local v2, array:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 658
    aget-object v0, v6, v7

    .line 659
    .local v0, acc:Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 660
    const-string v10, ""

    aput-object v10, v2, v7

    .line 657
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 662
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v2, v7

    goto :goto_2

    .line 666
    .end local v0           #acc:Landroid/accounts/Account;
    :cond_3
    new-instance v9, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;

    invoke-direct {v9, p0, v6, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 674
    .local v9, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 676
    .local v3, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v3, v2, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 677
    const v10, 0x7f0a035d

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 678
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .end local v2           #array:[Ljava/lang/CharSequence;
    .end local v3           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v6           #exchangeAccounts:[Landroid/accounts/Account;
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    move-object v5, v4

    .line 680
    .end local v4           #d:Landroid/app/Dialog;
    .restart local v5       #d:Landroid/app/Dialog;
    goto :goto_0
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
    .line 712
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 714
    .local v0, myDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :goto_0
    return-object v0

    .line 712
    .end local v0           #myDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    :cond_0
    iget-object v0, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 409
    if-nez p2, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 413
    const v1, 0x208066a

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 426
    const v1, 0x2020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    .local v0, label:Landroid/widget/TextView;
    const v1, 0x7f0a0220

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 429
    .end local v0           #label:Landroid/widget/TextView;
    :cond_0
    return-object p2
.end method

.method private isAddRemoveExchangeAccount(Ljava/util/ArrayList;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v9, 0x1

    .line 1171
    iget-object v7, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    .line 1172
    .local v7, originalAccount:[Landroid/accounts/Account;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v8, tempAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    if-eqz v7, :cond_6

    if-eqz p1, :cond_6

    .line 1175
    move-object v1, v7

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v1, v2

    .line 1176
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:I
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 1180
    .local v6, newAccount:Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 1181
    .local v4, isExists:Z
    move-object v1, v7

    array-length v5, v1

    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 1182
    .restart local v0       #account:Landroid/accounts/Account;
    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    iget-object v10, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v11, "com.htc.android.mail.eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1184
    const/4 v4, 0x1

    .line 1186
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_1

    .line 1192
    if-eqz v6, :cond_1

    iget-object v10, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v11, "com.htc.android.mail.eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1202
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #isExists:Z
    .end local v5           #len$:I
    .end local v6           #newAccount:Landroid/accounts/Account;
    :cond_3
    :goto_2
    return v9

    .line 1181
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #isExists:Z
    .restart local v5       #len$:I
    .restart local v6       #newAccount:Landroid/accounts/Account;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1198
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #isExists:Z
    .end local v6           #newAccount:Landroid/accounts/Account;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_3

    .line 1202
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v5           #len$:I
    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private query(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 946
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 947
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    if-eqz v3, :cond_3

    .line 958
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    if-eqz v3, :cond_0

    .line 960
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 964
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->_SearchString:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/android/pim/eas/IEASSvc;->searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    .line 978
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    iget v3, v3, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    .line 979
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x5001

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :cond_2
    :goto_1
    new-instance v2, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V

    .line 1004
    .local v2, r:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 983
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x5002

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 986
    :catch_0
    move-exception v1

    .line 987
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CompanyDirectorySearchAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: Search:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->_SearchString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runNetworkQuery(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mNetworkSearcher:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mNetworkSearcher:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->isProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mStatus:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;

    invoke-direct {p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->checkUserInput()I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;->mCode:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 924
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mNetworkSearcher:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    if-nez v1, :cond_2

    .line 926
    new-instance v1, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;-><init>(Landroid/app/Activity;Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mNetworkSearcher:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    .line 929
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mNetworkSearcher:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->requestSearch(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method private showMessage(ILjava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "message"

    .prologue
    .line 934
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 935
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 936
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a014f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 939
    .local v1, d:Landroid/app/Dialog;
    instance-of v2, v0, Lcom/android/htccontacts/app/BaseActivity;

    if-eqz v2, :cond_0

    .line 940
    check-cast v0, Lcom/android/htccontacts/app/BaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/BaseActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 943
    .end local v1           #d:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method private startNetworkSearchProcedure(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "searchString"

    .prologue
    const/16 v3, 0x5003

    .line 685
    const-string v1, ""

    .line 687
    .local v1, text:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 691
    :cond_0
    if-eqz v1, :cond_1

    .end local v1           #text:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->_SearchString:Ljava/lang/String;

    .line 701
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 704
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    return-void

    .line 691
    .end local v0           #msg:Landroid/os/Message;
    .restart local v1       #text:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method protected bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 565
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .line 569
    .local v1, tag:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    if-eqz v1, :cond_0

    .line 570
    iget-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 572
    iget-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 575
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 541
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .line 544
    .local v1, tag:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    iget-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    .line 546
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 547
    const v2, 0x2080846

    invoke-virtual {v0, v2}, Lcom/htc/widget/QuickContactBadge;->setImageResourceWithoutRelayout(I)V

    .line 562
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public checkAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9
    .parameter "accounts"

    .prologue
    .line 1205
    const/4 v4, 0x0

    .line 1207
    .local v4, isExist:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v6, newExchangeAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v1, v2

    .line 1210
    .local v0, acc:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.android.mail.eas"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1213
    const/4 v4, 0x1

    .line 1214
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1222
    .end local v0           #acc:Landroid/accounts/Account;
    :cond_1
    iget-boolean v7, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanyAccountReady:Z

    if-eq v7, v4, :cond_2

    .line 1226
    iput-boolean v4, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanyAccountReady:Z

    .line 1227
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->notifyDataSetChanged()V

    .line 1230
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->isAddRemoveExchangeAccount(Ljava/util/ArrayList;)Z

    move-result v3

    .line 1231
    .local v3, isExchangeAccountChanged:Z
    if-eqz v3, :cond_3

    .line 1232
    new-instance v7, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V

    invoke-virtual {v7}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;->start()V

    .line 1234
    :cond_3
    return-void
.end method

.method protected createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 521
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 523
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsDestroy:Z

    .line 1146
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1147
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5005

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5006

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5007

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1152
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5008

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5009

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1156
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    if-eqz v1, :cond_0

    .line 1158
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1161
    :cond_0
    iput-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    .line 1162
    iput-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvcConn:Landroid/content/ServiceConnection;

    .line 1164
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v1, :cond_1

    .line 1165
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 1167
    :cond_1
    return-void
.end method

.method public enableCompanySearch(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 1141
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanySearchEnabled:Z

    .line 1142
    return-void
.end method

.method public executeSearch(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4
    .parameter "searchString"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;

    .line 633
    .local v1, exchangeAccounts:[Landroid/accounts/Account;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 634
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {p0, v2, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->startNetworkSearchProcedure(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 640
    .end local v1           #exchangeAccounts:[Landroid/accounts/Account;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 636
    .restart local v1       #exchangeAccounts:[Landroid/accounts/Account;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->createAccountSelectionDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 637
    .local v0, d:Landroid/app/Dialog;
    goto :goto_0
.end method

.method protected generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 718
    new-instance v3, Landroid/database/MatrixCursor;

    iget-object v5, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mListProjection:[Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 719
    .local v3, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 720
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/pim/eas/EASGalElement;

    .line 721
    .local v0, element:Lcom/htc/android/pim/eas/EASGalElement;
    const/4 v1, 0x0

    .line 722
    .local v1, hasPhoneNumber:I
    iget-object v5, v0, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 724
    :cond_0
    const/4 v1, 0x1

    .line 726
    :cond_1
    const/16 v5, 0xd

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v5, v4, v11

    aput-object v9, v4, v12

    aput-object v9, v4, v13

    const/4 v5, 0x4

    const-string v6, "%d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v9, v4, v5

    const/4 v5, 0x6

    const-string v6, "eas_accounttype"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v9, v4, v5

    const/16 v5, 0x8

    iget-object v6, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "snippet"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "1"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "0"

    aput-object v6, v4, v5

    .line 749
    .local v4, tempRow:[Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 750
    const/16 v5, 0xe

    new-array v4, v5, [Ljava/lang/String;

    .end local v4           #tempRow:[Ljava/lang/String;
    const-string v5, "%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v5, v4, v11

    aput-object v9, v4, v12

    aput-object v9, v4, v13

    const/4 v5, 0x4

    const-string v6, "%d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v9, v4, v5

    const/4 v5, 0x6

    const-string v6, "eas_accounttype"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v9, v4, v5

    const/16 v5, 0x8

    iget-object v6, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, v0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "snippet"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "eas_accounttype"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "1"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "0"

    aput-object v6, v4, v5

    .line 776
    .restart local v4       #tempRow:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 781
    .end local v0           #element:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v1           #hasPhoneNumber:I
    .end local v4           #tempRow:[Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method protected generateListItemCache()Lcom/android/htccontacts/widget/BaseContactListItemCache;
    .locals 3

    .prologue
    .line 1256
    new-instance v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 350
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanySearchEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanyAccountReady:Z

    if-nez v2, :cond_1

    .line 351
    :cond_0
    const/4 v1, 0x0

    .line 366
    :goto_0
    return v1

    .line 354
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    if-nez v2, :cond_3

    .line 355
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 356
    .local v0, cursorCount:I
    const/4 v1, 0x0

    .line 357
    .local v1, newCount:I
    if-nez v0, :cond_2

    .line 359
    const/4 v1, 0x2

    goto :goto_0

    .line 362
    :cond_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 366
    .end local v0           #cursorCount:I
    .end local v1           #newCount:I
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getFirstSelectableItem([I)Z
    .locals 5
    .parameter "selectablePosition"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    array-length v3, p1

    if-ge v3, v2, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "int[] size must greater or equal than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_0
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanySearchEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanyAccountReady:Z

    if-nez v3, :cond_2

    .line 332
    :cond_1
    aput v4, p1, v1

    .line 345
    :goto_0
    return v1

    .line 335
    :cond_2
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 336
    .local v0, count:I
    if-nez v0, :cond_3

    .line 338
    aput v4, p1, v1

    goto :goto_0

    .line 343
    :cond_3
    aput v2, p1, v1

    move v1, v2

    .line 345
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 578
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    if-nez v1, :cond_3

    .line 579
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 580
    .local v0, cursorCount:I
    if-nez v0, :cond_1

    .line 581
    if-nez p1, :cond_0

    .line 582
    const-string v1, "VIEW_TYPE_SUBHEADER"

    .line 598
    .end local v0           #cursorCount:I
    :goto_0
    return-object v1

    .line 584
    .restart local v0       #cursorCount:I
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 585
    const-string v1, "SEARCH_PROMPT"

    goto :goto_0

    .line 588
    :cond_1
    if-nez p1, :cond_2

    .line 589
    const-string v1, "VIEW_TYPE_SUBHEADER"

    goto :goto_0

    .line 592
    :cond_2
    add-int/lit8 v1, p1, -0x1

    invoke-super {p0, v1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 594
    .end local v0           #cursorCount:I
    :cond_3
    if-nez p1, :cond_4

    .line 595
    const-string v1, "VIEW_TYPE_SUBHEADER"

    goto :goto_0

    .line 598
    :cond_4
    const-string v1, "LOADING"

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    const-wide/16 v1, -0x1

    .line 605
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    if-nez v3, :cond_4

    .line 606
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 607
    .local v0, cursorCount:I
    if-nez v0, :cond_3

    .line 608
    if-nez p1, :cond_1

    .line 625
    .end local v0           #cursorCount:I
    :cond_0
    :goto_0
    return-wide v1

    .line 611
    .restart local v0       #cursorCount:I
    :cond_1
    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    .line 619
    :cond_2
    add-int/lit8 v1, p1, -0x1

    invoke-super {p0, v1}, Landroid/widget/ResourceCursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 615
    :cond_3
    if-nez p1, :cond_2

    goto :goto_0

    .line 621
    .end local v0           #cursorCount:I
    :cond_4
    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    if-nez v3, :cond_4

    .line 381
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 382
    .local v0, cursorCount:I
    if-nez v0, :cond_2

    .line 383
    if-nez p1, :cond_1

    .line 403
    .end local v0           #cursorCount:I
    :cond_0
    :goto_0
    return v1

    .line 386
    .restart local v0       #cursorCount:I
    :cond_1
    if-ne v2, p1, :cond_3

    move v1, v2

    .line 387
    goto :goto_0

    .line 390
    :cond_2
    if-eqz p1, :cond_0

    .line 393
    add-int/lit8 v1, p1, -0x1

    if-gt v1, v0, :cond_3

    .line 394
    const/4 v1, 0x2

    goto :goto_0

    .line 397
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 399
    .end local v0           #cursorCount:I
    :cond_4
    if-eqz p1, :cond_0

    .line 403
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getTitleCount()I
    .locals 1

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanySearchEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsCompanyAccountReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 434
    const/4 v1, 0x1

    .line 436
    .local v1, enableTop:Z
    const/4 v1, 0x0

    .line 438
    iget-boolean v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    if-nez v6, :cond_9

    .line 440
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 441
    .local v0, cursorCount:I
    if-nez v0, :cond_3

    .line 442
    if-nez p1, :cond_1

    .line 443
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 513
    .end local v0           #cursorCount:I
    :cond_0
    :goto_0
    return-object v5

    .line 445
    .restart local v0       #cursorCount:I
    :cond_1
    if-ne v9, p1, :cond_4

    .line 446
    if-nez p2, :cond_2

    .line 447
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03000c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 461
    new-instance v6, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    invoke-direct {v6, v1, v9}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    move-object v5, p2

    .line 463
    goto :goto_0

    .line 466
    :cond_3
    if-nez p1, :cond_4

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 470
    :cond_4
    add-int/lit8 v6, p1, -0x1

    invoke-super {p0, v6, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 471
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 472
    .local v4, tag:Ljava/lang/Object;
    if-ne v9, p1, :cond_7

    .line 473
    if-nez v4, :cond_5

    .line 474
    new-instance v6, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v6, v1, v8}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :cond_5
    instance-of v6, v4, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 477
    check-cast v6, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcListItemSeparableType;->setTopRound(Z)V

    .line 478
    if-ne p1, v0, :cond_6

    .line 479
    check-cast v4, Lcom/htc/widget/HtcListItemSeparableType;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemSeparableType;->setBottomRound(Z)V

    goto :goto_0

    .line 481
    .restart local v4       #tag:Ljava/lang/Object;
    :cond_6
    check-cast v4, Lcom/htc/widget/HtcListItemSeparableType;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemSeparableType;->setBottomRound(Z)V

    goto :goto_0

    .line 486
    .restart local v4       #tag:Ljava/lang/Object;
    :cond_7
    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 487
    check-cast v6, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItemSeparableType;->setTopRound(Z)V

    .line 488
    if-ne p1, v0, :cond_8

    .line 489
    check-cast v4, Lcom/htc/widget/HtcListItemSeparableType;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemSeparableType;->setBottomRound(Z)V

    goto :goto_0

    .line 491
    .restart local v4       #tag:Ljava/lang/Object;
    :cond_8
    check-cast v4, Lcom/htc/widget/HtcListItemSeparableType;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemSeparableType;->setBottomRound(Z)V

    goto :goto_0

    .line 497
    .end local v0           #cursorCount:I
    .end local v5           #v:Landroid/view/View;
    :cond_9
    if-nez p1, :cond_a

    .line 498
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 501
    :cond_a
    if-nez p2, :cond_b

    .line 502
    iget-object v6, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030056

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 504
    new-instance v6, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    invoke-direct {v6, v1, v9}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 505
    const v6, 0x7f0700dc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 506
    .local v2, label:Landroid/widget/TextView;
    const v6, 0x7f0a0034

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 508
    .end local v2           #label:Landroid/widget/TextView;
    :cond_b
    const v6, 0x102000d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 509
    .local v3, progressView:Landroid/view/View;
    if-eqz v3, :cond_c

    .line 510
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_c
    iput-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchingProgressView:Landroid/view/View;

    move-object v5, p2

    .line 513
    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z

    if-nez v3, :cond_0

    .line 304
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 305
    .local v0, cursorCount:I
    if-nez v0, :cond_2

    .line 306
    if-nez p1, :cond_1

    .line 319
    .end local v0           #cursorCount:I
    :cond_0
    :goto_0
    return v1

    .line 309
    .restart local v0       #cursorCount:I
    :cond_1
    if-ne v2, p1, :cond_3

    move v1, v2

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    if-eqz p1, :cond_0

    .line 317
    :cond_3
    add-int/lit8 v1, p1, -0x1

    invoke-super {p0, v1}, Landroid/widget/ResourceCursorAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 528
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 529
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->generateListItemCache()Lcom/android/htccontacts/widget/BaseContactListItemCache;

    move-result-object v1

    .line 531
    .local v1, tag:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 532
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 533
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 534
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 537
    .end local v1           #tag:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    :cond_0
    return-object v0
.end method

.method public rebindEASService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 275
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHasCallBindService:Z

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iput-boolean v4, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHasCallBindService:Z

    .line 279
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc.bind"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const-string v1, "CompanyDirectorySearchAdapter"

    const-string v2, "Failed to bind EAS AppSvc!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetSearch()V
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 645
    return-void
.end method

.method public unbindEAService()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 289
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHasCallBindService:Z

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mHasCallBindService:Z

    goto :goto_0
.end method
