.class public Lcom/android/htccontacts/link/DisplayLinkedActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "DisplayLinkedActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;,
        Lcom/android/htccontacts/link/DisplayLinkedActivity$FilterTextWatcher;,
        Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;,
        Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;,
        Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;,
        Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    }
.end annotation


# static fields
.field public static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field public static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static final HANDLER_MSG_FINISH_SELF:I = 0x0

.field private static final MENU_DE_DUPLICATE_CONTACTS:I = 0x3

.field private static final OPTION_MENU_SELECT_ALL:I = 0x1

.field private static final OPTION_MENU_UN_SELECT_ALL:I = 0x2

.field private static final QUERY_TOKEN_FILTER:I = 0x1

.field private static final QUERY_TOKEN_GROUP:I = 0x2

.field private static final QUERY_TOKEN_LINKED:I = 0x0

.field protected static final RAW_RAWCONTACTS_PROJECTION_FOR_360:[Ljava/lang/String; = null

.field protected static final RAW_RAWCONTACTS_PROJECTION_ORG:[Ljava/lang/String; = null

.field private static final RESULT_DE_DUPLICATE:I = 0x2

.field private static final RESULT_SHOW_CONTACT_INFO:I = 0x1

.field private static SEARCH_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "DisplayLinkedActivity"

.field public static defaultIcon:Landroid/graphics/Bitmap;

.field public static mFilterString:Ljava/lang/String;

.field private static mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private static mResultReceiver:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;


# instance fields
.field private BACKGROUND_SPAN_COLOR:I

.field private FOREGROUND_SPAN_COLOR:I

.field protected RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

.field private isOK:Z

.field isOnce:Z

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private mChilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field protected mEditTextWatcher:Landroid/text/TextWatcher;

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field private mInputEditor:Landroid/widget/EditText;

.field private mLinkedContactUri:Landroid/net/Uri;

.field private mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

.field private mLock:Ljava/lang/Object;

.field private mObserver:Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;

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

.field private mQueryHandler:Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;

.field private mRemovedRawIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mUIHandler:Landroid/os/Handler;

.field mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

.field private mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    sput-boolean v3, Lcom/android/htccontacts/link/DisplayLinkedActivity;->SEARCH_MODE:Z

    .line 135
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "account_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION_ORG:[Ljava/lang/String;

    .line 147
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "account_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION_FOR_360:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 123
    iput-boolean v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOK:Z

    .line 127
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "raw_contacts/raw_contact_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLinkedContactUri:Landroid/net/Uri;

    .line 914
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$3;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mUIHandler:Landroid/os/Handler;

    .line 973
    iput-boolean v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOnce:Z

    .line 1100
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/link/DisplayLinkedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncAtLast()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->applyBatchOperations()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-object p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResultReceiver:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/link/DisplayLinkedActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/link/DisplayLinkedActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnChild(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->queryGroupRawAfterSearch(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    return-object v0
.end method

.method private applyBatchOperations()V
    .locals 7

    .prologue
    .line 881
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 884
    const/16 v3, 0x32

    .line 885
    .local v3, limit:I
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 886
    .local v0, OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 887
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 889
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 891
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResolver:Landroid/content/ContentResolver;

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

    .line 896
    .end local v0           #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 898
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 912
    .end local v3           #limit:I
    :cond_1
    return-void

    .line 893
    .restart local v0       #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #limit:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 894
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 909
    :cond_3
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 899
    .end local v0           #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v1

    .line 901
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 909
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 902
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v1

    .line 903
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const v4, 0x104039d

    const/16 v5, 0x1388

    :try_start_4
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 909
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 904
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_3
    move-exception v1

    .line 905
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_5
    const-string v4, "DisplayLinkedActivity"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 909
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 906
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_4
    move-exception v1

    .line 907
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v4, "DisplayLinkedActivity"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 909
    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v4
.end method

.method private changeTitle()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 254
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 255
    .local v2, titleBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 257
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "titleArea"

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, titleResId:I
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, mTitleArea:Landroid/view/View;
    sget-boolean v4, Lcom/android/htccontacts/link/DisplayLinkedActivity;->SEARCH_MODE:Z

    if-eqz v4, :cond_1

    .line 262
    invoke-virtual {v1, v8}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    invoke-virtual {v2, v9}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setVisibility(I)V

    .line 267
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->handleSearchBar()V

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {v1, v9}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 270
    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_2
    invoke-virtual {v2, v8}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->showAsyncProgressBeforeFinish(Landroid/content/Context;)V

    .line 829
    return-void
.end method

.method private getCurrentCursorCount()I
    .locals 2

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, result:I
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    .line 625
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 629
    :cond_0
    return v1
.end method

.method private handleSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->initSpanColor()V

    .line 282
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 284
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 286
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    .line 287
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->initFilterBox()V

    .line 293
    return-void
.end method

.method private initFilterBox()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    const v2, 0x7f0a0139

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 299
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 301
    new-instance v1, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    sput-object v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResultReceiver:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    .line 302
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->launchIME(Landroid/widget/EditText;)V

    .line 305
    :cond_0
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 306
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-nez v0, :cond_2

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->obtainTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 311
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 332
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 334
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const v1, 0x7f0a03c8

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setSelectedText(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 319
    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setEmptyText(I)V

    .line 321
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->initListHeaderView()V

    .line 323
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mObserver:Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;

    .line 324
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    .line 325
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/link/DisplayLinkedListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    .line 326
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mObserver:Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 328
    return-void
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1074
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->BACKGROUND_SPAN_COLOR:I

    .line 1075
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 1076
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->FOREGROUND_SPAN_COLOR:I

    .line 1077
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 1078
    return-void
.end method

.method private queryGroupRawAfterSearch(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 785
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v0, "contact_id IN ( "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    if-eqz p1, :cond_0

    .line 788
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const-string v0, "contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 790
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 794
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLinkedContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method private setChildSelected(II)V
    .locals 6
    .parameter "cid"
    .parameter "position"

    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getRowInfoArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    iget v1, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 464
    .local v1, parent_position:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 465
    .local v0, info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->delete(I)V

    .line 474
    :goto_0
    monitor-exit v3

    .line 475
    return-void

    .line 468
    .end local v0           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v1           #parent_position:I
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 469
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getRowInfoArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    iget v1, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 471
    .restart local v1       #parent_position:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 472
    .restart local v0       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->add(I)V

    goto :goto_0

    .line 474
    .end local v0           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v1           #parent_position:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setChildSelected(IIZ)V
    .locals 6
    .parameter "cid"
    .parameter "position"
    .parameter "selected"

    .prologue
    .line 480
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 481
    if-nez p3, :cond_1

    .line 482
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getRowInfoArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    iget v1, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 486
    .local v1, parent_position:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 487
    .local v0, info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->delete(I)V

    .line 498
    .end local v0           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v1           #parent_position:I
    :cond_0
    :goto_0
    monitor-exit v3

    .line 499
    return-void

    .line 490
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getRowInfoArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    iget v1, v2, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 494
    .restart local v1       #parent_position:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 495
    .restart local v0       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->add(I)V

    goto :goto_0

    .line 498
    .end local v0           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v1           #parent_position:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setChildSelected2(II)V
    .locals 6
    .parameter "cid"
    .parameter "position"

    .prologue
    .line 435
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v2, p2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getParentPosByCursor(I)I

    move-result v1

    .line 441
    .local v1, parent_position:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 442
    .local v0, info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->delete(I)V

    .line 451
    :goto_0
    monitor-exit v3

    .line 452
    return-void

    .line 445
    .end local v0           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v1           #parent_position:I
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v2, p2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getParentPosByCursor(I)I

    move-result v1

    .line 448
    .restart local v1       #parent_position:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 449
    .restart local v0       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->add(I)V

    goto :goto_0

    .line 451
    .end local v0           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v1           #parent_position:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private showAsyncProgressBeforeFinish(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 976
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOnce:Z

    if-eqz v0, :cond_0

    .line 977
    iput-boolean v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOnce:Z

    .line 979
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 983
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 985
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 987
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 989
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 991
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 993
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 995
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/android/htccontacts/link/DisplayLinkedActivity$4;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$4;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1007
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->start()V

    .line 1009
    :cond_0
    return-void
.end method

.method private splitContact(JJ)V
    .locals 5
    .parameter "rawContactId1"
    .parameter "rawContactId2"

    .prologue
    .line 832
    cmp-long v2, p1, p3

    if-eqz v2, :cond_0

    .line 833
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "aggregation_exceptions_manual"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 835
    .local v1, updateUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 837
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 838
    const-string v2, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 839
    const-string v2, "raw_contact_id2"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 841
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #updateUri:Landroid/net/Uri;
    :cond_0
    const-string v2, "DisplayLinkedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------remove pairs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method

.method private syncAtLast()V
    .locals 17

    .prologue
    .line 849
    sget-boolean v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->SEARCH_MODE:Z

    if-eqz v1, :cond_0

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLinkedContactUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 852
    .local v7, final_cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnChild(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 855
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 859
    .end local v7           #final_cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v16, tmpChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #tmpChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;>;"
    check-cast v16, Ljava/util/ArrayList;

    .line 861
    .restart local v16       #tmpChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 862
    .local v14, info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    iget-object v1, v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 863
    .local v12, id1:I
    iget-object v1, v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 864
    .local v13, id2:I
    int-to-long v1, v12

    int-to-long v3, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->splitContact(JJ)V

    goto :goto_0

    .line 870
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #id1:I
    .end local v13           #id2:I
    .end local v14           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 871
    .restart local v14       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v1, v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 872
    move v15, v8

    .local v15, j:I
    :goto_2
    iget-object v1, v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_5

    .line 873
    iget-object v1, v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, v14, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->splitContact(JJ)V

    .line 872
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 871
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 878
    .end local v8           #i:I
    .end local v14           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v15           #j:I
    :cond_6
    return-void
.end method

.method private declared-synchronized syncOnChild(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 9
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 748
    :try_start_1
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 750
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 751
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, cur_id:I
    const/4 v4, 0x0

    .line 754
    .local v4, pre_id:I
    const/4 v3, 0x0

    .line 756
    .local v3, info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    :cond_0
    const-string v6, "contact_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 757
    if-eq v1, v4, :cond_1

    .line 759
    new-instance v3, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .end local v3           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    invoke-direct {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;-><init>()V

    .line 760
    .restart local v3       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_1
    const-string v6, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 763
    .local v0, child_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 764
    invoke-virtual {v3, v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->delete(I)V

    .line 769
    :goto_0
    move v4, v1

    .line 770
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 775
    .end local v0           #child_id:I
    .end local v1           #cur_id:I
    .end local v3           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v4           #pre_id:I
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 776
    .local v5, tmpChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 777
    .restart local v3       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    iget-object v6, v3, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v8, v3, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v6, v8

    const/4 v8, 0x1

    if-gt v6, v8, :cond_3

    .line 778
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 781
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v5           #tmpChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 747
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 766
    .restart local v0       #child_id:I
    .restart local v1       #cur_id:I
    .restart local v3       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .restart local v4       #pre_id:I
    :cond_4
    :try_start_3
    invoke-virtual {v3, v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->add(I)V

    goto :goto_0

    .line 781
    .end local v0           #child_id:I
    .end local v1           #cur_id:I
    .end local v3           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    .end local v4           #pre_id:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #tmpChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;>;"
    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    monitor-exit p0

    return-void
.end method

.method private syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 721
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v4, mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 724
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 725
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 726
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 727
    .local v3, mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 728
    .local v2, id:I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 730
    :cond_1
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 731
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:I
    .end local v3           #mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 735
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #id:I
    .restart local v3       #mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4       #mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 738
    .end local v2           #id:I
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object p1, v0

    .line 743
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    monitor-exit v6

    .line 744
    return-void

    .line 740
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected doFilter(Ljava/lang/String;)V
    .locals 8
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 1025
    const/4 v5, 0x0

    .line 1026
    .local v5, selection:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    const-string v0, "raw_contacts.display_name"

    invoke-static {v0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getFilterWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1031
    :cond_0
    const-string v0, "DisplayLinkedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------doFilter:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLinkedContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 9

    .prologue
    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, count:I
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    .line 635
    .local v4, listView:Lcom/htc/widget/HtcListView;
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    .line 637
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v4, :cond_2

    .line 639
    if-eqz v0, :cond_2

    .line 640
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    .line 641
    .local v6, size:I
    const/4 v5, 0x0

    .local v5, pos:I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 642
    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    long-to-int v3, v7

    .line 643
    .local v3, id:I
    iget-object v7, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v1, 0x1

    .line 644
    .local v1, checked:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 645
    add-int/lit8 v2, v2, 0x1

    .line 641
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 643
    .end local v1           #checked:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 650
    .end local v3           #id:I
    .end local v5           #pos:I
    .end local v6           #size:I
    :cond_2
    return v2
.end method

.method protected handleSearch()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1015
    sput-boolean v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->SEARCH_MODE:Z

    .line 1016
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->changeTitle()V

    .line 1018
    return v0
.end method

.method public isForgroundActivity()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public launchIME(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 1087
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1092
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1094
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1096
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResultReceiver:Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 1098
    :cond_1
    return-void
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 1042
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$FilterTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$FilterTextWatcher;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 423
    const-string v0, "DisplayLinkedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->startAsyncQurey()V

    .line 429
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 224
    const-string v0, "DisplayLinkedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------onCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION_FOR_360:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    .line 234
    :goto_0
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setContentView(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mResolver:Landroid/content/ContentResolver;

    .line 236
    new-instance v0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;

    .line 237
    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setGenericTitleBar(I)V

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->SEARCH_MODE:Z

    .line 240
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->changeTitle()V

    .line 242
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->initListView()V

    .line 243
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setListeners()V

    .line 245
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 246
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080846

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->defaultIcon:Landroid/graphics/Bitmap;

    .line 247
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOnce:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->startAsyncQurey()V

    .line 251
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION_ORG:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 519
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->defaultIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->defaultIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 521
    sput-object v2, Lcom/android/htccontacts/link/DisplayLinkedActivity;->defaultIcon:Landroid/graphics/Bitmap;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mObserver:Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 527
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 529
    iput-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->clearContactHeaderInfo()V

    .line 535
    :cond_2
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setAllItemChecked(Z)V

    .line 1154
    return-void
.end method

.method public onLinkButtonPressed(II)V
    .locals 2
    .parameter "_id"
    .parameter "curPos"

    .prologue
    .line 412
    const-string v0, "DisplayLinkedActivity"

    const-string v1, "------------onLinkButtonPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-lez p1, :cond_0

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setChildSelected2(II)V

    .line 415
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->updateSaveButtonState()V

    .line 416
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->notifyDataSetChanged()V

    .line 419
    :cond_0
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 14
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 370
    const-string v12, "DisplayLinkedActivity"

    const-string v13, "------------onListItemClick"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v5, p3, v12

    .line 380
    .local v5, cur_pos:I
    if-gez v5, :cond_1

    .line 381
    iget-object v12, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v12, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v12, v5}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getItemId(I)J

    move-result-wide v0

    .line 387
    .local v0, _id:J
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-lez v12, :cond_0

    .line 388
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v8, intent:Landroid/content/Intent;
    const-string v12, "com.android.htccontacts"

    const-string v13, "com.android.htccontacts.link.widget.ShowContactInfoDialog"

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    sget-object v12, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 391
    .local v4, contactUri:Landroid/net/Uri;
    const-string v12, "data"

    invoke-static {v4, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 393
    iget-object v12, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v12, v5}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    .line 394
    .local v9, item:Ljava/lang/Object;
    instance-of v12, v9, Landroid/database/Cursor;

    if-eqz v12, :cond_3

    move-object v3, v9

    .line 395
    check-cast v3, Landroid/database/Cursor;

    .line 396
    .local v3, c:Landroid/database/Cursor;
    const-string v12, "display_name"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, display_name:Ljava/lang/String;
    const-string v12, "account_type"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, accountType:Ljava/lang/String;
    const-string v12, "data_set"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, dataSet:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v12, v2, v6}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 400
    const-string v12, "can_delete"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    :cond_2
    const-string v12, "photo_id"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 403
    .local v10, photo_id:J
    const-string v12, "display_name"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v12, "photo_id"

    invoke-virtual {v8, v12, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 407
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #c:Landroid/database/Cursor;
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #display_name:Ljava/lang/String;
    .end local v10           #photo_id:J
    :cond_3
    const/4 v12, 0x1

    invoke-virtual {p0, v8, v12}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 211
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.contacts.de_duplicate_contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 514
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 508
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 509
    return-void
.end method

.method protected setAllItemChecked(Z)V
    .locals 9
    .parameter "check"

    .prologue
    .line 579
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v5, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 596
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 597
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 598
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getItemViewType(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 599
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->getCursorPosition(I)I

    move-result v1

    .line 600
    .local v1, cur_position:I
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-virtual {v5, v1}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->getItemId(I)J

    move-result-wide v7

    long-to-int v0, v7

    .line 601
    .local v0, child_id:I
    if-lez v0, :cond_2

    .line 602
    if-nez p1, :cond_2

    .line 603
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v0           #child_id:I
    .end local v1           #cur_position:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 608
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;

    .line 609
    .local v4, info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    if-eqz p1, :cond_4

    .line 610
    invoke-virtual {v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->addAll()V

    goto :goto_2

    .line 615
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 612
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->deleteAll()V

    goto :goto_2

    .line 615
    .end local v4           #info:Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->updateSaveButtonState()V

    .line 618
    iget-object v5, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected setListeners()V
    .locals 3

    .prologue
    .line 338
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 339
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 341
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a00eb

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 342
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 343
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 344
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 346
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/htccontacts/link/DisplayLinkedActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$1;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/htccontacts/link/DisplayLinkedActivity$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$2;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method public startAsyncQurey()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 657
    const-string v0, "DisplayLinkedActivity"

    const-string v1, "-----------startAsyncQurey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mQueryHandler:Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mLinkedContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getCurrentCursorCount()I

    move-result v0

    .line 1159
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 1160
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 1161
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-lez v0, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 1163
    :cond_0
    return-void

    .line 1161
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateSaveButtonState()V
    .locals 2

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 366
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
