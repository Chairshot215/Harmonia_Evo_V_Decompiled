.class public Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "DisplaySuggestionActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;,
        Lcom/android/htccontacts/link/DisplaySuggestionActivity$FilterTextWatcher;,
        Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;,
        Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;,
        Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;,
        Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
    }
.end annotation


# static fields
.field public static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field protected static final CONTACTS_SUMMARY_PROJECTION_ORG:[Ljava/lang/String; = null

.field public static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static final HANDLER_MSG_FINISH_SELF:I = 0x0

.field private static final HANDLER_MSG_SHOW_ADAPTER:I = 0x1

.field private static final HANDLER_MSG_UPDATE_SUGGESTION:I = 0x2

.field private static final OPTION_MENU_SELECT_ALL:I = 0x1

.field private static final OPTION_MENU_UN_SELECT_ALL:I = 0x2

.field private static final QUERY_TOKEN_CHILD:I = 0x1

.field private static final QUERY_TOKEN_FILTER:I = 0x2

.field private static final QUERY_TOKEN_PARENT:I = 0x0

.field private static SEARCH_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "DisplaySuggestionActvity"

.field public static final TYPE_CHILD:I = 0x2

.field public static final TYPE_PARENT:I = 0x1

.field public static defaultIcon:Landroid/graphics/Bitmap;

.field public static mFilterString:Ljava/lang/String;

.field private static mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private static mResultReceiver:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;


# instance fields
.field private BACKGROUND_SPAN_COLOR:I

.field protected CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private FOREGROUND_SPAN_COLOR:I

.field private isOK:Z

.field isOnce:Z

.field private mAddChildIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private final mCreateAdapterInfoRunnable:Ljava/lang/Runnable;

.field private mCursor:Landroid/database/Cursor;

.field protected mEditTextWatcher:Landroid/text/TextWatcher;

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field private mInputEditor:Landroid/widget/EditText;

.field private mIntentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

.field private mLock:Ljava/lang/Object;

.field final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;

.field private final mQuerySuggestionRunnable:Ljava/lang/Runnable;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mSuggestId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestIdBackUp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionContactUri:Landroid/net/Uri;

.field private mUIHandler:Landroid/os/Handler;

.field mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

.field protected mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    sput-boolean v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->CONTACTS_SUMMARY_PROJECTION_ORG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 96
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "contacts/suggetsion/list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestionContactUri:Landroid/net/Uri;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestIdBackUp:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mLock:Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    .line 135
    iput-boolean v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOK:Z

    .line 226
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mQuerySuggestionRunnable:Ljava/lang/Runnable;

    .line 930
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;

    .line 961
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$5;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCreateAdapterInfoRunnable:Ljava/lang/Runnable;

    .line 1023
    iput-boolean v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOnce:Z

    .line 1247
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->startAsyncQurey()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->processIntent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->initUIAfterIdReady()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->linkSelectedSuggest()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->removeAllSuggest()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->applyBatchOperations()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOK:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOK:Z

    return p1
.end method

.method static synthetic access$2200()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$2400()Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResultReceiver:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->syncOnIds()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->backUpIds()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCreateAdapterInfoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->syncAfterSearch(Landroid/database/Cursor;)V

    return-void
.end method

.method private applyBatchOperations()V
    .locals 7

    .prologue
    .line 1066
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1069
    const/16 v3, 0x32

    .line 1070
    .local v3, limit:I
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1071
    .local v0, OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1072
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1073
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1074
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1076
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 1081
    .end local v0           #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1083
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1097
    .end local v3           #limit:I
    :cond_1
    return-void

    .line 1078
    .restart local v0       #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #limit:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1079
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1094
    :cond_3
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 1084
    .end local v0           #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v1

    .line 1086
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1094
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 1087
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v1

    .line 1088
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const v4, 0x104039d

    const/16 v5, 0x1388

    :try_start_4
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1094
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 1089
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_3
    move-exception v1

    .line 1090
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_5
    const-string v4, "DisplaySuggestionActvity"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1094
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 1091
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_4
    move-exception v1

    .line 1092
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v4, "DisplaySuggestionActvity"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1094
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v4
.end method

.method private declared-synchronized backUpIds()V
    .locals 8

    .prologue
    .line 864
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 865
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 866
    .local v4, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    iget-wide v6, v4, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 867
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    iget-wide v6, v4, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_1
    iget-object v5, v4, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 869
    .local v2, id:J
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 870
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 864
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:J
    .end local v4           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 876
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestIdBackUp:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    monitor-exit p0

    return-void
.end method

.method private changeTitle()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 290
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 291
    .local v2, titleBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 293
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "titleArea"

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 294
    .local v3, titleResId:I
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, mTitleArea:Landroid/view/View;
    sget-boolean v4, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    if-eqz v4, :cond_1

    .line 298
    invoke-virtual {v1, v8}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_0
    invoke-virtual {v2, v9}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->handleSearchBar()V

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {v1, v9}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 306
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_2
    invoke-virtual {v2, v8}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->showAsyncProgressBeforeFinish(Landroid/content/Context;)V

    .line 1105
    return-void
.end method

.method private getCurrentCursorCount()I
    .locals 2

    .prologue
    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, result:I
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    .line 672
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    .line 673
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 676
    :cond_0
    return v1
.end method

.method private handleSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 317
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->initSpanColor()V

    .line 319
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 321
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 323
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    .line 324
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->initFilterBox()V

    .line 331
    return-void
.end method

.method private initFilterBox()V
    .locals 4

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    const v2, 0x7f0a0139

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 337
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 339
    new-instance v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    sput-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResultReceiver:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    .line 340
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->launchIME(Landroid/widget/EditText;)V

    .line 344
    :cond_0
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 345
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-nez v0, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->obtainTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 350
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 370
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 372
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const v1, 0x7f0a03c8

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setSelectedText(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 358
    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setEmptyText(I)V

    .line 360
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->initListHeaderView()V

    .line 363
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    .line 364
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/link/DisplaySuggestListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    .line 366
    return-void
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1221
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->BACKGROUND_SPAN_COLOR:I

    .line 1222
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 1223
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->FOREGROUND_SPAN_COLOR:I

    .line 1224
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 1225
    return-void
.end method

.method private initUIAfterIdReady()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->initListView()V

    .line 241
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setListeners()V

    .line 242
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->startAsyncQurey()V

    .line 243
    return-void
.end method

.method private joinSuggestIds(JLjava/util/ArrayList;)V
    .locals 19
    .parameter "parentId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p3, childIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v7, 0x0

    cmp-long v2, p1, v7

    if-lez v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 469
    :cond_0
    return-void

    .line 431
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v17, parentRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v11, childRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 435
    .local v16, parentC:Landroid/database/Cursor;
    if-eqz v16, :cond_4

    .line 436
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 438
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v18, sb:Ljava/lang/StringBuilder;
    const-string v2, "contact_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 447
    .local v14, id:J
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    .end local v14           #id:J
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 451
    const-string v2, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 455
    .local v10, childC:Landroid/database/Cursor;
    if-eqz v10, :cond_8

    .line 456
    :cond_6
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 457
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 458
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 460
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12           #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 464
    .local v3, pid:J
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 465
    .local v5, cid:J
    const/4 v7, 0x1

    const-wide/16 v8, 0x2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setAggregationException(JJIJ)V

    goto :goto_3
.end method

.method private linkSelectedSuggest()V
    .locals 9

    .prologue
    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, childIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v6, tmpSuggestIdBackUp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    iget-object v7, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestIdBackUp:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #tmpSuggestIdBackUp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    check-cast v6, Ljava/util/ArrayList;

    .line 411
    .restart local v6       #tmpSuggestIdBackUp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 412
    .local v5, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v7, v5, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 414
    .local v3, id:J
    iget-object v7, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 415
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    .end local v3           #id:J
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 419
    iget-wide v7, v5, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    invoke-direct {p0, v7, v8, v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->joinSuggestIds(JLjava/util/ArrayList;)V

    goto :goto_0

    .line 424
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    .end local v6           #tmpSuggestIdBackUp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    :cond_3
    return-void
.end method

.method private processIntent()V
    .locals 9

    .prologue
    .line 249
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->finish()V

    .line 287
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 255
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 256
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    const/4 v3, 0x1

    .line 259
    .local v3, isStart:Z
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    .local v1, id:I
    if-nez v1, :cond_1

    .line 262
    const/4 v3, 0x1

    .line 263
    const/4 v2, 0x0

    .line 264
    goto :goto_1

    .line 267
    :cond_1
    if-eqz v3, :cond_2

    .line 268
    new-instance v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .end local v2           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    int-to-long v7, v1

    invoke-direct {v2, v7, v8}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;-><init>(J)V

    .line 269
    .restart local v2       #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 271
    :cond_2
    int-to-long v7, v1

    invoke-virtual {v2, v7, v8}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->add(J)V

    goto :goto_2

    .line 286
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    .end local v2           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    .end local v3           #isStart:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 278
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 279
    .local v4, mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 280
    .restart local v2       #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-object v5, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 281
    :cond_5
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 286
    .end local v2           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private removeAllSuggest()V
    .locals 4

    .prologue
    .line 498
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    .line 499
    .local v1, updateUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 501
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "removed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 502
    const-string v2, "removed = 0"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 503
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method private setChildSelected(J)V
    .locals 2
    .parameter "cid"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setChildSelected(JIZ)V
    .locals 2
    .parameter "cid"
    .parameter "position"
    .parameter "selected"

    .prologue
    .line 557
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showAsyncProgressBeforeFinish(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1030
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOnce:Z

    if-eqz v0, :cond_0

    .line 1031
    iput-boolean v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOnce:Z

    .line 1032
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1036
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1044
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1046
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1048
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$6;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$6;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1060
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->start()V

    .line 1063
    :cond_0
    return-void
.end method

.method private startAsyncQurey()V
    .locals 17

    .prologue
    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setListLoading()V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 707
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v14, sb1:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .local v15, sb2:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 710
    const-string v1, "_id IN ( "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v1, "_id IN ( "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 713
    .local v13, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-wide v1, v13, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 714
    const-string v1, ","

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v1, v13, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 716
    .local v11, id:J
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 738
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #id:J
    .end local v13           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    .end local v14           #sb1:Ljava/lang/StringBuilder;
    .end local v15           #sb2:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 720
    .restart local v14       #sb1:Ljava/lang/StringBuilder;
    .restart local v15       #sb2:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 721
    const-string v1, " )"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 723
    const-string v1, " )"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestionContactUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v1 .. v8}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestionContactUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v1 .. v8}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_3
    monitor-exit v16

    .line 739
    return-void

    .line 728
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 732
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 736
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setListEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private syncAfterSearch(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    .line 1155
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1157
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v7, tempSuggestId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    if-eqz p1, :cond_5

    .line 1161
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1162
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1163
    .local v4, id:J
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestIdBackUp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 1164
    .local v6, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-wide v10, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    cmp-long v8, v10, v4

    if-nez v8, :cond_2

    .line 1166
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1167
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    .end local v4           #id:J
    .end local v6           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    .end local v7           #tempSuggestId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1169
    .restart local v4       #id:J
    .restart local v6       #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    .restart local v7       #tempSuggestId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    :cond_2
    :try_start_1
    iget-object v8, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1170
    .local v0, child_id:J
    cmp-long v8, v0, v4

    if-nez v8, :cond_3

    .line 1172
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1173
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1181
    .end local v0           #child_id:J
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:J
    .end local v6           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1184
    :cond_5
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1185
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    .line 1186
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    return-void
.end method

.method private declared-synchronized syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v3, mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 885
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 886
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 887
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 888
    .local v1, id:J
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 890
    :cond_1
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 882
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:J
    .end local v3           #mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local p1           #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 895
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:J
    .restart local v3       #mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1       #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 898
    .end local v1           #id:J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1           #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p1, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    .end local v0           #i$:Ljava/util/Iterator;
    .restart local p1       #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 900
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized syncOnIds()V
    .locals 12

    .prologue
    .line 811
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->getParentCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 812
    .local v8, parent:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 814
    :cond_0
    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 815
    .local v4, id:J
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 816
    .local v6, info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-wide v9, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    .line 817
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->loadParentComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 811
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #id:J
    .end local v6           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    .end local v8           #parent:Landroid/database/Cursor;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 820
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #id:J
    .restart local v8       #parent:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 824
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #id:J
    :cond_3
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 825
    .local v7, mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 826
    .restart local v6       #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-boolean v9, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->loadParentComplete:Z

    if-nez v9, :cond_4

    .line 827
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 832
    .end local v6           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, cChildArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_7

    .line 834
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 836
    :cond_6
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 837
    .restart local v4       #id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 843
    .end local v4           #id:J
    :cond_7
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 844
    .restart local v6       #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-object v9, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 845
    .local v1, cIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 846
    .restart local v4       #id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 847
    iget-object v9, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 853
    .end local v1           #cIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:J
    .end local v6           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :cond_a
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    check-cast v7, Ljava/util/ArrayList;

    .line 854
    .restart local v7       #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;

    .line 855
    .restart local v6       #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    iget-object v9, v6, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 856
    iget-object v9, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 860
    .end local v6           #info:Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
    :cond_c
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected doFilter(Ljava/lang/String;)V
    .locals 12
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 1122
    const/4 v11, 0x0

    .line 1123
    .local v11, selection:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    const-string v0, "display_name"

    invoke-static {v0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getFilterWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1128
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .local v10, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1131
    const-string v0, "_id IN ( "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1133
    .local v9, id:I
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1136
    .end local v9           #id:I
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1137
    const-string v0, " )"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    if-eqz v11, :cond_2

    .line 1139
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestionContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 10

    .prologue
    .line 680
    const/4 v2, 0x0

    .line 681
    .local v2, count:I
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 682
    .local v5, listView:Lcom/htc/widget/HtcListView;
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    .line 684
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v5, :cond_1

    .line 686
    if-eqz v0, :cond_1

    .line 687
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    .line 688
    .local v7, size:I
    const/4 v6, 0x0

    .local v6, pos:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 689
    invoke-interface {v0, v6}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    .line 690
    .local v3, id:J
    iget-object v8, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 691
    .local v1, checked:Z
    if-eqz v1, :cond_0

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 688
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 697
    .end local v1           #checked:Z
    .end local v3           #id:J
    .end local v6           #pos:I
    .end local v7           #size:I
    :cond_1
    return v2
.end method

.method public getSuggestIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSuggestId:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected handleSearch()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1111
    sput-boolean v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    .line 1112
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->changeTitle()V

    .line 1114
    return v0
.end method

.method public launchIME(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 1234
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1239
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1241
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResultReceiver:Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 1245
    :cond_1
    return-void
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 1190
    new-instance v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$FilterTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$FilterTextWatcher;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    sget-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->CONTACTS_SUMMARY_PROJECTION_ORG:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 204
    const v1, 0x7f03004d

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setContentView(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mResolver:Landroid/content/ContentResolver;

    .line 206
    new-instance v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;

    .line 207
    const v1, 0x7f0a0281

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setGenericTitleBar(I)V

    .line 209
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->SEARCH_MODE:Z

    .line 210
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->changeTitle()V

    .line 212
    new-instance v1, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 213
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mQuerySuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;->postInBackground(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080846

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->defaultIcon:Landroid/graphics/Bitmap;

    .line 216
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v1, 0x0

    sput-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    .line 218
    iput-boolean v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOnce:Z

    .line 220
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 222
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 224
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 578
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->defaultIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->defaultIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    sput-object v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->defaultIcon:Landroid/graphics/Bitmap;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 588
    iput-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->clearContactHeaderInfo()V

    .line 593
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->setParentCursor(Landroid/database/Cursor;)V

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    :cond_3
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setAllItemChecked(Z)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->updateSaveButtonState()V

    .line 1302
    return-void
.end method

.method public onLinkButtonPressed(J)V
    .locals 2
    .parameter "contact_id"

    .prologue
    .line 537
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setChildSelected(J)V

    .line 539
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->updateSaveButtonState()V

    .line 540
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->notifyDataSetChanged()V

    .line 543
    :cond_0
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v3, p3, v5

    .line 521
    .local v3, cur_pos:I
    if-gez v3, :cond_1

    .line 522
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v5, v3}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->getItemContactId(I)J

    move-result-wide v1

    .line 526
    .local v1, contact_id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 527
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "com.android.htccontacts"

    const-string v6, "com.android.htccontacts.link.widget.ShowContactInfoDialog"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 530
    .local v0, contactUri:Landroid/net/Uri;
    const-string v5, "data"

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 572
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 573
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 568
    return-void
.end method

.method protected setAggregationException(JJIJ)V
    .locals 4
    .parameter "pid"
    .parameter "cid"
    .parameter "exceptionType"
    .parameter "method_id"

    .prologue
    .line 472
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "aggregation_exceptions_manual"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p6, p7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 473
    .local v1, updateUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 475
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 476
    const-string v2, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    const-string v2, "raw_contact_id2"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 479
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method protected setAllItemChecked(Z)V
    .locals 6
    .parameter "check"

    .prologue
    .line 644
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v4, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 648
    if-eqz p1, :cond_3

    .line 649
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 650
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->getItemViewType(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 651
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->getCursorPosition(I)I

    move-result v2

    .line 652
    .local v2, cur_position:I
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 653
    .local v0, child_id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 656
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v0           #child_id:J
    .end local v2           #cur_position:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 664
    .end local v3           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->updateSaveButtonState()V

    .line 665
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected setListeners()V
    .locals 3

    .prologue
    .line 376
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 377
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 379
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a00eb

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 380
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 381
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a02d3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 383
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$2;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$3;-><init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getCurrentCursorCount()I

    move-result v0

    .line 1307
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 1308
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 1309
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-lez v0, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 1311
    :cond_0
    return-void

    .line 1309
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateSaveButtonState()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mAddChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 509
    return-void

    .line 508
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
