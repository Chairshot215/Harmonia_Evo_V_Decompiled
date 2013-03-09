.class Lcom/android/htccontacts/model/AccountTypeManagerImpl;
.super Lcom/android/htccontacts/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;,
        Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/htccontacts/model/AccountTypeManagerImpl$FindInvitablesTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_LOAD_DATA:I = 0x0

.field private static final MESSAGE_PROCESS_BROADCAST_INTENT:I = 0x1

.field private static final MESSAGE_SIM_BRAODCAST:I = 0x2

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;

.field private static final SupportContactAuthority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypeSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/htccontacts/model/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private mPCAccount:Lcom/android/htccontacts/model/PCAccount;

.field mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

.field private mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 209
    const-wide/16 v0, 0x1

    const-string v2, "xxx"

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    .line 263
    sget-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "htceas"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.htc.plurk.Users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.htc.htctwitter.Users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$3;

    invoke-direct {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$3;-><init>()V

    sput-object v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 333
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManager;-><init>()V

    .line 198
    iput-boolean v9, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->DEBUG:Z

    .line 217
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 218
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 219
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 220
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 222
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypeSources:Ljava/util/List;

    .line 224
    sget-object v7, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 233
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    new-instance v7, Lcom/android/htccontacts/model/AccountTypeManagerImpl$1;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v7, Lcom/android/htccontacts/model/AccountTypeManagerImpl$2;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 334
    iput-object p1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 336
    new-instance v7, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;-><init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    .line 337
    invoke-static {p1}, Lcom/android/htccontacts/model/PCAccount;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/PCAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mPCAccount:Lcom/android/htccontacts/model/PCAccount;

    .line 340
    new-instance v7, Lcom/android/htccontacts/model/FallbackAccountType;

    invoke-direct {v7, p1}, Lcom/android/htccontacts/model/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/htccontacts/model/AccountType;

    .line 342
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 344
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "AccountChangeListener"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 345
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 346
    new-instance v7, Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;

    iget-object v8, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 365
    new-instance v7, Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl$1;)V

    iput-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 368
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v7, "package"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 372
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .local v2, sdFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v1       #filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v8, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v7, p0, v8, v9}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 385
    invoke-static {v10, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 387
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v1       #filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SIM_CONTACTS_DB_READY"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 396
    .local v3, simPBfilter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 399
    .local v5, simfilter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, sim_iccPB_ready:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    .line 404
    .local v6, simready_intent:Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 405
    iget-object v7, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, p1, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 408
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->processSIMBroadCastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private addAccountType(Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter "accountType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, accountTypesByTypeAndDataSet:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    .local p3, accountTypesByType:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/htccontacts/model/AccountType;->getAccountTypeAndDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v1, p1, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 738
    .local v0, accountsForType:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #accountsForType:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .restart local v0       #accountsForType:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v1, p1, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    return-void
.end method

.method private checkAccountTypeExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 1240
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1241
    .local v0, accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    iget-object v2, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1246
    const/4 v2, 0x1

    .line 1249
    .end local v0           #accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkAccountTypeExist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "accountType"
    .parameter "dataSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1254
    .local v0, accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1255
    iget-object v2, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    const/4 v2, 0x1

    .line 1262
    .end local v0           #accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized disableSIM()V
    .locals 1

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    monitor-exit p0

    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .parameter "context"
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, accounts:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .local p2, accountTypesByTypeAndDataSet:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 868
    .local v3, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 869
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v1

    .line 870
    .local v1, accountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountType;

    .line 871
    .local v4, type:Lcom/android/htccontacts/model/AccountType;
    if-eqz v4, :cond_0

    .line 872
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 874
    const-string v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 875
    const-string v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/htccontacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_1
    invoke-virtual {v4}, Lcom/android/htccontacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 879
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 882
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #accountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v4           #type:Lcom/android/htccontacts/model/AccountType;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 751
    move-object v0, p0

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 752
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 751
    .restart local v1       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 897
    .local v2, allInvitables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 898
    sget-object v8, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 931
    :goto_0
    return-object v8

    .line 901
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 902
    .local v7, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 905
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 906
    .local v1, accountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType;

    .line 909
    .local v0, accountType:Lcom/android/htccontacts/model/AccountType;
    sget-object v8, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Lcom/android/htccontacts/util/ContactsUtils;->getInvitableIntent(Lcom/android/htccontacts/model/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 911
    .local v4, invitableIntent:Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 912
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 915
    :cond_2
    const/high16 v8, 0x1

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 917
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 920
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 926
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 927
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 931
    .end local v0           #accountType:Lcom/android/htccontacts/model/AccountType;
    .end local v1           #accountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v4           #invitableIntent:Landroid/content/Intent;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    goto :goto_0
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 824
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method

.method private processSIMBroadCastIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1203
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_CONTACTS_DB_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1206
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->requestEnableSIM()V

    .line 1212
    :cond_0
    :goto_0
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1213
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, state:Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1231
    .end local v1           #state:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 1233
    const-string v2, "android.intent.action.SIM_CONTACTS_DB_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.SIM_CONTACTS_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1234
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->getSimeContact()V

    .line 1237
    :cond_3
    return-void

    .line 1207
    :cond_4
    const-string v2, "android.intent.action.SIM_CONTACTS_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1209
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->requestEnableSIM()V

    goto :goto_0

    .line 1218
    .restart local v1       #state:Ljava/lang/String;
    :cond_5
    const-string v2, "NOT_READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1219
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->disableSIM()V

    goto :goto_1

    .line 1222
    .end local v1           #state:Ljava/lang/String;
    :cond_6
    const-string v2, "android.intent.action.SIM_REFRESH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1223
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->disableSIM()V

    goto :goto_1

    .line 1225
    :cond_7
    const-string v2, "android.intent.action.SIM_FILE_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1226
    const/16 v2, 0x6f3a

    const-string v3, "extra"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1227
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->disableSIM()V

    goto :goto_1
.end method

.method private declared-synchronized requestEnableSIM()V
    .locals 1

    .prologue
    .line 1192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->disable()V

    .line 1193
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    :cond_0
    monitor-exit p0

    return-void

    .line 1192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 431
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 436
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    const/4 v4, 0x0

    .line 1266
    if-eqz p2, :cond_0

    const-string v3, "DeviceOnly"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    const v3, 0x7f0a0025

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1278
    :goto_0
    return-object v4

    .line 1269
    :cond_0
    const/4 v1, 0x0

    .line 1270
    .local v1, accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    monitor-enter p0

    .line 1271
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-static {p2, p3}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/htccontacts/model/AccountType;

    move-object v1, v0

    .line 1272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    if-nez v1, :cond_1

    .line 1274
    const-string v3, "AccountTypeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountLabel meets source doesn\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2, p3}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1277
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1278
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1
.end method

.method public getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;
    .locals 2
    .parameter "accountTypeWithDataSet"

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 811
    monitor-enter p0

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType;

    .line 813
    .local v0, type:Lcom/android/htccontacts/model/AccountType;
    if-eqz v0, :cond_0

    .end local v0           #type:Lcom/android/htccontacts/model/AccountType;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #type:Lcom/android/htccontacts/model/AccountType;
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/htccontacts/model/AccountType;

    goto :goto_0

    .line 814
    .end local v0           #type:Lcom/android/htccontacts/model/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .parameter "contactWritableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 937
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 938
    .local v0, accountTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    monitor-enter p0

    .line 939
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountType;

    .line 940
    .local v2, type:Lcom/android/htccontacts/model/AccountType;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/htccontacts/model/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 941
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 944
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/htccontacts/model/AccountType;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 1
    .parameter "contactWritableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 765
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public getAccountsList(Z)Ljava/util/ArrayList;
    .locals 3
    .parameter "contactWritableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1025
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 1026
    .local v1, srcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    .local v0, dstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1028
    return-object v0

    .line 1025
    .end local v0           #dstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v1           #srcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public getAccountsWithoutSim(Z)Ljava/util/ArrayList;
    .locals 4
    .parameter "writableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 1136
    .local v1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v2, outList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    monitor-enter p0

    .line 1138
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    #calls: Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->getAccountWithDataSet()Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v3}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->access$800(Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    .line 1141
    .local v0, accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1142
    return-object v2

    .line 1139
    .end local v0           #accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getCountactSyncSourcesInfo()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1146
    const/4 v1, 0x0

    .line 1147
    .local v1, info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;>;"
    monitor-enter p0

    .line 1149
    :try_start_0
    iget-object v10, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1150
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    move-object v2, v1

    .end local v1           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .local v2, info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 1151
    .local v3, key:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    iget-object v10, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/model/AccountType;

    .line 1152
    .local v9, source:Lcom/android/htccontacts/model/AccountType;
    new-instance v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;

    invoke-direct {v1}, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1153
    .end local v2           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .restart local v1       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    :try_start_2
    iget-object v10, v9, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->type:Ljava/lang/String;

    .line 1154
    iget-boolean v10, v9, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    iput-boolean v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->isReadyOnly:Z

    .line 1155
    iget-boolean v10, v9, Lcom/android/htccontacts/model/AccountType;->canSync:Z

    iput-boolean v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->canSync:Z

    .line 1156
    iget-boolean v10, v9, Lcom/android/htccontacts/model/AccountType;->canJoint:Z

    iput-boolean v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->canJoin:Z

    .line 1157
    iget-object v10, v9, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->dataSet:Ljava/lang/String;

    .line 1158
    iget-object v6, v9, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 1159
    .local v6, packageName:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1160
    iget-object v6, v9, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1165
    :cond_0
    const/4 v8, 0x0

    .line 1167
    .local v8, resources:Landroid/content/res/Resources;
    if-nez v6, :cond_3

    .line 1168
    :try_start_3
    iget-object v10, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1177
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 1178
    iget v10, v9, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    if-lez v10, :cond_4

    iget v10, v9, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_2
    iput-object v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->title:Ljava/lang/String;

    .line 1179
    iget v10, v9, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    if-lez v10, :cond_5

    iget v10, v9, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_3
    iput-object v10, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1182
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object v2, v1

    .line 1186
    .end local v1           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .restart local v2       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    goto :goto_0

    .line 1171
    .end local v2           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .restart local v1       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    :cond_3
    iget-object v10, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1172
    .local v7, pm:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_1

    .line 1173
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    goto :goto_1

    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    move-object v10, v11

    .line 1178
    goto :goto_2

    :cond_5
    move-object v10, v11

    .line 1179
    goto :goto_3

    .line 1187
    .end local v1           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .end local v3           #key:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v9           #source:Lcom/android/htccontacts/model/AccountType;
    .restart local v2       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    :cond_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1188
    return-object v5

    .line 1187
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .end local v4           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .restart local v1       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    :catchall_0
    move-exception v10

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v10

    .end local v1           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .restart local v4       #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .restart local v1       #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    goto :goto_5

    .line 1184
    .restart local v3       #key:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v8       #resources:Landroid/content/res/Resources;
    .restart local v9       #source:Lcom/android/htccontacts/model/AccountType;
    :catch_0
    move-exception v10

    goto :goto_4

    .line 1183
    :catch_1
    move-exception v10

    goto :goto_4
.end method

.method public getFilterSources()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType;>;"
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1058
    .local v3, am:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 1059
    .local v2, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1061
    .local v9, matching:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/ContactsSource;>;"
    move-object v4, v2

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v4, v6

    .line 1064
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypeSources:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType;

    .line 1065
    .local v1, accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    iget-object v10, v1, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1066
    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/util/contacts/SNLinkUtils;->isSyncContacts(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1067
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1061
    .end local v1           #accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 1072
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    return-object v8
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 773
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;
    .locals 5
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "mimeType"

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 784
    const/4 v0, 0x0

    .line 787
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType;

    .line 789
    .local v1, type:Lcom/android/htccontacts/model/AccountType;
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1, p3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 793
    :cond_0
    if-nez v0, :cond_1

    .line 795
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/htccontacts/model/AccountType;

    invoke-virtual {v2, p3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 798
    :cond_1
    if-nez v0, :cond_2

    .line 799
    const-string v2, "AccountTypeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_2
    return-object v0
.end method

.method public getSNSources()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType;>;"
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1035
    .local v3, am:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 1036
    .local v2, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1038
    .local v9, matching:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/ContactsSource;>;"
    move-object v4, v2

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v4, v6

    .line 1041
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypeSources:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType;

    .line 1042
    .local v1, accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    iget-object v10, v1, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1043
    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/util/contacts/SNLinkUtils;->isSyncContacts(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1044
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1038
    .end local v1           #accountTypeSource:Lcom/android/htccontacts/model/AccountType;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 1049
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    return-object v8
.end method

.method public getSimeContact()V
    .locals 3

    .prologue
    .line 1414
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1415
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;

    .line 1416
    .local v0, getSimContactsListener:Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;
    invoke-interface {v0}, Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;->onReceiveSimContact()V

    goto :goto_0

    .line 1419
    .end local v0           #getSimContactsListener:Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized getUnEditableAccounts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1077
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1079
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1080
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1081
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1077
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1085
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getUnEditableSyncSourcesTypes()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1096
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    iget-object v5, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1099
    .local v1, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    .line 1101
    .local v0, accTypeDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    iget-object v5, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountType;

    .line 1102
    .local v4, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v4}, Lcom/android/htccontacts/model/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    if-eqz v5, :cond_0

    .line 1103
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1104
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1096
    .end local v0           #accTypeDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v1           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .end local v4           #source:Lcom/android/htccontacts/model/AccountType;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1108
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    :cond_2
    monitor-exit p0

    return-object v3
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 843
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 845
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 856
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    new-instance v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Lcom/android/htccontacts/model/AccountTypeManagerImpl$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public declared-synchronized isEditableAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 1115
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1116
    const/4 v1, 0x0

    .line 1125
    :cond_0
    monitor-exit p0

    return v1

    .line 1118
    :cond_1
    const/4 v1, 0x0

    .line 1119
    .local v1, editable:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1120
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1122
    const/4 v1, 0x1

    goto :goto_0

    .line 1115
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected loadAccountsInBackground()V
    .locals 43

    .prologue
    .line 449
    const-string v2, "ContactsPerf"

    const/16 v40, 0x3

    move/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const-string v2, "ContactsPerf"

    const-string v40, "AccountTypeManager.loadAccountsInBackground start"

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    new-instance v38, Landroid/util/TimingLogger;

    const-string v2, "AccountTypeManager"

    const-string v40, "loadAccountsInBackground"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-direct {v0, v2, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v38, timings:Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v31

    .line 454
    .local v31, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    .line 457
    .local v33, startTimeWall:J
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 463
    .local v3, accountTypesByTypeAndDataSet:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Lcom/android/htccontacts/model/AccountType;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 465
    .local v4, accountTypesByType:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 466
    .local v5, allAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 467
    .local v6, contactWritableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 468
    .local v7, groupWritableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v27

    .line 471
    .local v27, extensionPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 474
    .local v8, accountTypeSources:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 475
    .local v14, am:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v20

    .line 478
    .local v20, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v37

    .line 479
    .local v37, syncs:[Landroid/content/SyncAdapterType;
    invoke-virtual {v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v18

    .line 482
    .local v18, auths:[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v15, v37

    .local v15, arr$:[Landroid/content/SyncAdapterType;
    array-length v0, v15

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    aget-object v35, v15, v28

    .line 485
    .local v35, sync:Landroid/content/SyncAdapterType;
    sget-object v2, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 482
    :cond_1
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 493
    :cond_2
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 494
    .local v39, type:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    .line 495
    .local v16, auth:Landroid/accounts/AuthenticatorDescription;
    if-nez v16, :cond_5

    .line 496
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "No authenticator found for type="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", ignoring it."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 612
    .end local v15           #arr$:[Landroid/content/SyncAdapterType;
    .end local v16           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v18           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v28           #i$:I
    .end local v30           #len$:I
    .end local v35           #sync:Landroid/content/SyncAdapterType;
    .end local v37           #syncs:[Landroid/content/SyncAdapterType;
    .end local v39           #type:Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 613
    .local v21, e:Landroid/os/RemoteException;
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Problem loading accounts: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v21           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v2, "Loaded account types"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v13

    .line 619
    .local v13, accounts:[Landroid/accounts/Account;
    move-object v15, v13

    .local v15, arr$:[Landroid/accounts/Account;
    array-length v0, v15

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    move/from16 v29, v28

    .end local v28           #i$:I
    .local v29, i$:I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a

    aget-object v9, v15, v29

    .line 620
    .local v9, account:Landroid/accounts/Account;
    const/16 v36, 0x0

    .line 622
    .local v36, syncable:Z
    :try_start_1
    const-string v2, "com.htc.android.pcsc"

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_14

    .line 619
    .end local v29           #i$:I
    :cond_4
    add-int/lit8 v28, v29, 0x1

    .restart local v28       #i$:I
    move/from16 v29, v28

    .end local v28           #i$:I
    .restart local v29       #i$:I
    goto :goto_2

    .line 501
    .end local v9           #account:Landroid/accounts/Account;
    .end local v13           #accounts:[Landroid/accounts/Account;
    .end local v29           #i$:I
    .end local v36           #syncable:Z
    .local v15, arr$:[Landroid/content/SyncAdapterType;
    .restart local v16       #auth:Landroid/accounts/AuthenticatorDescription;
    .restart local v18       #auths:[Landroid/accounts/AuthenticatorDescription;
    .restart local v28       #i$:I
    .restart local v35       #sync:Landroid/content/SyncAdapterType;
    .restart local v37       #syncs:[Landroid/content/SyncAdapterType;
    .restart local v39       #type:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v2, "com.google"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 502
    new-instance v10, Lcom/android/htccontacts/model/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    .local v10, accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_6
    :goto_3
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 550
    move-object/from16 v0, v16

    iget v2, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iput v2, v10, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    .line 551
    move-object/from16 v0, v16

    iget v2, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iput v2, v10, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    .line 554
    invoke-virtual/range {v35 .. v35}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v19

    .line 555
    .local v19, canUploading:Z
    if-nez v19, :cond_7

    .line 556
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    .line 560
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v4}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 561
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v10}, Lcom/android/htccontacts/model/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 503
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    .end local v19           #canUploading:Z
    :cond_8
    const-string v2, "com.android.exchange"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 504
    new-instance v10, Lcom/android/htccontacts/model/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    goto :goto_3

    .line 506
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_9
    const-string v2, "com.htc.android.mail.eas"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 507
    new-instance v10, Lcom/android/htccontacts/model/HtcExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    goto :goto_3

    .line 509
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_a
    const-string v2, "com.htc.sample.contacts.syncadapter"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 510
    new-instance v10, Lcom/android/htccontacts/model/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    goto/16 :goto_3

    .line 513
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_b
    const-string v2, "com.htc.android.myphonebook"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 514
    new-instance v10, Lcom/android/htccontacts/model/MyPhonebookAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/MyPhonebookAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    goto/16 :goto_3

    .line 516
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_c
    const-string v2, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 517
    new-instance v10, Lcom/android/htccontacts/model/FlickrAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/FlickrAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    goto/16 :goto_3

    .line 524
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_d
    const-string v2, "com.htc.android.pcsc"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    const-string v2, "vnd.tmobileus.contact.phone"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 529
    new-instance v10, Lcom/android/htccontacts/model/TMobileBackupAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v10, v2, v0}, Lcom/android/htccontacts/model/TMobileBackupAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    goto/16 :goto_3

    .line 532
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_e
    if-eqz v39, :cond_f

    const-string v2, "com.seven.Z7"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 534
    new-instance v10, Lcom/android/htccontacts/model/FallbackAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/android/htccontacts/model/FallbackAccountType;-><init>(Landroid/content/Context;)V

    .line 535
    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 536
    move-object/from16 v0, v39

    iput-object v0, v10, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_3

    .line 540
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_f
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Registering external account type="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", packageName="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v10, Lcom/android/htccontacts/model/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-direct {v10, v2, v0, v1}, Lcom/android/htccontacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 543
    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    move-object v0, v10

    check-cast v0, Lcom/android/htccontacts/model/ExternalAccountType;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/htccontacts/model/ExternalAccountType;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    .line 577
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    .end local v16           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v35           #sync:Landroid/content/SyncAdapterType;
    .end local v39           #type:Ljava/lang/String;
    :cond_10
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 578
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Registering "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " extension packages"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_11
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 580
    .local v26, extensionPackage:Ljava/lang/String;
    new-instance v10, Lcom/android/htccontacts/model/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    const/16 v40, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-direct {v10, v2, v0, v1}, Lcom/android/htccontacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 582
    .local v10, accountType:Lcom/android/htccontacts/model/ExternalAccountType;
    invoke-virtual {v10}, Lcom/android/htccontacts/model/ExternalAccountType;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 586
    invoke-virtual {v10}, Lcom/android/htccontacts/model/ExternalAccountType;->hasContactsMetadata()Z

    move-result v2

    if-nez v2, :cond_12

    .line 587
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Skipping extension package "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " because"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 591
    :cond_12
    iget-object v2, v10, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 592
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Skipping extension package "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " because"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " attribute"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 597
    :cond_13
    const-string v2, "com.htc.android.pcsc"

    iget-object v0, v10, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 602
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Registering extension package account type="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    iget-object v0, v10, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", dataSet="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    iget-object v0, v10, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", packageName="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v4}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 608
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 626
    .end local v10           #accountType:Lcom/android/htccontacts/model/ExternalAccountType;
    .end local v18           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v26           #extensionPackage:Ljava/lang/String;
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v37           #syncs:[Landroid/content/SyncAdapterType;
    .restart local v9       #account:Landroid/accounts/Account;
    .restart local v13       #accounts:[Landroid/accounts/Account;
    .local v15, arr$:[Landroid/accounts/Account;
    .restart local v29       #i$:I
    .restart local v36       #syncable:Z
    :cond_14
    :try_start_3
    sget-object v2, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->SupportContactAuthority:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v29           #i$:I
    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 627
    .local v17, authority:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v9, v1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    if-lez v2, :cond_19

    const/16 v36, 0x1

    .line 628
    :goto_5
    if-eqz v36, :cond_15

    .line 641
    .end local v17           #authority:Ljava/lang/String;
    .end local v28           #i$:Ljava/util/Iterator;
    :cond_16
    :goto_6
    if-eqz v36, :cond_4

    .line 642
    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 643
    .local v11, accountTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    if-eqz v11, :cond_4

    .line 646
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_17
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountType;

    .line 647
    .local v10, accountType:Lcom/android/htccontacts/model/AccountType;
    new-instance v12, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v40, v0

    iget-object v0, v10, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v12, v2, v0, v1}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .local v12, accountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {v10}, Lcom/android/htccontacts/model/AccountType;->areContactsWritable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 651
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_18
    invoke-virtual {v10}, Lcom/android/htccontacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 654
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 627
    .end local v10           #accountType:Lcom/android/htccontacts/model/AccountType;
    .end local v11           #accountTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType;>;"
    .end local v12           #accountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    .restart local v17       #authority:Ljava/lang/String;
    :cond_19
    const/16 v36, 0x0

    goto :goto_5

    .line 637
    .end local v17           #authority:Ljava/lang/String;
    .end local v28           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v21

    .line 638
    .restart local v21       #e:Landroid/os/RemoteException;
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 663
    .end local v9           #account:Landroid/accounts/Account;
    .end local v21           #e:Landroid/os/RemoteException;
    .end local v36           #syncable:Z
    .restart local v29       #i$:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mSIMAccountManager:Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;

    invoke-virtual/range {v2 .. v8}, Lcom/android/htccontacts/model/AccountTypeManagerImpl$SIMAccountManager;->ensure(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mPCAccount:Lcom/android/htccontacts/model/PCAccount;

    invoke-virtual {v2}, Lcom/android/htccontacts/model/PCAccount;->getPCAccountWithDataSet()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v12

    .line 674
    .restart local v12       #accountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mPCAccount:Lcom/android/htccontacts/model/PCAccount;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/model/PCAccount;->getOutlookAccountType(Landroid/content/Context;)Lcom/android/htccontacts/model/OutlookAccountType;

    move-result-object v10

    .line 675
    .restart local v10       #accountType:Lcom/android/htccontacts/model/AccountType;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v4}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/htccontacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 676
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-virtual {v10}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->areContactsWritable()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 678
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_1b
    invoke-virtual {v10}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->isGroupMembershipEditable()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 681
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1c
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v2, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 698
    sget-object v2, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 699
    sget-object v2, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 701
    const-string v2, "Loaded accounts"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 703
    monitor-enter p0

    .line 704
    :try_start_4
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 705
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 706
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 707
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 711
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypeSources:Ljava/util/List;

    .line 713
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 715
    invoke-virtual/range {v38 .. v38}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 717
    .local v24, endTimeWall:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    .line 719
    .local v22, endTime:J
    const-string v2, "AccountTypeManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Loaded meta-data for "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " account types, "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " accounts in "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sub-long v41, v24, v33

    invoke-virtual/range {v40 .. v42}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "ms(wall) "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sub-long v41, v22, v31

    invoke-virtual/range {v40 .. v42}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "ms(cpu)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_1d

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 727
    :cond_1d
    const-string v2, "ContactsPerf"

    const/16 v40, 0x3

    move/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 728
    const-string v2, "ContactsPerf"

    const-string v40, "AccountTypeManager.loadAccountsInBackground finish"

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1e
    return-void

    .line 713
    .end local v22           #endTime:J
    .end local v24           #endTimeWall:J
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 423
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 417
    return-void
.end method
